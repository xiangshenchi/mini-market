package com.marketbackend.interceptors;

import com.marketbackend.util.JwtUtil;
import com.marketbackend.util.ThreadLocalUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import java.util.Map;


@Component
public class LoginInterceptor implements HandlerInterceptor {
    /**
     * preHandle 方法在请求到达实际处理器（如Controller）之前被调用。这个方法必须返回一个布尔值，表示是否继续执行链中的下一个拦截器或处理器。
     *
     * @param request  这是Java Servlet API的一部分，代表客户端发出的HTTP请求。
     *                 通过这个对象，您可以访问请求的所有信息，包括请求参数、头信息、请求方法（GET、POST等）、请求URL等。
     * @param response 代表服务器返回给客户端的HTTP响应。通过这个对象，您可以操作响应的状态码、头信息以及发送响应内容。
     * @param handler  这个参数表示当前请求被调用的处理器对象。 在Spring MVC中，这通常是一个 HandlerMethod 实例，
     *                 它代表了处理请求的控制器方法。通过这个对象，您可以获得方法的相关信息，如方法参数、返回类型、注解等。
     *
     */

    /**
     *
     preHandle：请求到达接口之前执行，afterCompletion：请求（接口）结束后执行
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //根据头部获取令牌
        String token = request.getHeader("Authorization");
        //验证token
        try {
            //解析请求头（token），返回载荷
            Map<String, Object> claims = JwtUtil.parseToken(token);
            //把业务数据存储到TreadLocal
            ThreadLocalUtil.set(claims);
            //放行
            return true;
        } catch (Exception e) {
            //校验失败，http状态码为401
            response.setStatus(401);
            //不放行
            return false;
        }
    }

    //响应完后清除线程
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        //清空TreadLocal中的数据
        ThreadLocalUtil.remove();
    }
}
