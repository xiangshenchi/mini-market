package com.marketbackend.service;

import com.marketbackend.pojo.User;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * @description 针对表【users】的数据库操作Service
 */
public interface UsersService extends IService<User> {

    User findByUserName(String username);

    void register(String username, String password);
}
