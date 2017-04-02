package com.voc;

import org.junit.BeforeClass;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

/**
 * Created with IntelliJ IDEA.
 * Author:  WuYujie
 * Email:  coffee377@dingtalk.com
 * Time:  2017/03/29 20:37
 */
public class NumberGameTest {

    private static NumberGame numberGame;

    @BeforeClass
    public static void beforeClass() {
        numberGame = new NumberGameImpl();
    }

    @Test
    public void countBigger() throws Exception {
        // countBigger(“??”,90)应该等于9
        // countBigger(“?9”,90)应该等于1
        // countBigger(“??”,9)应该等于90
        // countBigger(“8?3”,910)应该等于0

        assertEquals(9,numberGame.countBigger("??", 90));
        assertEquals(1,numberGame.countBigger("?9", 90));
        assertEquals(90,numberGame.countBigger("??", 9));
        assertEquals(0,numberGame.countBigger("8?3", 910));
    }
}