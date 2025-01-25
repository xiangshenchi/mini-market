package com.example.api.service.impl;

import com.example.api.model.dto.LoginDto;
import com.example.api.model.entity.Admin;
import com.example.api.repository.AdminRepository;
import com.example.api.service.EmailService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

public class AdminServiceImplTest {
    private static final Logger logger = LoggerFactory.getLogger(AdminServiceImplTest.class);
    @InjectMocks
    private AdminServiceImpl adminService;

    @Mock
    private AdminRepository adminRepository;

    @Mock
    private EmailService emailService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testSave_WithInvalidEmailOrPassword() {
        Admin admin = new Admin();
        admin.setEmail("test@example.com");
        admin.setPassword("123"); // 密码少于5个字符

//        Exception exception = assertThrows(Exception.class, () -> {
//            adminService.save(admin);
//        });

        Exception exception = assertThrows(Exception.class, () -> adminService.save(admin));
        logger.info("Catch exception: {}", exception.getMessage());
        assertEquals("请求参数异常", exception.getMessage());
    }

    @Test
    public void testSave_WithValidEmailAndPassword() throws Exception {
        // 给定：创建一个 Admin 对象并设置其属性
        Admin admin = new Admin();
        admin.setEmail("test@example.com"); // 设置有效的电子邮件
        admin.setPassword("password123"); // 设置有效的密码

        // 模拟：当调用 adminRepository.save() 方法时，返回上述创建的 admin 对象
        when(adminRepository.save(any(Admin.class))).thenReturn(admin);

        // 当：调用 adminService.save(admin) 方法以保存 Admin 对象
        Admin savedAdmin = adminService.save(admin);
        logger.info("Email: {}", savedAdmin.getEmail());
        logger.info("Password: {}", savedAdmin.getPassword());
        // 然后：进行断言以验证返回的 savedAdmin 对象的状态
        assertNotNull(savedAdmin); // 验证 savedAdmin 不为 null
        assertEquals("test@example.com", savedAdmin.getEmail()); // 验证电子邮件是否正确
        assertEquals("password123", savedAdmin.getPassword()); // 验证密码是否正确

        // 验证 adminRepository 的 save 方法被调用了恰好一次
        verify(adminRepository, times(1)).save(any(Admin.class));
    }


    @Test
    public void testFindById() {
        // 定义一个测试用的管理员ID
        String adminId = "1";

        // 创建一个 Admin 对象并设置其属性
        Admin admin = new Admin();
        admin.setId(adminId); // 设置管理员的ID
        admin.setEmail("test@example.com"); // 设置管理员的电子邮件

        // 模拟 adminRepository 的 findById 方法，当传入 adminId 时返回包含 admin 对象的 Optional
        when(adminRepository.findById(adminId)).thenReturn(Optional.of(admin));

        // 调用 adminService 的 findById 方法，获取指定ID的管理员
        Admin foundAdmin = adminService.findById(adminId);
        logger.info("foundAdmin: {}", foundAdmin);
        // 验证找到的管理员对象不为空
        assertNotNull(foundAdmin);

        // 验证找到的管理员的ID与预期的 adminId 相等
        logger.info("adminId: {}", foundAdmin.getId());
        assertEquals(adminId, foundAdmin.getId());
    }


    @Test
    public void testSendEmail_WithNonExistentEmail() {
        // 定义一个不存在的电子邮件地址
        String email = "nonexistent@example.com";

        // 模拟 adminRepository 的 findAdminByEmail 方法，当传入 email 时返回 null，表示找不到该管理员
        when(adminRepository.findAdminByEmail(email)).thenReturn(null);

        // 断言 adminService 的 sendEmail 方法在传入不存在的电子邮件时会抛出异常
        Exception exception = assertThrows(Exception.class, () -> adminService.sendEmail(email));

        // 记录捕获到的异常信息
        logger.info("Catch exception: {}", exception.getMessage());

        // 验证异常消息是否为预期的 "不存在的邮箱账户"
        assertEquals("不存在的邮箱账户", exception.getMessage());
    }


    @Test 
    public void testSendEmail_WithValidEmail() throws Exception {
        // 定义一个有效的电子邮件地址
        String email = "test@example.com";

        // 创建一个新的 Admin 对象
        Admin admin = new Admin();
        // 设置 Admin 对象的电子邮件属性
        admin.setEmail(email);

        // 模拟 adminRepository 的 findAdminByEmail 方法，当传入 email 时返回 admin 对象
        when(adminRepository.findAdminByEmail(email)).thenReturn(admin);

        // 模拟 emailService 的 sendVerificationCode 方法，确保其返回 true，表示验证码发送成功
        when(emailService.sendVerificationCode(email)).thenReturn(true);

        // 调用 adminService 的 sendEmail 方法，传入有效的电子邮件地址，并将结果存储在 result 变量中
        boolean result = adminService.sendEmail(email);

        // 验证 result 是否为 true，确保 sendEmail 方法在有效电子邮件情况下成功
        assertTrue(result);

        // 验证 emailService 的 sendVerificationCode 方法在测试中被调用了一次
        verify(emailService, times(1)).sendVerificationCode(email);
    }


