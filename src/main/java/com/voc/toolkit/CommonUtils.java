package com.voc.toolkit;

import java.awt.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 通用工具类
 * Created with IntelliJ IDEA.
 * Author:  WuYujie
 * Email:  coffee377@dingtalk.com
 * Time:  2016/12/24 22:36
 */
public class CommonUtils {
    private static final String DEFAULT_DATE_PATTERN = "yyyy-MM-dd";
    private static SimpleDateFormat formatter = new SimpleDateFormat(DEFAULT_DATE_PATTERN);

    public static String UUIDName(String fileName) {
        // 获取到文件的后缀名
        String fix = fileName.substring(fileName.lastIndexOf(".") + 1);
        // 通过util中的Date获取当前时间
        Date nowDate = new Date();
        // 格式化时间对象返回字符串
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        fileName = sdf.format(nowDate);
        // 毫秒数,类似于随机数为了避免文件重名
        fileName += System.currentTimeMillis();

        fileName += "." + fix;
        return fileName;
    }

    /**
     * 将字符串的首字母大写
     *
     * @param str 字符串
     * @return String
     */
    public static String capitalize(String str) {
        StringBuilder sb = new StringBuilder();
        if (str != null && str.length() > 0) {
            sb.append(str.substring(0, 1).toUpperCase());
            if (str.length() > 1) {
                sb.append(str.substring(1));
            }
            return sb.toString();
        }
        return str;
    }

    /**
     * 生成随机颜色
     *
     * @return Color
     */
    public static Color getRandomColor() {
        int r = (int) (Math.random() * 256);
        int g = (int) (Math.random() * 256);
        int b = (int) (Math.random() * 256);
        return new Color(r, g, b);
    }

    /**
     * 设置工具类使用的时间日期格式化样式
     *
     * @param pattern 时间格式
     */
    public static void setDateFormatPattern(String pattern) {
        formatter = new SimpleDateFormat(pattern);
    }

    /**
     * 将日期格式化为指定格式的字符串
     *
     * @param date Date
     * @return 时间字符串
     */
    public static String formatDateToString(Date date) {
        return formatter.format(date);
    }

    /**
     * 将日期时间字符串格式化为日期对象
     *
     * @param str 时间字符串
     * @return Date
     */
    public static Date parseStringToDate(String str) {
        try {
            return formatter.parse(str);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将字符串值按指定的类型转换成转换成对象
     *
     * @param elemType 类型
     * @param value    字符串值
     */
    public static Object changeStringToObject(Class<?> elemType, String value) {
        Object tempObj = value;
        if (elemType == int.class || elemType == Integer.class) {
            tempObj = Integer.parseInt(value);
        } else if (elemType == long.class || elemType == Long.class) {
            tempObj = Long.parseLong(value);
        } else if (elemType == double.class || elemType == Double.class) {
            tempObj = Double.parseDouble(value);
        } else if (elemType == float.class || elemType == Float.class) {
            tempObj = Float.parseFloat(value);
        } else if (elemType == boolean.class || elemType == Boolean.class) {
            tempObj = Boolean.parseBoolean(value);
        } else if (elemType == Date.class) {
            tempObj = parseStringToDate(value);
        }
        return tempObj;
    }

    /**
     * 获取文件的扩展名
     *
     * @param filename 文件名
     * @return 文件扩展名
     */
    public static String getFileSuffix(String filename) {
        int index = filename.lastIndexOf(".");
        return index > 0 ? filename.substring(index) : "";
    }

}
