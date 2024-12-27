package com.example.api.service.impl;

import com.example.api.model.entity.Driver;
import com.example.api.repository.DriverRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

public class DriverServiceImplTest {

    @InjectMocks // 自动注入 DriverServiceImpl 实例
    private DriverServiceImpl driverService;

    @Mock // 模拟 DriverRepository
    private DriverRepository driverRepository;

    @BeforeEach // 在每个测试之前执行
    public void setUp() {
        MockitoAnnotations.openMocks(this); // 初始化 Mockito 注解
    }

    @Test
    public void testSave() {
        Driver driver = new Driver();
        driver.setId("1");
        driver.setName("John Doe");


        // Mock driverRepository.save 方法
        when(driverRepository.save(any(Driver.class))).thenReturn(driver);

        // 调用 save 方法
        Driver savedDriver = driverService.save(driver);

        // 验证返回的 Driver 对象是否与原始对象相同
        assertNotNull(savedDriver);
        assertEquals(driver.getId(), savedDriver.getId());
        verify(driverRepository, times(1)).save(driver); // 验证 save 方法调用

    }

    @Test
    public void testUpdate() {
        Driver driver = new Driver();
        driver.setId("1");
        driver.setName("John Doe");

        // Mock driverRepository.save 方法
        when(driverRepository.save(any(Driver.class))).thenReturn(driver);
        // 调用 update 方法
        driverService.update(driver);
        verify(driverRepository, times(1)).save(driver); // 验证 save 方法调用
    }

    @Test
    public void testDelete() {
        String driverId = "1";
        doNothing().when(driverRepository).deleteById(driverId); // 模拟 deleteById 方法

        // 调用 delete 方法
        driverService.delete(driverId);

        // 验证 deleteById 方法被调用
        verify(driverRepository, times(1)).deleteById(driverId);
    }

    @Test
    public void testFindById() {
        String driverId = "1";
        Driver driver = new Driver();
        driver.setId(driverId);
        driver.setName("John Doe");

        // Mock driverRepository.findById 方法
        when(driverRepository.findById(driverId)).thenReturn(Optional.of(driver));

        // 调用 findById 方法
        Driver foundDriver = driverService.findById(driverId);

        // 验证返回的 Driver 对象是否与原始对象相同
        assertNotNull(foundDriver);
        assertEquals(driverId, foundDriver.getId());
        verify(driverRepository, times(1)).findById(driverId); // 验证 findById 方法调用
    }

    @Test
    public void testFindAll() {
        Driver driver1 = new Driver();
        driver1.setId("1");
        driver1.setName("John Doe");

        Driver driver2 = new Driver();
        driver2.setId("2");
        driver2.setName("Jane Doe");

        // Mock driverRepository.findAll 方法
        when(driverRepository.findAll()).thenReturn(Arrays.asList(driver1, driver2));

        // 调用 findAll 方法
        List<Driver> drivers = driverService.findAll();

        // 验证返回的 Driver 列表
        assertNotNull(drivers);
        assertEquals(2, drivers.size());
        assertEquals(driver1.getId(), drivers.get(0).getId());
        assertEquals(driver2.getId(), drivers.get(1).getId());
        verify(driverRepository, times(1)).findAll(); // 验证 findAll 方法调用
    }
}
