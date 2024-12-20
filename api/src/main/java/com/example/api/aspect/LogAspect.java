package com.example.api.aspect;

import com.example.api.annotation.Log;
import com.example.api.model.entity.SystemLog;
import com.example.api.service.SystemLogService;
import com.example.api.utils.IpUtil;
import com.example.api.utils.JwtTokenUtil;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.time.LocalDateTime;

@Aspect
@Component
public class LogAspect {
    @Autowired
    private SystemLogService logService;

    /*
        表明切点
     */
    @Pointcut("@annotation(com.example.api.annotation.Log)")
    public void pt() {
    }

    /*
       环绕通知
     */
    @Around("pt()")
    public Object Around(ProceedingJoinPoint point) throws Throwable {
        //记录开始时间
        long beginTime = System.currentTimeMillis();
        Object res = null;
        try {
            //执行方法
            res = point.proceed();
        } finally {
            //计算执行时长
            long time = System.currentTimeMillis() - beginTime;
            recordLog(point);
        }
        return res;
    }

    private void recordLog(ProceedingJoinPoint point) {
        //获取当前请求对象
        ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = requestAttributes.getRequest();
        //获取目标方法签名
        MethodSignature signature = (MethodSignature) point.getSignature();
        Method method = signature.getMethod();
        Log annotation = method.getAnnotation(Log.class);
        //封装日志对象
        SystemLog systemLog = new SystemLog();
        systemLog.setModule(annotation.moudle());
        systemLog.setBusincessType(annotation.type().getName());
        systemLog.setIp(IpUtil.getIpAddr(request));
        systemLog.setTime(LocalDateTime.now());
        //获取方法的全路径
        systemLog.setMethod(signature.getDeclaringTypeName() + "." + signature.getName());
        //获取token,并解析token来获取当前账号
        String token = request.getHeader(JwtTokenUtil.TOKEN_HEADER);
        systemLog.setAccount(JwtTokenUtil.getUsername(token));
        //持久化到数据库
        logService.record(systemLog);
    }
}
