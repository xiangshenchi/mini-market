package com.example.api.controller;

import com.example.api.model.dto.LoginDto;
import com.example.api.model.entity.Admin;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;

import com.example.api.service.AdminService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.jayway.jsonpath.JsonPath;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
public class AuthenticationTest {

    @Autowired
    private MockMvc mockMvc;
    
    @Autowired
    private AdminService adminService;
    
    private String token;
    
    @BeforeEach
    void setUp() throws Exception {
        // 创建测试管理员账户
        Admin admin = new Admin();
        admin.setEmail("admin@test.com");
        admin.setPassword("123456");
        admin.setRoles("ROLE_SUPER_ADMIN");
        adminService.save(admin);
        
        // 获取token
        LoginDto dto = new LoginDto();
        dto.setEmail("admin@test.com");
        dto.setPassword("123456");
        
        MvcResult result = mockMvc.perform(post("/api/admin/login")
                .param("type", "password")
                .contentType(MediaType.APPLICATION_JSON)
                .content(new ObjectMapper().writeValueAsString(dto)))
                .andReturn();
                
        token = JsonPath.read(result.getResponse().getContentAsString(), "$.data.token");
    }
    
    @Test
    @DisplayName("测试未授权访问")
    void testUnauthorizedAccess() throws Exception {
        mockMvc.perform(get("/api/employee"))
                .andExpect(status().isForbidden());
    }
    
    @Test
    @DisplayName("测试授权访问")
    void testAuthorizedAccess() throws Exception {
        mockMvc.perform(get("/api/employee")
                .header("Authorization", "Bearer " + token))
                .andExpect(status().isOk());
    }
} 