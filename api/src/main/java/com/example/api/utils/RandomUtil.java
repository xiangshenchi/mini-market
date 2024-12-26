package com.example.api.utils;

import java.security.SecureRandom;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public final class RandomUtil {

    private static final SecureRandom secureRandom = new SecureRandom();

    public static String next() {
        return IntStream.range(0, 6)
                .map(i -> secureRandom.nextInt(10)) // 生成0-9之间的随机数字
                .mapToObj(String::valueOf) // 转换为字符串
                .collect(Collectors.joining()); // 连接成一个字符串
    }
}
