package com.marketbackend.exception;

import com.marketbackend.pojo.Result;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 它允许开发者定义一个全局的异常处理类，
 * 这个类会应用到所有的 @RestController 中。
 * 通过这种方式，转换成json字符串
 * 你可以为你的应用程序定义一个集中的异常处理逻辑，从而简化异常管理的代码
 *
 * 当你的控制器方法抛出异常时，@RestControllerAdvice 注解的类会自动捕获这些异常，并根据异常类型进行处理。
 * 在 @RestControllerAdvice 标记的类中，你可以使用 @ExceptionHandler 注解来定义方法，
 * 这些方法会处理特定的异常类型。
 */
@RestControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(Exception.class)
    public Result handleException(Exception e){
        e.printStackTrace();//异常信息输出到控制台
        return Result.error(StringUtils.hasLength(e.getMessage())?e.getMessage():"操作失败");//getMessage()封装错误信息
    }
}
