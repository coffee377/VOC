package com.voc;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Author:  WuYujie
 * Email:  coffee377@dingtalk.com
 * Time:  2017/03/29 20:37
 */
public class NumberGameImpl implements NumberGame {
    private final static char QUESTION_MARK = '?';

    @Override
    public int countBigger(String pattern, int target) {
        if (!bitLess(pattern, target)) {
            throw new RuntimeException("目标数字位数必须小于等于通配符数字的长度");
        }
        List<String> recursive = recursive(pattern, new ArrayList<String>());
        List<Integer> bigger = new ArrayList<>();
        for (String s : recursive) {
            int temp = Integer.parseInt(s);
            if (temp > target) {
                bigger.add(temp);
            }
        }
        return bigger.size();
    }

    /**
     * 递归处理通配符文数字字符串
     *
     * @param pattern 通配符文数字字符串，? 代表任意一个一位数字
     * @param result  递归集合参数
     * @return 符合条件的数字字符串集合
     */
    private List<String> recursive(String pattern, List<String> result) {
        if (hasOneMark(pattern)) {
            for (int i = 0; i < 10; i++) {
                result.add(pattern.replaceFirst(String.valueOf("\\" + QUESTION_MARK), String.valueOf(i)));
            }
        } else if (hasMoreMark(pattern)) {
            for (int i = 0; i < 10; i++) {
                recursive(pattern.replaceFirst(String.valueOf("\\" + QUESTION_MARK), String.valueOf(i)), result);
            }
        } else {
            result.add(pattern);
        }
        return result;
    }

    /**
     * 目标数字位数必须是否小于等于通配符数字的长度
     *
     * @param pattern 通配符文数字字符串，? 代表任意一个一位数字
     * @param target  位数小于等于pattern的长度
     * @return boolean
     */
    private boolean bitLess(String pattern, int target) {
        return null != pattern && !"".equals(pattern) && String.valueOf(target).length() <= pattern.length();
    }

    /**
     * 是否含有一个通配符
     *
     * @param pattern 通配符文数字字符串
     * @return 含有一个返回 true ,否则返回 false
     */
    private boolean hasOneMark(String pattern) {
        return countMark(pattern) == 1;
    }

    /**
     * 至少含有两个通配符（>1）
     *
     * @param pattern 通配符文数字字符串
     * @return 大于 1 返回 true ,否则返回 false
     */
    private boolean hasMoreMark(String pattern) {
        return countMark(pattern) > 1;
    }

    /**
     * 计算占位符个数
     *
     * @param pattern 通配符文数字字符串，? 代表任意一个一位数字
     * @return 占位符数目
     */
    private int countMark(String pattern) {
        int num = 0;
        for (int i = 0; i < pattern.length(); i++) {
            if (pattern.charAt(i) == QUESTION_MARK) {
                num++;
            }
        }
        return num;
    }
}
