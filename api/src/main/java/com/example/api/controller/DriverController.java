package com.example.api.controller;

import com.example.api.annotation.Log;
import com.example.api.model.entity.Driver;
import com.example.api.model.enums.BusincessType;
import com.example.api.repository.DriverRepository;
import com.example.api.service.DriverService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/driver")
public class DriverController {

    @Resource
    private DriverService driverService;
    @Resource
    private DriverRepository driverRepository;

    @Log(moudle = "驾驶员管理", type = BusincessType.INSERT)
    @PostMapping("")
    public Driver save(@RequestBody @Valid Driver driver) throws Exception {
        boolean exit = driverRepository.existsDriverByIdCardOrLicense(driver.getIdCard(), driver.getLicense());
        if (exit) throw new Exception("系统已有身份证或驾驶证 请重输入");
        return driverService.save(driver);
    }

    @Log(moudle = "驾驶员管理", type = BusincessType.QUERY)
    @GetMapping("")
    public List<Driver> findAll() {
        return driverService.findAll();
    }

    @Log(moudle = "驾驶员管理", type = BusincessType.QUERY)
    @GetMapping("/{id}")
    public Driver findById(@PathVariable String id) {
        return driverService.findById(id);
    }

    @Log(moudle = "驾驶员管理", type = BusincessType.DELETE)
    @DeleteMapping("")
    public void delete(String id) {
        driverService.delete(id);
    }

}
