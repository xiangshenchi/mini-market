package com.example.api.util;

import com.example.api.utils.DataTimeUtil;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;

import static org.junit.Assert.*;

public class DataTimeUtilTest {
    public static final Logger logger=LoggerFactory.getLogger(DataTimeUtilTest.class);
    private static final String VALID_DATE = "2023-10-01 12:00:00"; // 示例有效日期
    private static final String INVALID_DATE = "2023-31"; // 示例无效日期
    private static final String EMPTY_STRING = "";
    private static final String NULL_STRING = null;
    private static final String FUTURE_DATE = "2030-01-01"; // 示例未来日期
    private static final String PAST_DATE = "2020-01-01"; // 示例过去日期

    // 测试 getNowTimeString 方法
    @Test
    public void testGetNowTimeString() {
        String nowTimeString = DataTimeUtil.getNowTimeString();
        logger.info("nowTimeString :{}",nowTimeString);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String expectedFormat = simpleDateFormat.format(System.currentTimeMillis());
        logger.info("expectedFormat :{}",expectedFormat);
        assertEquals(expectedFormat, nowTimeString);
    }

    // 测试有效日期字符串的解析
    @Test
    public void testParseValidDate() throws Exception {
        Long expectedTimestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(VALID_DATE).getTime();

        Long actualTimestamp = DataTimeUtil.parseTimeStamp(VALID_DATE);
        assertEquals(expectedTimestamp, actualTimestamp);
    }

     // 测试无效日期字符串的解析
    @Test
    public void testParseInvalidDate() {
        Long actualTimestamp = DataTimeUtil.parseTimeStamp(INVALID_DATE);
        assertNull(actualTimestamp); // 解析失败应返回 null
    }

    // 测试空字符串作为输入
    @Test
    public void testParseEmptyString() {
        assertThrows(IllegalArgumentException.class, () -> DataTimeUtil.parseTimeStamp(EMPTY_STRING));
    }

    // 测试 null 值作为输入
    @Test
    public void testParseNull() {
        assertThrows(IllegalArgumentException.class, () -> DataTimeUtil.parseTimeStamp(NULL_STRING));
    }

    // 测试未来日期
    @Test
    public void testIsAfterNowWithFutureDate() {
        assertTrue(DataTimeUtil.isAfterNow(FUTURE_DATE));
    }

    // 测试过去日期
    @Test
    public void testIsAfterNowWithPastDate() {
        assertFalse(DataTimeUtil.isAfterNow(PAST_DATE));
    }

    // 测试无效日期格式
    @Test
    public void testIsAfterNowWithInvalidDate() {
        assertFalse(DataTimeUtil.isAfterNow(INVALID_DATE)); // 解析失败应返回 false
//        assertTrue(DataTimeUtil.isAfterNow(INVALID_DATE)); // 解析失败应返回 false
    }

    // 测试空字符串作为输入
    @Test
    public void testIsAfterNowWithEmptyString() {
        assertThrows(IllegalArgumentException.class, () -> DataTimeUtil.isAfterNow(EMPTY_STRING));
    }

    // 测试 null 值作为输入
    @Test
    public void testIsAfterNowWithNull() {
        assertThrows(IllegalArgumentException.class, () -> DataTimeUtil.isAfterNow(NULL_STRING));
    }
}