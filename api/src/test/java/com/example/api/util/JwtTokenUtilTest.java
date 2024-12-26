package com.example.api.util;

import com.example.api.utils.JwtTokenUtil;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

public class JwtTokenUtilTest {
    private static final Logger logger = LoggerFactory.getLogger(JwtTokenUtilTest.class);

    // 定义测试用的常量
    private static final String USERNAME = "1483618794@qq.com"; // 测试用户名
    private static final String PREFIX_TEST = "logistics:";
    private static final String APP_SECRET_TEST = "logisticapi";
    private static final String ROLE_CLAIMS_TEST = "roles";
    private static final String[] ROLES = {"ROLE_SUPER_ADMIN", "ROLE_ADMIN"}; // 测试角色数组
    private static final long EXPIRATION_TIME = 1000; // 设置较短的过期时间以便测试

    // 测试 checkToken 方法
    @Test
    public void testCheckToken() {
        // 创建一个有效的 token
        String validToken = JwtTokenUtil.createToken(USERNAME, ROLES, EXPIRATION_TIME);
        // 定义一个无效的 token
        String invalidToken = "invalidToken";

        // 验证有效 token 返回 true
        assertTrue(JwtTokenUtil.checkToken(validToken));
        // 验证无效 token 返回 false
        assertFalse(JwtTokenUtil.checkToken(invalidToken));
        // 验证 null 和空字符串的 token 返回 false
        assertFalse(JwtTokenUtil.checkToken(null));
        assertFalse(JwtTokenUtil.checkToken("null"));
        assertFalse(JwtTokenUtil.checkToken(""));
    }

    // 测试 createToken 方法
    @Test
    public void testCreateToken() {
        // 创建 token
        String token = JwtTokenUtil.createToken(USERNAME, ROLES, EXPIRATION_TIME);
        logger.info("Generated token: {}", token); // 打印生成的 token
        // 验证 token 不为空
        assertNotNull(token);
        logger.info("Token is not null.");
        // 验证 token 以预定义的前缀开头
        assertTrue(token.startsWith(PREFIX_TEST));
        logger.info("Token starts with the expected prefix: {}", PREFIX_TEST);

        // 解析 token 以验证内容
        Claims claims = Jwts.parser()
                .setSigningKey(APP_SECRET_TEST) // 设置签名密钥
                .parseClaimsJws(token.substring(PREFIX_TEST.length())) // 解析 token
                .getBody(); // 获取声明体

        // 验证 token 中的用户名和角色
        assertEquals(USERNAME, claims.getSubject());
        logger.info("Token subject matches the expected username: {}", USERNAME);
        logger.info("Token subject matches the expected role: {}", claims.get(ROLE_CLAIMS_TEST));
    }

    // 测试 getUsername 方法
    @Test
    public void testGetUsername() {
        // 创建 token
        String token = JwtTokenUtil.createToken(USERNAME, ROLES, EXPIRATION_TIME);
        logger.info("Generated token for username '{}': {}", USERNAME, token); // 打印生成的 token

        // 从 token 中获取用户名
        String username = JwtTokenUtil.getUsername(token);
        logger.info("Retrieved username from token: {}", username); // 打印获取的用户名

        // 验证获取的用户名与预期一致
        assertEquals(USERNAME, username);
        logger.info("Username matches the expected value: {}", USERNAME); // 打印验证成功的日志
    }

    // 测试 getTokenRoles 方法
    @Test
    public void testGetTokenRoles() {
        // 创建 token
        String token = JwtTokenUtil.createToken(USERNAME, ROLES, EXPIRATION_TIME);
        logger.info("Generated token for username '{}': {}", USERNAME, token); // 打印生成的 token

        // 从 token 中获取角色列表
        List<String> roles = JwtTokenUtil.getTokenRoles(token);
        logger.info("Retrieved roles from token: {}", roles); // 打印获取的角色列表

        // 验证角色数量与预期一致
        assertEquals(2, roles.size());
        logger.info("Role count matches expected value: 2");

        // 验证角色列表中包含预期的角色
        assertTrue(roles.contains("ROLE_SUPER_ADMIN"));
        logger.info("Roles contain expected role: ROLE_SUPER_ADMIN");

        assertTrue(roles.contains("ROLE_ADMIN"));
        logger.info("Roles contain expected role: ROLE_ADMIN");
    }

    // 测试 isExpiration 方法
    @Test
    public void testIsExpiration() {
        // 创建 token
        String token = JwtTokenUtil.createToken(USERNAME, ROLES, EXPIRATION_TIME);
        // 验证 token 还未过期
        assertFalse(JwtTokenUtil.isExpiration(token), "Token should not be expired immediately after creation");

        // 等待 token 过期
        try {
            // 等待超过过期时间
            Thread.sleep(EXPIRATION_TIME + 1000);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt(); // 恢复中断状态
            fail("Test interrupted: " + e.getMessage());
        }

        // 验证 token 已过期
        assertTrue(JwtTokenUtil.isExpiration(token), "Token should be expired after expiration time");
    }
}
