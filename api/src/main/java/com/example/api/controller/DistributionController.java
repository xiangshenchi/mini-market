package com.example.api.controller;

import com.example.api.annotation.Log;
import com.example.api.model.entity.Distribution;
import com.example.api.model.enums.BusincessType;
import com.example.api.repository.DriverRepository;
import com.example.api.repository.SaleRepository;
import com.example.api.repository.VehicleRepository;
import com.example.api.service.DistributionService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/distribution")
public class DistributionController {

    @Resource
    private DistributionService distributionService;

    @Resource
    private DriverRepository driverRepository;

    @Resource
    private VehicleRepository vehicleRepository;
    @Resource
    private SaleRepository saleRepository;

    @Log(moudle = "配送管理", type = BusincessType.INSERT)
    @PostMapping("")
    public Distribution save(@RequestBody @Valid Distribution distribution) throws Exception {
        return distributionService.save(distribution);
    }

    @Log(moudle = "配送管理", type = BusincessType.QUERY)
    @GetMapping("")
    public List<Distribution> findAll() {
        return distributionService.findAll();
    }

    @GetMapping("can")
    public Map<String, Object> can() {
        Map<String, Object> map = new HashMap<>();
        map.put("drivers", driverRepository.findAll());
        map.put("vehicles", vehicleRepository.findAll());
        map.put("sales", saleRepository.findAll());
        return map;
    }

}
