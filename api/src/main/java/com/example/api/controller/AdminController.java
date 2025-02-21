package com.example.api.controller;

import com.example.api.annotation.DisableBaseResponse;
import com.example.api.exception.InvalidCredentialsException;
import com.example.api.exception.VerificationCodeException;
import com.example.api.model.dto.LoginDto;
import com.example.api.model.entity.Admin;
import com.example.api.model.enums.Role;
import com.example.api.repository.AdminRepository;
import com.example.api.service.AdminService;
import com.example.api.service.LoginLogService;
import com.example.api.utils.JwtTokenUtil;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

    @Resource
    private AdminService adminService;

    @Resource
    private AdminRepository adminRepository;

    @Resource
    private LoginLogService loginLogService;

    @GetMapping("/exitsAdmin")
    public Map<String, Object> exitsAdmin(String email) {
        if (email == null || email.trim().isEmpty()) {
            throw new IllegalArgumentException("邮箱不能为空");
        }
        boolean exists = adminRepository.existsAdminByEmail(email);
        return Map.of(
                "exists", exists,
                "message", exists ? "邮箱已注册" : "邮箱未注册"
        );
    }

    @GetMapping("/hasInit")
    public boolean hasInit() {
        return adminRepository.existsAdminByRoles(Role.ROLE_SUPER_ADMIN.getValue());
    }

    @PostMapping("/init")
    public Admin init(@RequestBody @Valid Admin admin) throws Exception {
        admin.setRoles(Role.ROLE_SUPER_ADMIN.getValue());
        if (adminRepository.existsAdminByEmail(admin.getEmail())) {
            throw new Exception("邮箱已注册");
        }
        return adminService.save(admin);
    }

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
    public Map<String, Object> loginByEmail(String type, @RequestBody @Valid LoginDto dto, HttpServletRequest request) {
        Map<String, Object> response = new HashMap<>();
        Admin admin = null;
        try {
            admin = type.equals("email") ? adminService.loginByEmail(dto) : adminService.loginByPassword(dto);
            logger.info("认证成功");
            String token = adminService.createToken(admin, dto.isRemember() ? JwtTokenUtil.REMEMBER_EXPIRATION_TIME : JwtTokenUtil.EXPIRATION_TIME);
            response.put("admin", admin);
            response.put("token", token);
        } catch (InvalidCredentialsException e) {
            logger.warn("无效的登录尝试: {}", e.getMessage());
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "无效的电子邮件或密码");
        } catch (VerificationCodeException e) {
            logger.warn("验证码错误: {}", e.getMessage());
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "无效的验证码");
        } catch (Exception e) {
            logger.error("登录过程中发生意外错误: {}", e.getMessage());
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "登录过程中发生错误");
        } finally {
            loginLogService.recordLog(dto, admin, request);
        }
        return response;
    }

    @GetMapping("/sendEmail")
    public Map<String, Object> sendEmail(String email) throws Exception {
        if (email == null || email.trim().isEmpty()) {
            throw new IllegalArgumentException("邮箱不能为空");
        }
        boolean success = adminService.sendEmail(email);
        return Map.of(
                "success", success,
                "message", success ? "发送成功，请登录邮箱查看" : "发送验证码失败，请检查邮箱服务"
        );
    }
}