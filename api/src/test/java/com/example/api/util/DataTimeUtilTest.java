package com.example.api.util;

import com.example.api.utils.DataTimeUtil;
import org.junit.Test;
import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DataTimeUtilTest {

    @Test
    public void testGetNowTimeString() {
        String nowTimeString = DataTimeUtil.getNowTimeString();
        assertNotNull("Current time string should not be null", nowTimeString);

        // 检查返回的时间字符串格式
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            df.parse(nowTimeString); // 尝试解析字符串，确保格式正确
        } catch (ParseException e) {
            fail("Current time string format is incorrect: " + nowTimeString);
        }
    }

    @Test
    public void testParseTimeStamp() {
        String validTimeString = "2023-10-01 12:30:00";
        Long timestamp = DataTimeUtil.parseTimeStamp(validTimeString);
        assertNotNull("Timestamp should not be null for valid input", timestamp);
        assertTrue("Timestamp should be greater than 0", timestamp > 0);

        // 测试无效时间字符串
        String invalidTimeString = "invalid-time-string";
        Long invalidTimestamp = DataTimeUtil.parseTimeStamp(invalidTimeString);
        assertNull("Timestamp for invalid input should be null", invalidTimestamp);
    }
    @Test
    public void testIsAfterNow() {
        // 测试未来时间
        String futureTime = new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis() + 86400000)); // 明天
        assertTrue("Future time should be after now", DataTimeUtil.isAfterNow(futureTime));

        // 测试过去时间
        String pastTime = new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis() - 86400000)); // 昨天
        assertFalse("Past time should not be after now", DataTimeUtil.isAfterNow(pastTime));

        // 测试无效时间字符串
        String invalidTimeString = "invalid-date-string";
        assertFalse("Invalid date string should return false", DataTimeUtil.isAfterNow(invalidTimeString));
    }
}
