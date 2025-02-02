package com.example.api.controller;

import com.example.api.exception.InvalidCredentialsException;
import com.example.api.exception.VerificationCodeException;
import com.example.api.model.dto.LoginDto;
import com.example.api.model.entity.Admin;
import com.example.api.model.enums.Role;
import com.example.api.model.support.ResponseResult;
import com.example.api.repository.AdminRepository;
import com.example.api.service.AdminService;
import com.example.api.service.LoginLogService;
import com.example.api.utils.JwtTokenUtil;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/admin")
@Slf4j
public class AdminController {
    // 获取日志对象
    Logger logger = LoggerFactory.getLogger(AdminController.class);

    @Resource
    private AdminService adminService;

    @Resource
    private AdminRepository adminRepository;

    @Resource
    private LoginLogService loginLogService;

    @GetMapping("exitsAdmin")
    public ResponseResult exitsAdmin(String email) {
        if (email == null || email.trim().isEmpty()) {
            throw new IllegalArgumentException("邮箱不能为空");
        }
        Boolean flag = adminRepository.existsAdminByEmail(email);
        ResponseResult res = new ResponseResult();
        if (flag) {
            res.setMsg("邮箱已注册");
        } else {
            res.setMsg("邮箱未注册");
        }
        res.setStatus(flag);
        return res;
    }

    @GetMapping("hasInit")
    public boolean hasInit() {
        return adminRepository.existsAdminByRoles(Role.ROLE_SUPER_ADMIN.getValue());
    }

    @PostMapping("/init")
    public Admin init(@RequestBody @Valid Admin admin) throws Exception {
        admin.setRoles(Role.ROLE_SUPER_ADMIN.getValue());
        boolean exit = adminRepository.existsAdminByEmail(admin.getEmail());
        if (exit) throw new Exception("邮箱已注册");
        return adminService.save(admin);
    }

//    @GetMapping("")
//    @PreAuthorize("hasAnyRole('ROLE_SUPER_ADMIN' ,'ROLE_ADMIN')")
//    public Page<Admin> findAll(@RequestParam(defaultValue = "0") int page,
//                               @RequestParam(defaultValue = "10") int size) {
//
//        return adminService.findAll(page, size);
//    }
@GetMapping("")
@PreAuthorize("hasAnyRole('ROLE_SUPER_ADMIN' ,'ROLE_ADMIN')")
public List<Admin> findAll() {
    return adminService.findAll();
}

    @DeleteMapping("")
    @PreAuthorize("hasAnyRole('ROLE_SUPER_ADMIN' ,'ROLE_ADMIN')")
    public void delete(@RequestParam("id") String id) {
        if (id == null || id.trim().isEmpty()) {
            throw new IllegalArgumentException("ID不能为空");
        }
        adminService.delete(id);
    }

    @PostMapping("")
    @PreAuthorize("hasAnyRole('ROLE_SUPER_ADMIN' ,'ROLE_ADMIN')")
    public Admin save(@RequestBody @Valid Admin admin) throws Exception {
        return adminService.save(admin);
    }

    @PostMapping("/login")
    public Map<String, Object> loginByEmail(String type, @RequestBody @Valid LoginDto dto, HttpServletRequest request)
            throws Exception {
        Map<String, Object> map = new HashMap<>();
        Admin admin = null;
        String token;
        try {
            admin = type.equals("email") ? adminService.loginByEmail(dto) : adminService.loginByPassword(dto);
            logger.info("认证成功");
            token = adminService.createToken(admin, dto.isRemember() ? JwtTokenUtil.REMEMBER_EXPIRATION_TIME : JwtTokenUtil.EXPIRATION_TIME);
        } catch (InvalidCredentialsException e) {
            logger.warn("无效的登录尝试: {}", e.getMessage());
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "无效的电子邮件或密码");
        } catch (VerificationCodeException e) {
            logger.warn("验证码错误: {}", e.getMessage());
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "无效的验证码");
        } catch (Exception e) {
            logger.error("登录过程中发生意外错误: {}", e.getMessage());
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "登录过程中发生错误");
        }
        finally {
            loginLogService.recordLog(dto, admin, request);
        }
        map.put("admin", admin);
        map.put("token", token);
        return map;
    }

    @GetMapping("/sendEmail")
    public ResponseResult sendEmail(String email) throws Exception {
        if (email == null || email.trim().isEmpty()) {
            throw new IllegalArgumentException("邮箱不能为空");
        }
        Boolean flag = adminService.sendEmail(email);
        ResponseResult res = new ResponseResult();
        if (flag) {
            res.setMsg("发送成功，请登录邮箱查看");
        } else {
            res.setMsg("发送验证码失败，请检查邮箱服务");
        }
        res.setStatus(flag);
        return res;
    }
}