    @Test 
    public void testLoginByPassword_WithInvalidCredentials() {
        // 创建一个 LoginDto 对象，用于存储登录信息
        LoginDto dto = new LoginDto();
        // 设置电子邮件为无效的测试电子邮件
        dto.setEmail("test@example.com");
        // 设置密码为错误的密码
        dto.setPassword("wrongpassword");

        // 模拟 adminRepository 的 findAdminByEmailAndPassword 方法
        // 当传入无效的电子邮件和密码时返回 null，表示未找到匹配的管理员
        when(adminRepository.findAdminByEmailAndPassword(dto.getEmail(), dto.getPassword())).thenReturn(null);

        // 断言调用 adminService 的 loginByPassword 方法时会抛出异常
        // 使用 assertThrows 捕获异常并存储在 exception 变量中
        Exception exception = assertThrows(Exception.class, () -> adminService.loginByPassword(dto));

        // 记录捕获到的异常信息
        logger.info("Catch exception: {}", exception.getMessage());
        // 验证捕获到的异常消息是否与预期的错误消息相同
        assertEquals("用户名或密码错误Server", exception.getMessage());
    }


    @Test 
    public void testLoginByPassword_WithValidCredentials() throws Exception {
        // 创建一个 LoginDto 对象，用于存储有效的登录信息
        LoginDto dto = new LoginDto();
        // 设置电子邮件为有效的测试电子邮件
        dto.setEmail("test@example.com");
        // 设置密码为有效的密码
        dto.setPassword("password123");

        // 创建一个新的 Admin 对象，用于模拟登录成功后的管理员
        Admin admin = new Admin();
        // 设置 Admin 对象的电子邮件属性为与 LoginDto 中的电子邮件相同
        admin.setEmail(dto.getEmail());

        // 模拟 adminRepository 的 findAdminByEmailAndPassword 方法
        // 当传入有效的电子邮件和密码时返回 admin 对象，表示成功找到匹配的管理员
        when(adminRepository.findAdminByEmailAndPassword(dto.getEmail(), dto.getPassword())).thenReturn(admin);

        // 调用 adminService 的 loginByPassword 方法，传入有效的凭据，并将结果存储在 loggedInAdmin 变量中
        Admin loggedInAdmin = adminService.loginByPassword(dto);

        logger.info("loggedInAdmin: {}",loggedInAdmin);
        // 验证返回的 loggedInAdmin 对象不为 null，确保登录成功
        assertNotNull(loggedInAdmin);
        // 验证返回的 Admin 对象的电子邮件与输入的电子邮件相同，确保返回的对象正确
        logger.info("Email: {}",loggedInAdmin.getEmail());
        assertEquals(dto.getEmail(), loggedInAdmin.getEmail());
    }


    @Test
    public void testLoginByEmail_WithInvalidVerificationCode() {
        LoginDto dto = new LoginDto();
        dto.setEmail("test@example.com");
        dto.setCode("invalidcode");

        when(emailService.checkVerificationCode(dto.getEmail(), dto.getCode())).thenReturn(false);

        Exception exception = assertThrows(Exception.class, () -> adminService.loginByEmail(dto));

        assertEquals("验证码错误", exception.getMessage());
    }

    @Test
    public void testLoginByEmail_WithValidVerificationCode() throws Exception {
        LoginDto dto = new LoginDto();
        dto.setEmail("test@example.com");
        dto.setCode("validcode");

        Admin admin = new Admin();
        admin.setEmail(dto.getEmail());

        when(emailService.checkVerificationCode(dto.getEmail(), dto.getCode())).thenReturn(true);
        when(adminRepository.findAdminByEmail(dto.getEmail())).thenReturn(admin);

        Admin loggedInAdmin = adminService.loginByEmail(dto);

        assertNotNull(loggedInAdmin);
        assertEquals(dto.getEmail(), loggedInAdmin.getEmail());
    }

    @Test
    public void testFindAll() {
        // 创建第一个 Admin 对象并设置其属性
        Admin admin1 = new Admin();
        admin1.setId("1"); // 设置管理员的 ID
        admin1.setEmail("admin1@example.com"); // 设置管理员的电子邮件

        // 创建第二个 Admin 对象并设置其属性
        Admin admin2 = new Admin();
        admin2.setId("2"); // 设置管理员的 ID
        admin2.setEmail("admin2@example.com"); // 设置管理员的电子邮件

        // 将两个 Admin 对象放入一个列表中，以便模拟返回的结果
        List<Admin> admins = Arrays.asList(admin1, admin2);

        // 使用 Mockito 模拟 adminRepository 的 findAll 方法
        // 当调用该方法时，返回上面创建的 admins 列表
        when(adminRepository.findAll()).thenReturn(admins);

        // 调用 adminService 的 findAll 方法，获取所有管理员
        List<Admin> foundAdmins = adminService.findAll();
        logger.info("foundAdmins : {}",foundAdmins);

        // 验证返回的 foundAdmins 列表的大小是否为 2，确保正确返回了两个管理员
        assertEquals(2, foundAdmins.size());

        // 验证返回的第一个管理员的 ID 是否与 admin1 的 ID 相同
        logger.info("foundAdmins1 : {}",foundAdmins.get(0).getId());
        assertEquals(admin1.getId(), foundAdmins.get(0).getId());

        // 验证返回的第二个管理员的 ID 是否与 admin2 的 ID 相同
        logger.info("foundAdmins2 : {}",foundAdmins.get(1).getId());
        assertEquals(admin2.getId(), foundAdmins.get(1).getId());
    }


    @Test 
    public void testDelete() {
        // 定义要删除的管理员的 ID
        String adminId = "1";

        // 使用 Mockito 模拟 adminRepository 的 deleteById 方法
        // 当调用 deleteById(adminId) 时，不执行任何操作（即模拟删除操作）
        doNothing().when(adminRepository).deleteById(adminId);

        // 调用 adminService 的 delete 方法，传入要删除的管理员 ID
        adminService.delete(adminId);

        // 验证 adminRepository 的 deleteById 方法被调用了 1 次，确保删除操作被执行
        verify(adminRepository, times(1)).deleteById(adminId);
    }

}
