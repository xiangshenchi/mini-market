package com.example.api.controller;

import com.example.api.BaseAuthenticatedTest;
import com.example.api.model.entity.Warehouse;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class WarehouseControllerTest extends BaseAuthenticatedTest {
    
    @Test
    @DisplayName("测试添加仓库")
    void testAddWarehouse() throws Exception {
        Warehouse warehouse = new Warehouse();
        warehouse.setName("测试仓库");
        warehouse.setPrinciple("测试负责人");
        
        performPostWithToken("/api/warehouse", warehouse)
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value(true))
                .andExpect(jsonPath("$.data.name").value("测试仓库"));
    }
    
    @Test
    @DisplayName("测试查询仓库列表")
    void testGetWarehouseList() throws Exception {
        performGetWithToken("/api/warehouse")
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value(true));
    }
} 