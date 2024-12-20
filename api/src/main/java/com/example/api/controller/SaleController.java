package com.example.api.controller;

import com.example.api.model.entity.Sale;
import com.example.api.service.SaleService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/sale")
@PreAuthorize("hasAnyRole('ROLE_SUPER_ADMIN' ,'ROLE_SALE')")
public class SaleController {
    @Resource
    private SaleService saleService;

    @PostMapping("")
    public Sale save(@RequestBody @Valid Sale sale) {
        return saleService.save(sale);
    }

    @GetMapping("")
    public List<Sale> findAll() {
        return saleService.findAll();
    }

    @GetMapping("/search/{name}")
    public List<Sale> search(@PathVariable String name) throws Exception{
        if (name == null || name.trim().isEmpty()) throw new Exception("输入无效");
        return saleService.searchByCompany("%" + name + "%");
    }

}
