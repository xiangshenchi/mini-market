package com.marketbackend.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.marketbackend.pojo.Users;
import com.marketbackend.service.UsersService;
import com.marketbackend.mapper.UsersMapper;
import com.marketbackend.util.Md5Util;
import org.springframework.stereotype.Service;

/**
* @author 86187
* @description 针对表【users】的数据库操作Service实现
* @createDate 2024-10-28 10:08:35
*/
@Service
public class UsersServiceImpl extends ServiceImpl<UsersMapper, Users>
    implements UsersService{

    @Override
    public Users findByUserName(String username) {
        return UsersMapper.findByUserName(username);

    }

    @Override
    public void register(String username, String password) {
        //加密
        String md5String = Md5Util.getMD5String(password);
        //添加
        UsersMapper.add(username,md5String);
    }
}




