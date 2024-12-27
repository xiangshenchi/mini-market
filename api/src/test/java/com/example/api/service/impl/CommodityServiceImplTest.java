package com.example.api.service.impl;

import com.example.api.model.entity.Commodity;
import com.example.api.repository.CommodityRepository;
import com.example.api.utils.DataTimeUtil;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

public class CommodityServiceImplTest {

    @InjectMocks
    private CommodityServiceImpl commodityService;

    @Mock
    private CommodityRepository commodityRepository;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testSave_WithNegativePrice() {
        Commodity commodity = new Commodity();
        commodity.setPrice(-10.0); // 设置负价格

        Exception exception = assertThrows(IllegalArgumentException.class, () -> commodityService.save(commodity));

        assertEquals("价格必须为正数", exception.getMessage());
    }

    @Test
    public void testSave_WithZeroPrice() {
        Commodity commodity = new Commodity();
        commodity.setPrice(0.0); // 设置零价格

        Exception exception = assertThrows(IllegalArgumentException.class, () -> commodityService.save(commodity));

        assertEquals("价格必须为正数", exception.getMessage());
    }

    @Test
    public void testSave_WithPositivePrice() {
        Commodity commodity = new Commodity();
        commodity.setPrice(10.0); // 设置正价格
        commodity.setCreateAt(DataTimeUtil.getNowTimeString());

        when(commodityRepository.save(any(Commodity.class))).thenReturn(commodity);

        Commodity savedCommodity = commodityService.save(commodity);

        assertNotNull(savedCommodity);
        assertEquals(10.0, savedCommodity.getPrice());
        verify(commodityRepository, times(1)).save(any(Commodity.class));
    }

    @Test
    public void testUpdate() {
        Commodity commodity = new Commodity();
        commodity.setId("1");
        commodity.setPrice(10.0);
        commodity.setUpdateAt(DataTimeUtil.getNowTimeString());

        when(commodityRepository.save(any(Commodity.class))).thenReturn(commodity);

        commodityService.update(commodity);

        verify(commodityRepository, times(1)).save(any(Commodity.class));
    }

    @Test
    public void testDelete() {
        String commodityId = "1";

        doNothing().when(commodityRepository).deleteById(commodityId);

        commodityService.delete(commodityId);

        verify(commodityRepository, times(1)).deleteById(commodityId);
    }

    @Test
    public void testFindById() {
        String commodityId = "1";
        Commodity commodity = new Commodity();
        commodity.setId(commodityId);
        commodity.setPrice(10.0);

        when(commodityRepository.findById(commodityId)).thenReturn(Optional.of(commodity));

        Commodity foundCommodity = commodityService.findById(commodityId);

        assertNotNull(foundCommodity);
        assertEquals(commodityId, foundCommodity.getId());
    }

    @Test
    public void testFindAll() {
        Commodity commodity1 = new Commodity();
        commodity1.setId("1");
        commodity1.setPrice(10.0);

        Commodity commodity2 = new Commodity();
        commodity2.setId("2");
        commodity2.setPrice(20.0);

        List<Commodity> commodities = Arrays.asList(commodity1, commodity2);
        when(commodityRepository.findAll()).thenReturn(commodities);

        List<Commodity> foundCommodities = commodityService.findAll();

        assertEquals(2, foundCommodities.size());
        assertEquals(commodity1.getId(), foundCommodities.get(0).getId());
        assertEquals(commodity2.getId(), foundCommodities.get(1).getId());
    }

    @Test
    public void testFindAllByLikeName() {
        String name = "Test";
        Commodity commodity1 = new Commodity();
        commodity1.setName("Test Commodity 1");

        Commodity commodity2 = new Commodity();
        commodity2.setName("Test Commodity 2");

        List<Commodity> commodities = Arrays.asList(commodity1, commodity2);
        when(commodityRepository.findByNameLike("%" + name + "%")).thenReturn(commodities);

        List<Commodity> foundCommodities = commodityService.findAllByLikeName(name);

        assertEquals(2, foundCommodities.size());
        assertEquals("Test Commodity 1", foundCommodities.get(0).getName());
        assertEquals("Test Commodity 2", foundCommodities.get(1).getName());
    }
}
