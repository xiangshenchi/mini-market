package com.example.api.controller;

import com.example.api.BaseAuthenticatedTest;
import com.example.api.model.entity.Employee;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
public class EmployeeControllerTest extends BaseAuthenticatedTest {
    
    @Test
    @DisplayName("测试添加员工")
    void testAddEmployee() throws Exception {
        Employee employee = new Employee();
        employee.setName("测试员工");
        employee.setGender("男");
        employee.setPhone("13800138000");
        employee.setAddress("测试地址");
        employee.setIdCard("110101199001011234");
        employee.setDepartment("测试部门");
        
        performPostWithToken("/api/employee", employee)
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value(true))
                .andExpect(jsonPath("$.data.name").value("测试员工"));
    }
    
    @Test
    @DisplayName("测试查询员工列表")
    void testGetEmployeeList() throws Exception {
        performGetWithToken("/api/employee")
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value(true));
    }
} 