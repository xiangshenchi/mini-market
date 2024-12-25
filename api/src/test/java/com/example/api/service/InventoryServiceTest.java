package com.example.api.service;

import com.example.api.model.entity.Inventory;
import com.example.api.model.entity.InventoryRecord;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.MethodOrderer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;

@SpringBootTest
@ActiveProfiles("test")
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class InventoryServiceTest {

    @Autowired
    private InventoryService inventoryService;
    
    @Autowired
    private InventoryRecordService recordService;
    
    private Inventory testInventory;
    
    @BeforeEach
    void setUp() {
        testInventory = new Inventory();
        testInventory.setWid("warehouse-001");
        testInventory.setCid("commodity-001");
        testInventory.setName("测试商品");
        testInventory.setLocation("A区-01-01");
        testInventory.setCount(100);
    }
    
    @Test
    @Order(1)
    @DisplayName("测试入库")
    void testInventoryIn() throws Exception {
        InventoryRecord record = new InventoryRecord();
        record.setWid(testInventory.getWid());
        record.setCid(testInventory.getCid());
        record.setName(testInventory.getName());
        record.setCount(50);
        record.setType(1);
        
        InventoryRecord saved = recordService.in(record);
        assertNotNull(saved.getId());
        assertEquals(50, saved.getCount());
    }
    
    @Test
    @Order(2)
    @DisplayName("测试出库-库存不足")
    void testInventoryOutWithInsufficientStock() {
        InventoryRecord record = new InventoryRecord();
        record.setWid(testInventory.getWid());
        record.setCid(testInventory.getCid());
        record.setCount(200);
        record.setType(-1);
        
        Exception exception = assertThrows(Exception.class, () -> {
            recordService.out(record);
        });
        assertEquals("出库失败，库存数量不足", exception.getMessage());
    }
} 