//package com.voc.system.dao;
//
//import com.voc.system.entity.Role;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.test.annotation.Rollback;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.transaction.annotation.Transactional;
//
//import javax.annotation.Resource;
//import java.util.Date;
//
///**
// * Created with IntelliJ IDEA.
// * Author:  Wu Yujie
// * Email:  coffee377@dingtalk.com
// * Time:  2017/03/30 21:29
// */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration({"classpath:spring/spring-main.xml"})
//@Transactional
//@Rollback(false)
//public class RoleDaoTest {
//    @Resource
//    private RoleDao roleDao;
//
//    @Test
//    public void insert() throws Exception {
//        Role role = new Role();
//        role.setRoleId("2");
//        role.setRoleName("超级管理员");
//        role.setRoleKey("superAdmin");
//        role.setStatus(0);
//        role.setCreateTime(new Date());
//        role.setDescription("系统最大权限用户");
//        roleDao.insert(role);
//    }
//
//    @Test
//    public void update() throws Exception {
//        Role role = roleDao.selectById(1);
//        role.setRoleKey(role.getRoleKey().toLowerCase());
//        roleDao.updateById(role);
//    }
//}