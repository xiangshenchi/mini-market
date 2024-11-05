package com.example.api.annotation;

import com.example.api.model.enums.BusincessType;

import java.lang.annotation.*;

@Target(ElementType.METHOD)   //目标类型
@Retention(RetentionPolicy.RUNTIME)  //作用范围
@Documented
public @interface Log {
    /*
        功能模块
     */
    String moudle() default "";

    /*
        操作类型
     */
    BusincessType type();
}
