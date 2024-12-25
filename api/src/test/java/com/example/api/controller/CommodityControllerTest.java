package com.example.api.controller;

import com.example.api.BaseAuthenticatedTest;
import com.example.api.model.entity.Commodity;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class CommodityControllerTest extends BaseAuthenticatedTest {
    
    @Test
    @DisplayName("测试添加商品")
    void testAddCommodity() throws Exception {
        System.out.println("测试添加商品执行中");
        Commodity commodity = new Commodity();
        commodity.setName("测试商品");
        commodity.setPrice(99.9);
        commodity.setDescription("测试商品描述");
        
        performPostWithToken("/api/commodity", commodity)
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value(true))
                .andExpect(jsonPath("$.data.name").value("测试商品"));
    }
    
    @Test
    @DisplayName("测试查询商品列表")
    void testGetCommodityList() throws Exception {
        performGetWithToken("/api/commodity")
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value(true));
    }
    
    @Test
    @DisplayName("测试搜索商品")
    void testSearchCommodity() throws Exception {
        performGetWithToken("/api/commodity/search/测试")
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value(true));
    }
} 