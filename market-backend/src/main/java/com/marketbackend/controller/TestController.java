package com.marketbackend.controller;

import com.marketbackend.pojo.User;
import com.marketbackend.service.UsersService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("test")
class TestController {

    @Resource
    private UsersService usersService;
    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }
    //返回所有数据
    @GetMapping("/list")
    public List<User> list() {
        return usersService.list();
    }
}
