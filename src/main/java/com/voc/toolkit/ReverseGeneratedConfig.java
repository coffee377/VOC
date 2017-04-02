package com.voc.toolkit;

import com.baomidou.mybatisplus.generator.InjectionConfig;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * MyBatis Plus 反向生成自定义配置
 * Created with IntelliJ IDEA.
 * Author:  WuYujie
 * Email:  coffee377@dingtalk.com
 * Time:  2017/03/29 00:52
 */
public class ReverseGeneratedConfig extends InjectionConfig {
    /**
     * 开发工具
     */
    private String developerKits;

    /**
     * 作者
     */
    private String author;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 创建时间
     */
    private String createTime;

    public String getDeveloperKits() {
        return developerKits;
    }

    public void setDeveloperKits(String developerKits) {
        this.developerKits = developerKits;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    @Override
    public void initMap() {
        Map<String, Object> map = new HashMap<>();
        map.put("developerKits", developerKits);
        map.put("author", author);
        map.put("email", email);
        if (null == createTime || "".equals(createTime)){
            String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
            map.put("createTime", date);
        } else {
            map.put("createTime", createTime);
        }
        this.setMap(map);
    }
}
