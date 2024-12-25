package com.example.api;

import com.example.api.model.dto.LoginDto;
import com.example.api.model.entity.Admin;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;
import com.fasterxml.jackson.databind.ObjectMapper;

import static java.lang.Thread.sleep;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;


import com.example.api.service.AdminService;

import java.util.Map;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
public abstract class BaseAuthenticatedTest {

    @Autowired
    protected MockMvc mockMvc;
    
    @Autowired
    protected AdminService adminService;
    
    @Autowired 
    protected ObjectMapper objectMapper;
    
    protected String authToken;
    protected Admin testAdmin;

    @BeforeEach
    void setUp() throws Exception {
        // 创建测试管理员账号
        testAdmin = new Admin();
        testAdmin.setEmail("test_admin@test.com");
        testAdmin.setPassword("123456");
        testAdmin.setRoles("ROLE_SUPER_ADMIN"); // 使用超级管理员权限便于测试
        adminService.save(testAdmin);

        // 登录获取token
        LoginDto loginDto = new LoginDto();
        loginDto.setEmail(testAdmin.getEmail());
        loginDto.setPassword(testAdmin.getPassword());
        loginDto.setCode("123456");
        loginDto.setRemember(true);
        System.out.println("登录前");
        MvcResult result = mockMvc.perform(post("/api/admin/login")
                .param("type", "password")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(loginDto)))
                .andReturn();
        String content = result.getResponse().getContentAsString();
        System.out.println("登录后");
        Map<String, Object> responseMap = objectMapper.readValue(content, Map.class);
        System.out.println(responseMap);
        Map<String, Object> data = (Map<String, Object>) responseMap.get("data");
        authToken = (String) data.get("token");
    }
    
    @AfterEach
    void tearDown() {
        // 清理测试数据
        if (testAdmin != null && testAdmin.getId() != null) {
            adminService.delete(testAdmin.getId());
        }
    }
    
    // 封装带Token的请求方法
    protected ResultActions performGetWithToken(String url) throws Exception {
        return mockMvc.perform(get(url)
                .header("Authorization", "Bearer " + authToken));
    }
    
    protected ResultActions performPostWithToken(String url, Object body) throws Exception {
        return mockMvc.perform(post(url)
                .header("Authorization", "Bearer " + authToken)
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(body)));
    }
    
    protected ResultActions performPutWithToken(String url, Object body) throws Exception {
        return mockMvc.perform(put(url)
                .header("Authorization", "Bearer " + authToken)
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(body)));
    }
    
    protected ResultActions performDeleteWithToken(String url) throws Exception {
        return mockMvc.perform(delete(url)
                .header("Authorization", "Bearer " + authToken));
    }
} 