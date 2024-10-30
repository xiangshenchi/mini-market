package com.marketbackend.service;

import com.marketbackend.pojo.Users;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author 86187
* @description 针对表【users】的数据库操作Service
* @createDate 2024-10-28 10:08:35
*/
public interface UsersService extends IService<Users> {

    Users findByUserName(String username);

    void register(String username, String password);
}
