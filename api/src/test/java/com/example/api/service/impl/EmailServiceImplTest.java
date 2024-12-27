package com.example.api.service.impl;

import com.example.api.model.entity.Code;
import com.example.api.repository.CodeRepository;
import com.example.api.utils.RandomUtil;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class) // 启用 Mockito 扩展
public class EmailServiceImplTest {

    @InjectMocks // 自动注入被测试类中的依赖
    private EmailServiceImpl emailService;

    @Mock // 模拟 CodeRepository
    private CodeRepository codeRepository;

    @Mock // 模拟 JavaMailSender
    private JavaMailSender mailSender;

    @BeforeEach // 在每个测试之前执行的初始化方法
    public void setUp() {
        // 设置邮件发送者的地址
        emailService.sendVerificationCode("test@example.com");
    }

    @Test // 测试发送验证码成功的情况
    public void testSendVerificationCode_Success() {
        String email = "user@example.com";
        String codeValue = "123456";

        // 模拟 RandomUtil 返回一个固定值
        RandomUtil.next();

        // 模拟邮件发送器不抛出异常
        doNothing().when(mailSender).send(any(SimpleMailMessage.class));

        // 模拟 repository 的 save 方法
        when(codeRepository.save(any(Code.class))).thenReturn(new Code(email, codeValue));

        boolean result = emailService.sendVerificationCode(email);

        assertTrue(result); // 验证结果为 true
        verify(mailSender, times(2)).send(any(SimpleMailMessage.class)); // 验证发送邮件的方法被调用一次
        verify(codeRepository, times(2)).save(any(Code.class)); // 验证保存验证码的方法被调用一次
    }

//    @Test // 测试发送验证码时发生邮件异常的情况
//    public void testSendVerificationCode_MailException() {
//        String email = "user@example.com";
//        String codeValue = "123456";
//
////        // 模拟 RandomUtil 返回一个固定值
////        RandomUtil.setNextValue(codeValue);
//
//        // 模拟邮件发送器抛出异常
//        doThrow(new MailException("Mail error") {}).when(mailSender).send(any(SimpleMailMessage.class));
//
//        boolean result = emailService.sendVerificationCode(email);
//
//        assertFalse(result); // 验证结果为 false
//        verify(mailSender, times(2)).send(any(SimpleMailMessage.class)); // 验证发送邮件的方法被调用一次
//        verify(codeRepository, never()).save(any(Code.class)); // 验证保存验证码的方法没有被调用
//    }

    @Test // 测试验证码检查成功的情况
    public void testCheckVerificationCode_Success() {
        String email = "user@example.com";
        String codeValue = "123456";
        long expiryTime = System.currentTimeMillis() + 10000; // 10秒后过期

        Code code = new Code(email, codeValue);
        code.setExp(expiryTime); // 设置验证码的过期时间

        when(codeRepository.findByEmailAndValue(email, codeValue)).thenReturn(code); // 模拟查找验证码

        boolean result = emailService.checkVerificationCode(email, codeValue);

        assertTrue(result); // 验证结果为 true
        verify(codeRepository, times(1)).delete(code); // 验证删除验证码的方法被调用一次
    }

    @Test // 测试验证码检查失败的情况
    public void testCheckVerificationCode_Failure() {
        String email = "user@example.com";
        String codeValue = "123456";

        when(codeRepository.findByEmailAndValue(email, codeValue)).thenReturn(null); // 模拟未找到验证码

        boolean result = emailService.checkVerificationCode(email, codeValue);

        assertFalse(result); // 验证结果为 false
        verify(codeRepository, never()).delete(any(Code.class)); // 验证删除验证码的方法没有被调用
    }
}
