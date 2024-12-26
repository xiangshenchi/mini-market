package com.example.api.utils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.*;

public final class JwtTokenUtil {
    //在request的header中的名字
    public final static String TOKEN_HEADER = "Authorization";

    //一个星期过期
    public final static long REMEMBER_EXPIRATION_TIME = 1000 * 60 * 60 * 24 * 7;

    //一天过期
    public final static long EXPIRATION_TIME = 1000 * 60 * 60 * 24;

    // 应用密钥
    private static final String APP_SECRET = "logisticapi";

    private static final String PREFIX = "logistics:";

    // 角色权限声明
    private static final String ROLE_CLAIMS = "roles";

    //检验token是否合法
    public static boolean checkToken(String token) {
        // 使用 Logger 记录日志
        Logger logger = LoggerFactory.getLogger(JwtTokenUtil.class);

        // 检查 token 是否为 null、空字符串或 "null"
        if (token == null || token.isEmpty() || "null".equals(token)) {
            logger.warn("Token is invalid: token is null or empty."); // 记录警告日志
            return false; // 返回 false，表示 token 无效
        }

        // 检查 token 是否以预定义的前缀开始
        boolean isValid = token.startsWith(PREFIX); // 判断 token 是否有效

        if (isValid) {
            logger.info("Token is valid and starts with the expected prefix."); // 记录成功日志
        } else {
            logger.warn("Token is invalid: does not start with the expected prefix."); // 记录无效日志
        }

        return isValid; // 返回 token 是否有效
    }

    /**
     * 生成Token
     */
    public static String createToken(String username, String[] roles, long expiration) {
        System.out.println("---------------------------");
        System.out.println("username:" + username);
        System.out.println("-----------------------");
        Map<String, Object> map = new HashMap<>();
        map.put(ROLE_CLAIMS, roles);
        return PREFIX + Jwts.builder()
                .setClaims(map)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + expiration))
                .signWith(SignatureAlgorithm.HS256, APP_SECRET)
                .setSubject(username)
                .compact();
    }

    /**
     * 获取token body
     */
    private static Claims getTokenClaims(String token) {
        token = token.substring(PREFIX.length());
        Claims claims = null;
        try {
            claims = Jwts.parser()
                    .setSigningKey(APP_SECRET)
                    .parseClaimsJws(token)
                    .getBody();
        } catch (ExpiredJwtException e) {
            // 记录 Token 过期的日志
            Logger logger = LoggerFactory.getLogger(JwtTokenUtil.class);
            logger.warn("Token has expired: {}", e.getMessage());
        } catch (Exception e) {
            // 处理其他解析异常
            Logger logger = LoggerFactory.getLogger(JwtTokenUtil.class);
            logger.error("Failed to parse token: {}", e.getMessage());
        }
        return claims;
    }


    /**
     * 从Token中获取username
     */
    public static String getUsername(String token) {
        System.out.println("----gettoken----");
        System.out.println(getTokenClaims(token));
        System.out.println("-------------");
        System.out.println(getTokenClaims(token).getSubject());
        System.out.println("-------------");
        return getTokenClaims(token).getSubject();
    }

    /**
     * 从Token中获取用户角色
     */
    public static List<String> getTokenRoles(String token) {
        List<String> roles = new ArrayList<>();
        Object object = getTokenClaims(token).get(ROLE_CLAIMS);
        if (object instanceof ArrayList<?>) {
            for (Object o : (List<?>) object) {
                roles.add((String) o);
            }
        }
        for (String role : roles) {
            System.out.println(role);
        }
        return roles;
    }

    /**
     * 校验Token是否过期
     */
    /**
     * 校验Token是否过期
     */
    public static boolean isExpiration(String token) {
        Claims claims = getTokenClaims(token);
        if (claims == null) {
            // Token 解析失败，可能是过期或其他原因
            return true; // 返回 true，表示 Token 已过期
        }
        return claims.getExpiration().before(new Date());
    }


}

