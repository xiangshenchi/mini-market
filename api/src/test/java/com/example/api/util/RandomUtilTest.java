package com.example.api.util;

import com.example.api.utils.RandomUtil;
import org.junit.Test;
import static org.junit.Assert.*;

public class RandomUtilTest {

    @Test
    public void testNext() {
        // 调用 next() 方法多次，检查返回值的格式和长度
        for (int i = 0; i < 100; i++) {
            String randomString = RandomUtil.next();
            assertNotNull("Random string should not be null", randomString);
            assertEquals("Random string should have a length of 6", 6, randomString.length());

            // 检查每个字符是否都是数字
            for (char c : randomString.toCharArray()) {
                assertTrue("Each character should be a digit", Character.isDigit(c));
            }
        }
    }

    @Test
    public void testRandomness() {
        // 确保多次调用 next() 方法返回的值不总是相同
        String firstCall = RandomUtil.next();
        String secondCall = RandomUtil.next();

        // 由于是随机生成的，不能保证绝对不相同，但可以检查它们是否有可能相同
        assertNotEquals("Subsequent calls to next() should produce different results", firstCall, secondCall);
    }
}
