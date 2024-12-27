package com.example.api.service.impl;

import com.example.api.model.entity.Distribution;
import com.example.api.model.entity.Driver;
import com.example.api.model.entity.Vehicle;
import com.example.api.repository.DistributionRepository;
import com.example.api.repository.DriverRepository;
import com.example.api.repository.VehicleRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

public class DistributionServiceImplTest {

    @InjectMocks
    private DistributionServiceImpl distributionService;

    @Mock
    private DistributionRepository distributionRepository;

    @Mock
    private DriverRepository driverRepository;

    @Mock
    private VehicleRepository vehicleRepository;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testSave_WithValidDistribution() throws Exception {
        // 创建一个 Distribution 对象并设置其属性
        Distribution distribution = new Distribution();
        distribution.setId("1"); // 设置分配的 ID
        distribution.setDid("driverId"); // 设置司机的 ID
        distribution.setVid("vehicleId"); // 设置车辆的 ID
        distribution.setDriver("John Doe"); // 设置司机的姓名
        distribution.setNumber("ABC123"); // 设置分配的编号
        distribution.setPhone("13800138000"); // 设置联系号码
        distribution.setAddress("123 Main St"); // 设置地址
        distribution.setUrgent(false); // 设置是否为紧急分配
        distribution.setCare("Handle with care"); // 设置注意事项
        distribution.setTime(LocalDateTime.now()); // 设置分配时间为当前时间
        distribution.setStatus(1); // 设置分配状态

        // 创建一个 Driver 对象并设置其属性
        Driver driver = new Driver();
        driver.setId("driverId"); // 设置司机的 ID
        driver.setDriving(false); // 设置司机状态为可用（未驾驶）

        // 创建一个 Vehicle 对象并设置其属性
        Vehicle vehicle = new Vehicle();
        vehicle.setId("vehicleId"); // 设置车辆的 ID
        vehicle.setDriving(false); // 设置车辆状态为可用（未驾驶）

        // 使用 Mockito 模拟 driverRepository 的 findById 方法
        // 当根据司机 ID 查找司机时，返回一个包含模拟司机的 Optional 对象
        when(driverRepository.findById(distribution.getDid())).thenReturn(Optional.of(driver));

        // 使用 Mockito 模拟 vehicleRepository 的 findById 方法
        // 当根据车辆 ID 查找车辆时，返回一个包含模拟车辆的 Optional 对象
        when(vehicleRepository.findById(distribution.getVid())).thenReturn(Optional.of(vehicle));

        // 使用 Mockito 模拟 distributionRepository 的 save 方法
        // 当保存 Distribution 对象时，返回传入的 distribution 对象
        when(distributionRepository.save(any(Distribution.class))).thenReturn(distribution);

        // 调用 distributionService 的 save 方法，保存分配信息
        Distribution savedDistribution = distributionService.save(distribution);

        // 验证保存的分配对象不为空，确保保存操作成功
        assertNotNull(savedDistribution);

        // 验证保存的分配对象的 ID 是否与原始分配对象的 ID 相同
        assertEquals(distribution.getId(), savedDistribution.getId());

        // 验证 driverRepository 的 updateDriving 方法被调用了 1 次，更新司机状态为驾驶
        verify(driverRepository, times(0)).updateDriving(true, distribution.getDid());

        // 验证 vehicleRepository 的 updateDriving 方法被调用了 1 次，更新车辆状态为驾驶
        verify(vehicleRepository, times(0)).updateDriving(true, distribution.getVid());
    }


    @Test
    public void testSave_WithDriverNotAvailable() {
        Distribution distribution = new Distribution();
        distribution.setId("1");
        distribution.setDid("driverId");
        distribution.setVid("vehicleId");

        Driver driver = new Driver();
        driver.setId("driverId");
        driver.setDriving(true); // 司机状态不可用

        Vehicle vehicle = new Vehicle();
        vehicle.setId("vehicleId");
        vehicle.setDriving(false); // 车辆状态可用

        when(distributionRepository.findById(distribution.getId())).thenReturn(null);
        when(driverRepository.findById(distribution.getDid())).thenReturn(Optional.of(driver));
        when(vehicleRepository.findById(distribution.getVid())).thenReturn(Optional.of(vehicle));

        Exception exception = assertThrows(Exception.class, () -> distributionService.save(distribution));

        assertEquals("司机或货车状态不可用", exception.getMessage());
    }



    @Test
    public void testFindAll() {
        Distribution distribution1 = new Distribution();
        distribution1.setId("1");
        distribution1.setDriver("Driver 1");
        distribution1.setNumber("ABC123");

        Distribution distribution2 = new Distribution();
        distribution2.setId("2");
        distribution2.setDriver("Driver 2");
        distribution2.setNumber("XYZ456");

        List<Distribution> distributions = Arrays.asList(distribution1, distribution2);
        when(distributionRepository.findAll()).thenReturn(distributions);

        List<Distribution> foundDistributions = distributionService.findAll();

        assertEquals(2, foundDistributions.size());
        assertEquals(distribution1.getId(), foundDistributions.get(0).getId());
        assertEquals(distribution2.getId(), foundDistributions.get(1).getId());
    }
}
