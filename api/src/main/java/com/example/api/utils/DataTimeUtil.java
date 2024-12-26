package com.example.api.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class DataTimeUtil {

    private static final String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
    private static final String DATE_ONLY_FORMAT = "yyyy-MM-dd";

    public static String getNowTimeString() {
        SimpleDateFormat df = new SimpleDateFormat(DATE_FORMAT);
        return df.format(System.currentTimeMillis());
    }

    public static Long parseTimeStamp(String s) {
        if (s == null || s.isEmpty()) {
            return null; // 或者抛出 IllegalArgumentException
        }

        SimpleDateFormat df = new SimpleDateFormat(DATE_FORMAT);
        try {
            Date date = df.parse(s);
            return date != null ? date.getTime() : null;
        } catch (ParseException e) {
            // Logging the exception
            System.err.println("Invalid date format: " + s);
            return null; // 返回 null 表示解析失败
        }
    }

    public static boolean isAfterNow(String time) {
        if (time == null || time.isEmpty()) {
            return false; // 或者抛出 IllegalArgumentException
        }

        SimpleDateFormat df = new SimpleDateFormat(DATE_ONLY_FORMAT);
        try {
            Date date = df.parse(time);
            return date != null && date.getTime() > System.currentTimeMillis();
        } catch (ParseException e) {
            // Logging the exception
            System.err.println("Invalid date format: " + time);
            return false; // 返回 false 表示解析失败
        }
    }
}
