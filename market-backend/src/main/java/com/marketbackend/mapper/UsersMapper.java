package com.marketbackend.mapper;

import com.marketbackend.pojo.Users;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/**
 * @description 针对表【users】的数据库操作Mapper
 */
@Mapper
public interface UsersMapper extends BaseMapper<Users> {
    // 添加
    @Insert("insert into users(username, password, role) values(#{username}, #{password}, 'staff')")
    void add(String username, String md5String);

    @Select("select * from users where username=#{username}")
    Users findByUserName(String username);
}
