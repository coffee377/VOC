package com.voc.common.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 实体基类
 * Created with IntelliJ IDEA.
 * Author:  Wu Yujie
 * Email:  coffee377@dingtalk.com
 * Time:  2017/03/27 21:02
 */
public abstract class BaseEntity implements Serializable {
    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 创建者 ID
     */
    private String createId;

    /**
     * 修改时间
     */
    private Date updateTime;

    /**
     * 修改者 ID
     */
    private String updateId;

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreateId() {
        return createId;
    }

    public void setCreateId(String createId) {
        this.createId = createId;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getUpdateId() {
        return updateId;
    }

    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    @Override
    public String toString() {
        return "createTime=" + createTime +
                ", createId='" + createId + '\'' +
                ", updateTime=" + updateTime +
                ", updateId='" + updateId + '\'';
    }
}
