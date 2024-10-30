package com.marketbackend.controller;

import com.marketbackend.pojo.Result;
import com.marketbackend.pojo.User;
import com.marketbackend.service.UsersService;
import com.marketbackend.util.JwtUtil;
import com.marketbackend.util.Md5Util;
import com.marketbackend.util.ThreadLocalUtil;
import jakarta.validation.constraints.Pattern;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * 1.@RestController是@ResponseBody和@Controller的组合注解。
 * 注解用于注入controller层 Bean对象
 * 2.@RequestMapping 配置url映射
 */
@RestController
@RequestMapping("/user")
@Validated
@CrossOrigin
class UsersController {
    @Autowired
    private UsersService userService;

    //注册

    @PostMapping("/register")
    public Result register(@Pattern(regexp = "^\\S{5,16}$") String username,
                           @Pattern(regexp = "^\\S{5,16}$") String password) {
        //查询用户
        User u = userService.findByUserName(username);
        if (u == null) {
            //没用占用
            //注册
            userService.register(username, password);
            return Result.success();
        } else {
            //占用
            return Result.error("用户名已被注册");
        }
    }

    //登录
    @PostMapping("/login")
    public Result<String> login(@Pattern(regexp = "^\\S{5,16}$") String username,
                                @Pattern(regexp = "^\\S{5,16}$") String password) {
        //根据用户名查询用户
        User loginUser = userService.findByUserName(username);
        //判断用户是否存在
        if (loginUser == null) return Result.error("用户名错误");
        //判断密码是否正确，loginUser的password是密文
        if (Md5Util.getMD5String(password).equals(loginUser.getPassword())) {
            //登陆成功
            //对登陆数据添加到claims，生成jwt令牌,
            //将登陆的id，username封装添加到载荷，生成 token
            Map<String, Object> claims = new HashMap<>();
            claims.put("id", loginUser.getUserId());
            claims.put("username", loginUser.getUsername());
            String token = JwtUtil.genToken(claims);
            return Result.success(token);
        }
        //密码错误
        return Result.error("密码错误");
    }

    //查询用户所有信息
    /*
     * @RequestHeader(name="Authorization")根据头部信息获取token令牌,
     *
     * */
    @GetMapping("/userInfo")
    public Result<User> userInfo(/*@RequestHeader(name="Authorization")String token*/) {
       /* //根据用户名查询用户信息
        Map<String, Object> map = JwtUtil.parseToken(token);
       String username = (String) map.get("username");*/
        // ThreadLocalUtil.get()获取拦截器存储的数据（Map类型）
        //获取map的键为username的登录用户的姓名
        Map<String, Object> map = ThreadLocalUtil.get();
        String username = (String) map.get("username");
        User byUserName = userService.findByUserName(username);
        return Result.success(byUserName);

    }


}
