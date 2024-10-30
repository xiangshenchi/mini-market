package com.marketbackend.util;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;

import java.util.Date;
import java.util.Map;

public class JwtUtil {
    private static final String KEY = "itheima";

    /**
     *
     * @param claims  根据载荷生成令牌 接受业务数据，生成token并返回
     * @return 返回令牌
     * Map<String, Object> claims 封装的业务数据
     */
    public static String genToken(Map<String, Object> claims) {
        return JWT.create()
                .withClaim("claims", claims)//添加载荷
                .withExpiresAt(new Date(System.currentTimeMillis() + 1000 * 60 * 60 * 12))//有效时间12小时
                .sign(Algorithm.HMAC256(KEY));
    }

    //接受token，验证token，解析并返回业务数据
    public static Map<String, Object> parseToken(String token) {
        return JWT.require(Algorithm.HMAC256(KEY))
                .build()
                .verify(token)
                .getClaim("claims")
                .asMap();
    }
}
