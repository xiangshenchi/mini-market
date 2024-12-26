package com.example.api.service;

import com.example.api.model.entity.Commodity;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import javax.validation.ConstraintViolationException;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@ActiveProfiles("test")
public class CommodityServiceTest {
    
    @Autowired
    private CommodityService commodityService;
    
    private Commodity testCommodity;
    
    @BeforeEach
    void setUp() {
        testCommodity = new Commodity();
        testCommodity.setName("测试商品");
        testCommodity.setPrice(99.9);
        testCommodity.setDescription("测试商品描述");
        testCommodity.setCount(100);
    }
    
    @Test
    @DisplayName("测试添加商品-正常场景")
    void testSaveCommodity() {
        Commodity saved = commodityService.save(testCommodity);
        assertNotNull(saved.getId());
        assertEquals("测试商品", saved.getName());
        assertNotNull(saved.getCreateAt());
    }

    @Test
    public void testSave_WithNegativePrice() {
        Commodity commodity = new Commodity();
        commodity.setPrice(-10.0); // 设置负价格

        Exception exception = assertThrows(IllegalArgumentException.class, () -> {
            commodityService.save(commodity);
        });

        assertEquals("价格必须为正数", exception.getMessage());
    }
    @Test
    public void testSave_WithZeroPrice() {
        Commodity commodity = new Commodity();
        commodity.setPrice(0.0); // 设置零价格

        Exception exception = assertThrows(IllegalArgumentException.class, () -> {
            commodityService.save(commodity);
        });

        assertEquals("价格必须为正数", exception.getMessage());
    }


    
    @Test
    @DisplayName("测试商品查询")
    void testFindByName() {
        commodityService.save(testCommodity);
        List<Commodity> found = commodityService.findAllByLikeName("测试");
        assertFalse(found.isEmpty());
        assertTrue(found.stream().anyMatch(c -> c.getName().equals("测试商品")));
    }
} 