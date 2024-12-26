package com.example.api.util;

import com.example.api.utils.IpUtil;
import org.junit.Before;
import org.junit.Test;

import javax.servlet.http.HttpServletRequest;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

public class IpUtilTest {

    private HttpServletRequest request;

    @Before
    public void setUp() {
        request = mock(HttpServletRequest.class);
    }

    @Test
    public void testGetIpAddr_WithXForwardedFor() {
        when(request.getHeader("x-forwarded-for")).thenReturn("192.168.1.1");
        String ipAddress = IpUtil.getIpAddrTest(request);
        assertEquals("192.168.1.1", ipAddress);
    }

    @Test
    public void testGetIpAddr_WithProxyClientIP() {
        when(request.getHeader("x-forwarded-for")).thenReturn(null);
        when(request.getHeader("Proxy-Client-IP")).thenReturn("192.168.1.2");
        String ipAddress = IpUtil.getIpAddrTest(request);
        assertEquals("192.168.1.2", ipAddress);
    }

    @Test
    public void testGetIpAddr_WithWLProxyClientIP() {
        when(request.getHeader("x-forwarded-for")).thenReturn(null);
        when(request.getHeader("Proxy-Client-IP")).thenReturn(null);
        when(request.getHeader("WL-Proxy-Client-IP")).thenReturn("192.168.1.3");
        String ipAddress = IpUtil.getIpAddrTest(request);
        assertEquals("192.168.1.3", ipAddress);
    }

    @Test
    public void testGetIpAddr_WithRemoteAddr() {
        when(request.getHeader("x-forwarded-for")).thenReturn(null);
        when(request.getHeader("Proxy-Client-IP")).thenReturn(null);
        when(request.getHeader("WL-Proxy-Client-IP")).thenReturn(null);
        when(request.getHeader("HTTP_CLIENT_IP")).thenReturn(null);
        when(request.getHeader("HTTP_X_FORWARDED_FOR")).thenReturn(null);
        when(request.getRemoteAddr()).thenReturn("192.168.1.4");
        String ipAddress = IpUtil.getIpAddrTest(request);
        assertEquals("192.168.1.4", ipAddress);
    }

    @Test
    public void testGetIpAddr_WithIPv6() {
        when(request.getHeader("x-forwarded-for")).thenReturn(null);
        when(request.getHeader("Proxy-Client-IP")).thenReturn(null);
        when(request.getHeader("WL-Proxy-Client-IP")).thenReturn(null);
        when(request.getHeader("HTTP_CLIENT_IP")).thenReturn(null);
        when(request.getHeader("HTTP_X_FORWARDED_FOR")).thenReturn(null);
        when(request.getRemoteAddr()).thenReturn("0:0:0:0:0:0:0:1"); // IPv6 loopback
        String ipAddress = IpUtil.getIpAddrTest(request);
        assertEquals("127.0.0.1", ipAddress); // Should convert to loopback address
    }

    @Test
    public void testGetIpAddr_WithUnknown() {
        when(request.getHeader("x-forwarded-for")).thenReturn("unknown");
        when(request.getHeader("Proxy-Client-IP")).thenReturn("unknown");
        when(request.getHeader("WL-Proxy-Client-IP")).thenReturn("unknown");
        when(request.getHeader("HTTP_CLIENT_IP")).thenReturn("unknown");
        when(request.getHeader("HTTP_X_FORWARDED_FOR")).thenReturn("unknown");
        when(request.getRemoteAddr()).thenReturn("127.0.0.1");
        String ipAddress = IpUtil.getIpAddrTest(request);
        assertEquals("127.0.0.1", ipAddress); // Should fall back to remote address
    }

    @Test
    public void testGetIpAddr_Empty() {
        when(request.getHeader("x-forwarded-for")).thenReturn(null);
        when(request.getHeader("Proxy-Client-IP")).thenReturn(null);
        when(request.getHeader("WL-Proxy-Client-IP")).thenReturn(null);
        when(request.getHeader("HTTP_CLIENT_IP")).thenReturn(null);
        when(request.getHeader("HTTP_X_FORWARDED_FOR")).thenReturn(null);
        when(request.getRemoteAddr()).thenReturn(null);
        String ipAddress = IpUtil.getIpAddrTest(request);
        assertEquals(null, ipAddress); // Should return empty string
    }
}
