package com.example.api.controller;

import com.example.api.BaseAuthenticatedTest;
import com.example.api.model.entity.Commodity;
import com.example.api.model.entity.InventoryRecord;
import com.example.api.model.entity.Warehouse;
import com.jayway.jsonpath.JsonPath;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.test.web.servlet.MvcResult;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;


public class InventoryControllerTest extends BaseAuthenticatedTest {
    
    private String warehouseId;
    private String commodityId;
    
    @BeforeEach
    void initTestData() throws Exception {
        // 创建测试仓库
        Warehouse warehouse = new Warehouse();
        warehouse.setName("测试仓库");
        warehouse.setPrinciple("测试负责人");
        MvcResult warehouseResult = performPostWithToken("/api/warehouse", warehouse).andReturn();
        warehouseId = JsonPath.read(warehouseResult.getResponse().getContentAsString(), "$.data.id");
        
        // 创建测试商品
        Commodity commodity = new Commodity();
        commodity.setName("测试商品");
        commodity.setPrice(99.9);
        MvcResult commodityResult = performPostWithToken("/api/commodity", commodity).andReturn();
        commodityId = JsonPath.read(commodityResult.getResponse().getContentAsString(), "$.data.id");
    }
    
    @Test
    @DisplayName("测试商品入库")
    void testInventoryIn() throws Exception {
        InventoryRecord record = new InventoryRecord();
        record.setWid(warehouseId);
        record.setCid(commodityId);
        record.setName("测试商品");
        record.setCount(100);
        
        performPostWithToken("/api/inventory/in", record)
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value(true));
    }
    
    @Test
    @DisplayName("测试查询库存")
    void testQueryInventory() throws Exception {
        performGetWithToken("/api/inventory/warehouse/" + warehouseId)
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value(true));
    }
} 