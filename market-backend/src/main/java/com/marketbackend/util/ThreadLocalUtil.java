package com.marketbackend.util;

public class ThreadLocalUtil {
    //提供ThreadLocal对象
    private static final ThreadLocal TREAD_LOCAL = new ThreadLocal();

    //根据键获取值
    public static <T> T get() {
        return (T) TREAD_LOCAL.get();//（T）可以强转
    }

    //存储键值对
    public static void set(Object value) {
        TREAD_LOCAL.set(value);
    }

    //清除ThreadLocal 防止内存泄露
    public static void remove() {
        TREAD_LOCAL.remove();
    }
}
