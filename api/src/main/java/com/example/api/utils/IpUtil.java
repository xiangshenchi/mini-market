package com.example.api.utils;

import com.jthinking.common.util.ip.IPInfo;
import com.jthinking.common.util.ip.IPInfoUtils;

import javax.servlet.http.HttpServletRequest;

public class IpUtil {

    private static final String LOOPBACK_ADDRESS = "127.0.0.1";
    private static final String IPV6_ADDRESS = "0:0:0:0:0:0:0:1";

    /**
     * 通过HttpServletRequest返回客户端真实IP地址（通过多级代理后也能获取到真实ip）
     */
    public static String getIpAddr(HttpServletRequest request) {
        try {
            String ip = request.getHeader("x-forwarded-for");
            if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("Proxy-Client-IP");
            }
            if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("WL-Proxy-Client-IP");
            }
            if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("HTTP_CLIENT_IP");
            }
            if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("HTTP_X_FORWARDED_FOR");
            }
            if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getRemoteAddr();
            }
            //如果使用localhost访问，对于windows IPv6会返回0:0:0:0:0:0:0:1，将其转为127.0.0.1
            if (IPV6_ADDRESS.equals(ip)) {
                ip = LOOPBACK_ADDRESS;
            }
            IPInfo ipInfo = IPInfoUtils.getIpInfo(ip);
            return ipInfo.getAddress();
//             return ip;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }
    public static String getIpAddrTest(HttpServletRequest request) {
        try {
            String ip = request.getHeader("x-forwarded-for");
            if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("Proxy-Client-IP");
            }
            if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("WL-Proxy-Client-IP");
            }
            if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("HTTP_CLIENT_IP");
            }
            if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("HTTP_X_FORWARDED_FOR");
            }
            if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getRemoteAddr();
            }
            //如果使用localhost访问，对于windows IPv6会返回0:0:0:0:0:0:0:1，将其转为127.0.0.1
            if (IPV6_ADDRESS.equals(ip)) {
                ip = LOOPBACK_ADDRESS;
            }
//            IPInfo ipInfo = IPInfoUtils.getIpInfo(ip);
//            return ipInfo.getAddress();
             return ip;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }
}
