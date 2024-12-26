package com.example.api.util;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

import javax.servlet.http.HttpServletRequest;

import com.example.api.utils.BrowserUtil;
import org.junit.Before;
import org.junit.Test;

public class BrowserUtilTest {

    private HttpServletRequest request;

    @Before
    public void setUp() {
        request = mock(HttpServletRequest.class);
    }

    @Test
    public void testGetBrower_Chrome() {
        when(request.getHeader("User -Agent")).thenReturn("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36");
        String browser = BrowserUtil.getBrower(request);
        assertEquals("Chrome", browser);
    }

    @Test
    public void testGetBrower_Safari() {
        when(request.getHeader("User -Agent")).thenReturn("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15");
        String browser = BrowserUtil.getBrower(request);
        assertEquals("safari浏览器", browser);
    }

    @Test
    public void testGetBrower_IE() {
        when(request.getHeader("User -Agent")).thenReturn("Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)");
        String browser = BrowserUtil.getBrower(request);
        assertEquals("IE浏览器", browser);
    }

    @Test
    public void testGetBrower_Firefox() {
        when(request.getHeader("User -Agent")).thenReturn("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0");
        String browser = BrowserUtil.getBrower(request);
        assertEquals("火狐浏览器", browser);
    }

//     void Agent() {
//        when(request.getHeader("User -Agent")).thenReturn("");
//        String browser = BrowserUtil.getBrower(request);
//        assertEquals("谷歌浏览器", browser);
//    }
//
//    void Agent() {
//        when(request.getHeader("User -Agent")).thenReturn(null);
//        String browser = BrowserUtil.getBrower(request);
//        assertEquals("谷歌浏览器", browser);
//    }
//
    @Test
    public void testGetBrower_UnknownBrowser() {
        when(request.getHeader("User -Agent")).thenReturn("Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)");
        String browser = BrowserUtil.getBrower(request);
        assertEquals("谷歌浏览器", browser); // Default case for unknown browsers
    }
}
