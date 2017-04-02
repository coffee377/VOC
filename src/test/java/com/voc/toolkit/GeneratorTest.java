package com.voc.toolkit;

import com.baomidou.mybatisplus.generator.AutoGenerator;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * MyBatis Plus 反向生成
 * Created with IntelliJ IDEA.
 * Author:  Wu Yujie
 * Email:  coffee377@dingtalk.com
 * Time:  2017/03/28 23:52
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-mybatisPlus-reverseGenerated.xml"})
public class GeneratorTest {

    @Resource
    private AutoGenerator autoGenerator;

    @Test
    public void generatorCode() throws Exception {
        autoGenerator.execute();
    }

}