package com.marketbackend.mapper;

import com.marketbackend.pojo.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * @description 针对表【users】的数据库操作Mapper
 */
@Mapper
public interface UsersMapper extends BaseMapper<User> {
    // 添加
    @Insert("insert into user(username, password, role) values(#{username}, #{password}, 'staff')")
    void add(@Param("username") String username, @Param("md5String") String md5String);

    @Select("select * from user where username=#{username}")
    User findByUserName(@Param("username") String username);
}
