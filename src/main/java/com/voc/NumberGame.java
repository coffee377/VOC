package com.voc;

public interface NumberGame {

    /**
     * @param pattern 通配符文数字字符串，? 代表任意一个一位数字
     * @param target  位数小于等于 pattern 的长度
     * @return 符合 pattern 形式且比 target 大的数的数目
     */
    int countBigger(String pattern, int target);

}
   