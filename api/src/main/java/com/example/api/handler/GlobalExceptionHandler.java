package com.example.api.handler;

import com.example.api.model.support.ResponseResult;
import com.example.api.service.LoginLogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.annotation.Resource;

/**
 * 捕获controller异常
 * controller抛出异常执行下边的函数
 * 返回Response写入ApiResult
 */
@ResponseBody
@RestControllerAdvice
public class GlobalExceptionHandler {
    @Resource
    private LoginLogService loginLogService;
    private final Logger logger = LoggerFactory.getLogger(getClass());

    @ExceptionHandler(value = Exception.class)
    public Object handleException(Exception e) {
        if (e.getClass().equals(AccessDeniedException.class)) {
            return new ResponseResult<>(403, "你没有访问权限");
        }
        logger.warn(e.getMessage());
        return new ResponseResult<>(400, e.getMessage());
    }

    @ExceptionHandler
    public Object handleDuplicateKeyException(DuplicateKeyException e) {
        logger.warn(e.getMessage());
        String message=e.getMessage();
        assert message != null;
        int duplicateEntry = message.indexOf("Duplicate entry");
        String errMessage=message.substring(duplicateEntry);
        String[] s = errMessage.split(" ");
        return new ResponseResult<>(400, s[2]+"已存在");
    }

}
