package com.example.api.service;

import com.example.api.model.entity.SystemLog;
import com.example.api.model.vo.SystemLogVo;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import java.time.LocalDateTime;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
@ActiveProfiles("test")
public class SystemLogServiceTest {

    @Autowired
    private SystemLogService systemLogService;
    
    @Test
    @DisplayName("测试记录系统日志")
    void testRecordSystemLog() {
        SystemLog log = new SystemLog();
        log.setAccount("test@test.com");
        log.setModule("商品管理");
        log.setBusincessType("查询");
        log.setIp("127.0.0.1");
        log.setMethod("com.example.api.controller.CommodityController.findAll");
        log.setTime(LocalDateTime.now());
        
        systemLogService.record(log);
        
        List<SystemLog> logs = systemLogService.getAll();
        assertFalse(logs.isEmpty());
    }
    
    @Test
    @DisplayName("测试日志查询")
    void testQuerySystemLog() {
        SystemLogVo query = new SystemLogVo();
        query.setMoudle("商品管理");
        query.setAccount("test@test.com");
        List<SystemLog> logs = systemLogService.query(query);
        assertNotNull(logs);
    }
} 