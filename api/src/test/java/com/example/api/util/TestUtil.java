package com.example.api.util;

import com.example.api.model.entity.Admin;
import org.springframework.test.web.servlet.MockMvc;
import com.example.api.utils.JwtTokenUtil;

public class TestUtil {
    
    public static Admin createTestAdmin() {
        Admin admin = new Admin();
        admin.setEmail("test" + System.currentTimeMillis() + "@test.com");
        admin.setPassword("123456");
        admin.setRoles("ROLE_ADMIN");
        return admin;
    }
    
    public static String getTestToken(MockMvc mockMvc) throws Exception {
        // 获取测试token的通用方法
        return " ";
    }
} 