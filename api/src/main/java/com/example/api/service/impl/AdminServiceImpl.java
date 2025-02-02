package com.example.api.service.impl;

import com.example.api.exception.InvalidCredentialsException;
import com.example.api.exception.VerificationCodeException;
import com.example.api.model.dto.LoginDto;
import com.example.api.model.entity.Admin;
import com.example.api.repository.AdminRepository;
import com.example.api.service.AdminService;
import com.example.api.service.EmailService;
import com.example.api.utils.DataTimeUtil;
import com.example.api.utils.JwtTokenUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    Logger logger = LoggerFactory.getLogger(AdminServiceImpl.class);

    @Resource
    private AdminRepository adminRepository;

    @Resource
    private EmailService emailService;

    @Override
    public Admin save(Admin admin) throws Exception {
        if (admin.getEmail().length() < 8 || admin.getPassword().length() < 5) throw new Exception("请求参数异常");
        admin.setCreateAt(DataTimeUtil.getNowTimeString());
        return adminRepository.save(admin);
    }

    @Override
    public Admin findById(String id) {
        return adminRepository.findById(id).orElse(null);
    }

    @Override
    public boolean sendEmail(String email) throws Exception {
        Admin admin = adminRepository.findAdminByEmail(email);
        if (admin == null) throw new Exception("不存在的邮箱账户");
        return emailService.sendVerificationCode(email);
    }

    @Override
    public Admin loginByPassword(LoginDto dto) throws Exception {
        Admin one;
        one = adminRepository.findAdminByEmailAndPassword(dto.getEmail(), dto.getPassword());
        if (one == null) {
            logger.info("Server:User not found");
            throw new InvalidCredentialsException("用户名或密码错误Server");
        }
        logger.info("Server:User found");
        return one;
    }

    @Override
    public Admin loginByEmail(LoginDto dto) throws Exception {
        boolean status = emailService.checkVerificationCode(dto.getEmail(), dto.getCode());
        if (!status) throw new VerificationCodeException("验证码错误");
        return adminRepository.findAdminByEmail(dto.getEmail());
    }



    @Override
    public String createToken(Admin admin, long exp) {
        String rolesString = admin.getRoles();
        String[] roles = rolesString != null ? rolesString.split(";") : null;
        return JwtTokenUtil.createToken(admin.getEmail(), roles, exp);
    }

    @Override
    public void delete(String id) {
        adminRepository.deleteById(id);
    }

    @Override
    public List<Admin> findAll() {
        return adminRepository.findAll();
    }

//    @Override
//    public Page<Admin> findAll(int page, int size) {
//        Pageable pageable = PageRequest.of(page, size);
//        return adminRepository.findAll(pageable);
//    }

}
