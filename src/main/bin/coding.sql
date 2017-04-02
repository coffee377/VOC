/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50621
Source Host           : localhost:227
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-03-16 00:09:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(50) DEFAULT '' COMMENT 'title',
  `classify` int(11) DEFAULT '-1' COMMENT 'classify',
  `image` varchar(255) DEFAULT '' COMMENT 'image',
  `content` longtext COMMENT 'content',
  `description` varchar(255) DEFAULT '' COMMENT 'description',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='`about`';

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('17', '喜讯：蔲丁课程钜惠来袭 史无前例席卷全国 平均薪资12729元', '0', 'upload/about/201703151517511489562271635.jpg', '', '');
INSERT INTO `about` VALUES ('18', '测试轮播', '0', 'upload/about/201703151520071489562407303.jpg', '<p><span style=\"text-decoration: underline;\"><span style=\"text-decoration: underline; color: rgb(192, 0, 0);\">测试2<span style=\"text-decoration: underline; color: rgb(192, 0, 0);\"></span></span></span><br/></p>', '测试2');
INSERT INTO `about` VALUES ('19', '喜讯：深圳JavaEE首期班毕业两周100%就业', '0', 'upload/about/201703151523591489562639133.jpg', '', '');
INSERT INTO `about` VALUES ('21', '爱人者 人恒爱之 救救李乐英那患有白血病爸爸的捐款倡议书', '0', 'upload/about/201703151524141489562654183.jpg', '', '');
INSERT INTO `about` VALUES ('39', 'HTML5 培训开班啦', '1', 'upload/about/201703151543421489563822869.jpg', '', '');
INSERT INTO `about` VALUES ('40', '程序员的故事', '2', 'upload/about/201703151544341489563874632.jpg', '', '');
INSERT INTO `about` VALUES ('41', 'PHP 行业概况', '3', 'upload/about/201703151544531489563893354.jpg', '', '');
INSERT INTO `about` VALUES ('42', 'JavaEE 开班啦', '1', 'upload/about/201703151545411489563941355.jpg', '', '');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'cId',
  `cs_id` int(50) DEFAULT NULL COMMENT 'csId',
  `c_name` varchar(50) DEFAULT NULL COMMENT 'cName',
  `begins_date` date DEFAULT NULL COMMENT 'beginsDate',
  `status` int(11) DEFAULT NULL COMMENT 'status',
  `capacity` int(11) DEFAULT NULL COMMENT 'capacity',
  `current_num` int(11) DEFAULT NULL COMMENT 'currentNum',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='`course`';

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '1', 'Android 培训就业班', '2015-11-10', '0', '-1', '-1');
INSERT INTO `course` VALUES ('2', '5', 'Java 培训就业班', '2015-11-10', '-1', '-1', '-1');
INSERT INTO `course` VALUES ('3', '1', 'Android 培训就业班', '2016-02-29', '1', '-1', '-1');
INSERT INTO `course` VALUES ('4', '5', 'Java 培训就业班', '2015-12-07', '2', '-1', '-1');
INSERT INTO `course` VALUES ('5', '5', 'Java 培训就业班', '2016-02-22', '-1', '-1', '-1');
INSERT INTO `course` VALUES ('6', '1', 'Android 培训就业班', '2015-12-07', '-1', '-1', '-1');
INSERT INTO `course` VALUES ('7', '5', 'Java 培训就业班', '2016-03-28', '-1', '-1', '-1');
INSERT INTO `course` VALUES ('8', '5', 'Java 培训就业班', '2016-05-16', '-1', '-1', '-1');
INSERT INTO `course` VALUES ('9', '3', 'UI 培训就业班', '2016-07-18', '-1', '-1', '-1');
INSERT INTO `course` VALUES ('10', '5', 'Java 培训就业班', '2016-07-18', '-1', '-1', '-1');
INSERT INTO `course` VALUES ('11', '1', 'Android 培训就业班', '2016-07-25', '-1', '-1', '-1');
INSERT INTO `course` VALUES ('12', '5', 'Java 培训就业班', '2016-07-25', '-1', '-1', '-1');
INSERT INTO `course` VALUES ('18', '5', 'Java 中级', '2017-03-06', '-1', '5', '2');
INSERT INTO `course` VALUES ('20', '5', 'Java 高级教程', '2017-04-08', '0', '30', '0');
INSERT INTO `course` VALUES ('21', '5', 'Java 基础', '2017-03-15', '-1', '40', '0');
INSERT INTO `course` VALUES ('22', '3', 'UI 基础培训', '2017-03-22', '0', '35', '1');
INSERT INTO `course` VALUES ('23', '4', 'PHP 基础培训', '2017-03-31', '-1', '35', '35');
INSERT INTO `course` VALUES ('24', '3', 'UI 中级培训', '2017-02-27', '2', '35', '35');
INSERT INTO `course` VALUES ('25', '6', '大数据入门教程', '2017-03-20', '0', '15', '0');
INSERT INTO `course` VALUES ('26', '2', 'HTML5 高级开发', '2017-04-10', '-1', '30', '0');

-- ----------------------------
-- Table structure for course_sys
-- ----------------------------
DROP TABLE IF EXISTS `course_sys`;
CREATE TABLE `course_sys` (
  `cs_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'csId',
  `cs_name` varchar(50) DEFAULT '' COMMENT 'csName',
  `nick_name` varchar(50) DEFAULT '' COMMENT 'nickName',
  `description` varchar(50) DEFAULT '' COMMENT 'description',
  PRIMARY KEY (`cs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='`course_system`';

-- ----------------------------
-- Records of course_sys
-- ----------------------------
INSERT INTO `course_sys` VALUES ('1', 'android', 'Android', '安卓培训');
INSERT INTO `course_sys` VALUES ('2', 'html5', 'HTML5', 'WEB前端+HTML5培训2');
INSERT INTO `course_sys` VALUES ('3', 'ui', 'UI', '产品经理+UI交互设计培训');
INSERT INTO `course_sys` VALUES ('4', 'php', 'PHP', 'PHP+服务器集群');
INSERT INTO `course_sys` VALUES ('5', 'java', 'JAVA', 'JavaEE培训');
INSERT INTO `course_sys` VALUES ('6', 'big_data', '大数据', '大数据开发培训');
INSERT INTO `course_sys` VALUES ('7', 'python', 'Python', 'Python培训');
INSERT INTO `course_sys` VALUES ('8', 'ios', 'IOS', 'IOS培训');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `classify` varchar(50) DEFAULT NULL COMMENT 'classify',
  `name` varchar(50) DEFAULT NULL COMMENT 'name',
  `value` int(11) DEFAULT NULL COMMENT 'value',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='`dictionary`';

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', 'about', '轮播', '0');
INSERT INTO `dictionary` VALUES ('2', 'about', '新闻', '1');
INSERT INTO `dictionary` VALUES ('3', 'about', '故事', '2');
INSERT INTO `dictionary` VALUES ('4', 'about', '动态', '3');
INSERT INTO `dictionary` VALUES ('5', 'status', '禁用', '-1');
INSERT INTO `dictionary` VALUES ('6', 'status', '开班', '0');
INSERT INTO `dictionary` VALUES ('7', 'status', '抢座', '1');
INSERT INTO `dictionary` VALUES ('8', 'status', '爆满', '2');

-- ----------------------------
-- Table structure for emp_info
-- ----------------------------
DROP TABLE IF EXISTS `emp_info`;
CREATE TABLE `emp_info` (
  `emp_id` bigint(15) NOT NULL AUTO_INCREMENT COMMENT '受雇ID',
  `stu_id` bigint(15) DEFAULT NULL COMMENT '学员ID',
  `enterprise` varchar(255) DEFAULT NULL COMMENT '入职企业',
  `mon_salary` double(16,4) DEFAULT NULL COMMENT '月薪',
  `address` varchar(255) DEFAULT NULL COMMENT '地点',
  `hire_date` date DEFAULT NULL COMMENT '受雇日期',
  `emp_way` varchar(20) DEFAULT NULL COMMENT '就业方式',
  PRIMARY KEY (`emp_id`),
  KEY `emp_id` (`emp_id`),
  KEY `fk_stu_id` (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8 COMMENT='`就业信息表`';

-- ----------------------------
-- Records of emp_info
-- ----------------------------
INSERT INTO `emp_info` VALUES ('64', '1', '中软国际-科大讯飞项目组', '4000.0000', '上海', '2017-03-14', '自主就业');
INSERT INTO `emp_info` VALUES ('65', '2', '北京湛腾科技有限公司', '4000.0000', '北京', null, null);
INSERT INTO `emp_info` VALUES ('66', '3', '和姐夫做生意', '5000.0000', '长春', null, null);
INSERT INTO `emp_info` VALUES ('73', '10', '上海德颐网络技术有限公司', '7000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('74', '11', '上海明匠智能系统有限公司', '7000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('75', '12', '上海玩具帮网络科技有限公司', '6500.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('76', '13', '上海冈三华大计算机系统有限公司', '5000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('77', '14', '时光客栈（天津）网络科技有限公司', '4000.0000', '天津', null, null);
INSERT INTO `emp_info` VALUES ('78', '15', '离职', null, '杭州', null, null);
INSERT INTO `emp_info` VALUES ('79', '16', '中国联通网络通讯有限公司六安分公司', '3500.0000', '六安', null, null);
INSERT INTO `emp_info` VALUES ('80', '17', null, '4000.0000', null, null, null);
INSERT INTO `emp_info` VALUES ('81', '18', '合肥中软卓越信息技术有限公司', '4000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('82', '19', '伟本机电上海有限公司', '5500.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('83', '20', '上海悠梦网络公司', '5500.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('84', '21', '上海葵谷金融信息服务有限公司', '5000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('85', '22', '上海新觉信息科技有限公司', '4000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('86', '23', '北京科蓝软件系统股份有限公司深圳公司', '7000.0000', '深圳', null, null);
INSERT INTO `emp_info` VALUES ('87', '24', '科大国创', '4500.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('88', '25', '南京润和信息系统有限公司', '5000.0000', '南京', null, null);
INSERT INTO `emp_info` VALUES ('89', '26', '安徽时旭智能科技有限公司', '4000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('90', '27', '安徽时旭智能科技有限公司', '4000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('91', '28', '上海游戏多网络科技股份有限公司', '7000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('92', '29', '上海乐畅信息技术有限公司', '7000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('93', '30', '中彩信息科技研究院（上海）', '6500.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('94', '31', '安徽锦佳信息技术有限公司', '3000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('95', '32', '南京润和信息系统有限公司', '5500.0000', '南京', null, null);
INSERT INTO `emp_info` VALUES ('96', '33', '北京中软国际ETC', '7000.0000', '北京', null, null);
INSERT INTO `emp_info` VALUES ('97', '34', '目前暂时不就业', null, null, null, null);
INSERT INTO `emp_info` VALUES ('98', '35', '万家集团杭州孔方宝有限公司', '5000.0000', '杭州', null, null);
INSERT INTO `emp_info` VALUES ('99', '36', '上海今远软件有限公司', '6000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('100', '37', '万泰集团旗下蜂翼信息科技有限公司/北京科蓝软件系统股份有限公司深圳公司', '7000.0000', '深圳', null, null);
INSERT INTO `emp_info` VALUES ('101', '38', '合肥信息技术服务有限公司', '3000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('102', '39', '上海睿民互联网科技有限公司', '5000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('103', '40', '上海新致软件有限公司', '4500.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('104', '41', '北京步峰信息技术有限公司', '5800.0000', null, null, null);
INSERT INTO `emp_info` VALUES ('105', '42', '上海勤凯信息科技有限公司\n', '4000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('106', '43', '深圳市艾派应用系统有限公司', '4500.0000', '深圳', null, null);
INSERT INTO `emp_info` VALUES ('107', '44', '深圳市北辰德科技有限公司', '4500.0000', '深圳', null, null);
INSERT INTO `emp_info` VALUES ('108', '45', '上海睿民互联网科技有限公司', '3500.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('109', '46', '北京智库泉', null, null, null, null);
INSERT INTO `emp_info` VALUES ('110', '47', '杭州悉尔科技有限公司', '5000.0000', '杭州', null, null);
INSERT INTO `emp_info` VALUES ('111', '48', '安徽博约科技有限公司', '3500.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('112', '49', '南京', '6000.0000', '南京', null, null);
INSERT INTO `emp_info` VALUES ('113', '50', '上海安硕信息科技有限公司', '4500.0000', '南京', null, null);
INSERT INTO `emp_info` VALUES ('114', '51', '深圳金亚太科技有限公司', '4500.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('115', '52', ' 宏昇科技有限公司', '4000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('116', '53', '深圳金亚太科技有限公司', '4000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('117', '54', '上海安硕信息科技有限公司', '4500.0000', '南京', null, null);
INSERT INTO `emp_info` VALUES ('118', '55', '南京紫津融畅信息科技服务有限公司', '5000.0000', '南京', null, null);
INSERT INTO `emp_info` VALUES ('119', '56', '伺动常客公共关系咨询（上海）', '7000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('120', '57', null, '4500.0000', '昆山', null, null);
INSERT INTO `emp_info` VALUES ('121', '58', '安徽华研电子科技有限公司', '3000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('122', '59', '安徽奔越网络科技有限公司', '4000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('123', '60', '南京聚奢网络科技有限公司', '4000.0000', '南京', null, null);
INSERT INTO `emp_info` VALUES ('124', '61', '上海浩宜信息科技有限公司', '6000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('125', '62', '上海睿民互联网科技有限公司', '5000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('126', '63', '昆山农商行', '7000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('127', '64', '上海中信信息发展有限公司', '7500.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('128', '65', '上海友和道通集团', '4500.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('129', '66', '上海中科软科技有限公司', '5000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('130', '67', '北京科蓝软件系统股份有限公司合肥公司', '5500.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('131', '68', '安徽华博胜讯信息科技股份有限公司', '4000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('132', '69', ' 悦易信息网络科技有限公司', '5500.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('133', '70', '上海屹通信息科技发展有限公司合肥分公司', '4000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('134', '71', '杭州信雅达科技有限公司', '5000.0000', '杭州', null, null);
INSERT INTO `emp_info` VALUES ('135', '72', '上海屹通信息科技发展有限公司合肥分公司', '4000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('136', '73', '伏泰信息科技有限公司', '3500.0000', '苏州', null, null);
INSERT INTO `emp_info` VALUES ('137', '74', '上海晟鸿信息科技有限公司', '8000.0000', '上海', null, null);
INSERT INTO `emp_info` VALUES ('138', '75', '中寰卫星导航通信合肥公司', '4000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('139', '76', '杭州瑞利声电技术公司', '5000.0000', '芜湖', null, null);
INSERT INTO `emp_info` VALUES ('140', '77', '安徽七月无限网络科技有限公司', '4500.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('141', '78', '深圳市快乐淳科技有限公司', '9000.0000', '深圳', null, null);
INSERT INTO `emp_info` VALUES ('142', '79', '安徽好牛信息科技有限公司', '4000.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('143', '80', '国华光电技术有限公司', '3500.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('144', '81', '国华光电技术有限公司', '3500.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('145', '82', '佛山天地行科技有限公司', '7000.0000', '佛山', null, null);
INSERT INTO `emp_info` VALUES ('146', '83', 'ViVo南京公司', '7000.0000', '南京', null, null);
INSERT INTO `emp_info` VALUES ('147', '84', '安徽航天信息有限公司', '4500.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('148', '85', '安徽航天信息有限公司', '4500.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('149', '86', '安徽航天信息有限公司', '4500.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('150', '87', '安徽天勤盛创信息科技', '4500.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('151', '88', '安徽天勤盛创信息科技', '4100.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('152', '89', '安徽兆尹信息科技股份有限公司', '3500.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('153', '90', '安徽兆尹信息科技股份有限公司', '3200.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('154', '91', '安徽兆尹信息科技股份有限公司', '6000.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('155', '92', '安徽兆尹信息科技股份有限公司', '4000.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('156', '93', '北京慧博云通科技股份有限公司', '6000.0000', '北京', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('157', '94', '杭州西软信息技术有限公司', '5500.0000', '北京', null, '自主就业');
INSERT INTO `emp_info` VALUES ('158', '95', '合肥为民电源有限公司', '4000.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('159', '96', '科大国创', '4300.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('160', '97', '南京云问网络科技有限公司', '5000.0000', '南京', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('161', '98', '中文在线杭州分公司', '4500.0000', '杭州', null, '自主就业');
INSERT INTO `emp_info` VALUES ('162', '99', '上海安硕信息技术股份有限公司（合肥）', '4500.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('163', '100', '上海安硕信息技术股份有限公司（合肥）', '4500.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('164', '101', '上海安硕信息技术股份有限公司（合肥）', '4500.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('165', '102', '上海安硕信息技术股份有限公司（合肥）', '4500.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('166', '103', '上海睿民互联网科技有限公司', '5500.0000', '上海', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('167', '104', '汉高信息科技有限公司', '4200.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('168', '105', '讯飞联创信息科技有限公司(芜湖)', '3500.0000', '芜湖', null, '自主就业');
INSERT INTO `emp_info` VALUES ('169', '106', '中软国际科技服务有限公司-华为业务线（杭州）', '5500.0000', '杭州', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('170', '107', '中软国际业务线-华腾软件（上海）', '8200.0000', '上海', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('171', '108', '中软国际业务线-华腾软件（上海）', '8000.0000', '上海', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('172', '109', null, null, null, null, '自主就业');
INSERT INTO `emp_info` VALUES ('173', '110', '南京擎天科技', null, '南京', null, '自主就业');
INSERT INTO `emp_info` VALUES ('174', '111', '用友上海分公司', null, '上海', null, '自主就业');
INSERT INTO `emp_info` VALUES ('175', '112', '常州英贝通信技术有限公司', '6000.0000', '上海', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('176', '113', '南京中软', '5000.0000', '南京', null, '自主就业');
INSERT INTO `emp_info` VALUES ('177', '114', '安徽航天信息有限公司', '4200.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('179', '116', null, null, null, null, '自主就业');
INSERT INTO `emp_info` VALUES ('180', '117', '上海久雅信息科技有限公司', '6250.0000', '上海', null, '自主就业');
INSERT INTO `emp_info` VALUES ('181', '118', '常州英贝通信技术有限公司', '6000.0000', '上海', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('182', '119', '中软国际业务线-华为业务（南京）', '5500.0000', '南京', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('183', '120', '北京西达信息技术有限公司（杭州）', '5500.0000', '杭州', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('184', '121', '南京绛门通讯科技股份有限公司', '5800.0000', '南京', null, '自主就业');
INSERT INTO `emp_info` VALUES ('185', '122', '浙江用友软件有限公司', '5100.0000', '杭州', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('186', '123', '南京剑盛科技发展有限公司（江苏银行项目组）', '5000.0000', '南京', null, '自主就业');
INSERT INTO `emp_info` VALUES ('187', '124', '江苏新大陆科技有限公司', '5000.0000', '南京', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('188', '125', '上海金仕达卫宁软件科技有限公司（武汉）', '4000.0000', '武汉', null, '自主就业');
INSERT INTO `emp_info` VALUES ('189', '126', '上海杰狮信息技术有限公司', '5500.0000', '上海', null, '自主就业');
INSERT INTO `emp_info` VALUES ('190', '127', '上海百林通信网络科技服务股份有限公司', '6000.0000', '上海', null, '自主就业');
INSERT INTO `emp_info` VALUES ('191', '128', '上海淘略数据处理有限公司', '5500.0000', '上海', null, '自主就业');
INSERT INTO `emp_info` VALUES ('192', '129', '南京绛门通讯科技股份有限公司', '5800.0000', '南京', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('193', '130', '安徽航天信息有限公司', '4200.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('194', '131', '北京西达信息技术有限公司（杭州）', '5500.0000', '杭州', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('195', '132', '南京远光广安有限公司', '4000.0000', '南京', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('196', '133', '安徽商信政通信息技术股份有限公司', '4000.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('197', '134', '杭州三汇数字信息技术有限公司', '5200.0000', '杭州', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('198', '135', '安徽商信政通信息技术股份有限公司', '4000.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('199', '136', '北京步峰信息技术有限公司', '4500.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('200', '137', '南京旭品信息科技有限公司', '5000.0000', '南京', null, '自主就业');
INSERT INTO `emp_info` VALUES ('201', '138', '上海维恩孛特信息技术有限公司', '6000.0000', '上海', null, '自主就业');
INSERT INTO `emp_info` VALUES ('202', '139', '安徽胜利科技发展有限公司', '4000.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('203', '140', '安徽航天信息有限公司', '4200.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('204', '141', '安徽亿信互联科技有限公司', '3000.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('205', '142', '华亿生态园林股份有限公司', '3000.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('206', '143', '合肥讯百软件有限公司', '3500.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('207', '144', '上海航动科技有限公司', '5000.0000', '上海', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('208', '145', '上海航动科技有限公司', '5000.0000', '上海', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('209', '146', '安徽时旭智能科技有限公司', '3500.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('210', '147', '苏州革新百集传媒科技有限公司', '6000.0000', '苏州', null, '自主就业');
INSERT INTO `emp_info` VALUES ('211', '148', '杭州跟着哥哥做淘宝', '5500.0000', '杭州', null, '自主就业');
INSERT INTO `emp_info` VALUES ('212', '149', '合肥品恩智能科技有限公司', '5000.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('213', '150', '上海成思信息科技有限公司', '6000.0000', '上海', null, '自主就业');
INSERT INTO `emp_info` VALUES ('214', '151', '杭州惟勤科技有限公司', '5500.0000', '杭州', null, '自主就业');
INSERT INTO `emp_info` VALUES ('215', '152', '0551房产公司的子公司', '4000.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('216', '153', '杭州它石车联网数据中心有限公司', '6000.0000', '杭州', null, '自主就业');
INSERT INTO `emp_info` VALUES ('217', '154', '宏昇科技（合肥）', '4500.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('218', '155', '安徽科力信息产业有限责任公司', '5500.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('219', '156', '安徽鼎尖文化传媒有限公司', '4500.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('221', '158', '南京鑫众力软件', '5500.0000', '南京', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('222', '159', '安徽中科大国祯信息科技有限公司', '4400.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('223', '160', '安徽航天信息有限公司', '4200.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('224', '161', '上海如旺电子商务有限公司', '6000.0000', '上海', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('225', '162', '安徽经邦软件技术有限公司', '3000.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('226', '163', '安徽易联众信息技术有限公司 ', '4500.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('227', '164', '上海博科资讯股份有限公司', '7000.0000', '上海', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('228', '165', '安徽航天信息有限公司', '4200.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('229', '166', '上海文沥信息技术有限公司（合肥）', '5000.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('230', '167', '安徽航天信息有限公司', '4200.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('231', '168', '上海博科资讯股份有限公司', '7000.0000', '上海', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('232', '169', '上海屹通信息科技发展有限公司（合肥）', '5000.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('233', '170', '波轩好网络科技有限公司', '5000.0000', '宁波', null, '自主就业');
INSERT INTO `emp_info` VALUES ('234', '171', '安徽经邦软件技术有限公司', '3000.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('235', '172', '安徽百诚慧通科技有限公司 ', '3500.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('236', '173', '上海文沥信息技术有限公司（合肥）', '4500.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('237', '174', '恒生芸泰安徽运营中心研发 ', '3500.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('238', '175', '上海华到信息科技有限公司', '5500.0000', '上海', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('239', '176', '东华软件股份公司', '4000.0000', '马鞍山', null, null);
INSERT INTO `emp_info` VALUES ('240', '177', '合肥华迪信息技术有限公司', '3500.0000', '合肥', null, null);
INSERT INTO `emp_info` VALUES ('241', '178', '合肥小指信息技术有限公司', '6500.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('242', '179', '安徽山立信息工程有限公司', '4000.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('243', '180', '北京智游联动科技有限公司', '4000.0000', '溧阳', null, '自主就业');
INSERT INTO `emp_info` VALUES ('244', '181', '安徽兴博远实信息科技有限公司 ', '3000.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('245', '182', '卫宁健康科技集团股份有限公司', '4200.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('246', '183', '安徽航天信息有限公司', '4200.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('247', '184', null, null, '北京', null, null);
INSERT INTO `emp_info` VALUES ('248', '185', null, null, '合肥', null, null);
INSERT INTO `emp_info` VALUES ('249', '186', '安徽易联众信息技术有限公司 ', '4200.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('250', '187', null, null, '合肥', null, null);
INSERT INTO `emp_info` VALUES ('251', '188', null, null, '合肥', null, null);
INSERT INTO `emp_info` VALUES ('252', '189', null, null, '上海', null, null);
INSERT INTO `emp_info` VALUES ('253', '190', '埃森哲', '6000.0000', '南京', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('254', '191', '合肥弗乐斯传媒有限公司', '3500.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('255', '192', '上海宜喆智能科技有限公司', null, '上海', null, '自主就业');
INSERT INTO `emp_info` VALUES ('256', '193', '安徽易联众信息技术有限公司 ', '3800.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('257', '194', '科大国创', '4300.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('258', '195', '安徽博约信息科技股份有限公司', '3800.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('259', '196', '上海杰狮信息技术有限公司', '5500.0000', '上海', null, '自主就业');
INSERT INTO `emp_info` VALUES ('260', '197', null, null, '合肥', null, null);
INSERT INTO `emp_info` VALUES ('261', '198', '卫宁健康科技集团股份有限公司', '4800.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('262', '199', '卫宁健康科技集团股份有限公司', '4800.0000', '合肥', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('263', '200', '中新网络信息安全股份有限公司', '5000.0000', '合肥', null, '自主就业');
INSERT INTO `emp_info` VALUES ('264', '201', '浙江用友软件有限公司', '5300.0000', '杭州', null, null);
INSERT INTO `emp_info` VALUES ('265', '202', null, null, '杭州', null, null);
INSERT INTO `emp_info` VALUES ('266', '203', '浙江用友软件有限公司', '5300.0000', '杭州', null, '推荐就业');
INSERT INTO `emp_info` VALUES ('267', '204', null, null, '杭州', null, null);
INSERT INTO `emp_info` VALUES ('272', '209', '合肥迪森网络科技', null, null, null, null);
INSERT INTO `emp_info` VALUES ('274', '211', '合肥迪森网络科技', null, null, null, null);
INSERT INTO `emp_info` VALUES ('311', '248', '南京埃森哲华为业务线', null, null, null, null);
INSERT INTO `emp_info` VALUES ('326', '263', '上海新致软件有限公司', null, null, null, null);
INSERT INTO `emp_info` VALUES ('338', '275', '北京慧博云通股份有限公司', null, null, null, null);
INSERT INTO `emp_info` VALUES ('379', '316', '上海新致软件有限公司', null, null, null, null);
INSERT INTO `emp_info` VALUES ('400', null, '铜陵股份有限贵公司', '6000.0000', '铜陵', '2017-03-07', '推荐就业');
INSERT INTO `emp_info` VALUES ('401', null, '南京帆软', '6000.0000', '南京', '2017-03-20', '自主就业');
INSERT INTO `emp_info` VALUES ('402', null, 'ss', '6000.0000', '桃花岛', '2017-03-06', '自主就业');
INSERT INTO `emp_info` VALUES ('404', null, null, null, null, null, '自主就业');
INSERT INTO `emp_info` VALUES ('405', null, null, null, '南京', null, '自主就业');
INSERT INTO `emp_info` VALUES ('409', '900', '安徽中软国际有限公司', '3000.0000', '黄山', '2017-02-27', '自主就业');
INSERT INTO `emp_info` VALUES ('410', '901', '安徽中软国际有限公司', '3000.0000', '合肥', '2017-02-27', '自主就业');

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `序号` bigint(15) NOT NULL AUTO_INCREMENT,
  `班级` varchar(255) DEFAULT NULL,
  `姓名` varchar(255) DEFAULT NULL,
  `性别` varchar(255) DEFAULT NULL,
  `联系电话` varchar(255) DEFAULT NULL,
  `就读/毕业院校` varchar(255) DEFAULT NULL,
  `学历` varchar(255) DEFAULT NULL,
  `专业` varchar(255) DEFAULT NULL,
  `院校毕业时间` varchar(255) DEFAULT NULL,
  `开班时间` varchar(255) DEFAULT NULL,
  `结业时间` varchar(255) DEFAULT NULL,
  `就业城市` varchar(255) DEFAULT NULL,
  `就业方式` varchar(255) DEFAULT NULL,
  `推荐次数` varchar(255) DEFAULT NULL,
  `推荐时间` varchar(255) DEFAULT NULL,
  `公司名称` varchar(255) DEFAULT NULL,
  `所属行业` varchar(255) DEFAULT NULL,
  `公司性质` varchar(255) DEFAULT NULL,
  `公司规模` varchar(255) DEFAULT NULL,
  `公司职位` varchar(255) DEFAULT NULL,
  `是否对口` varchar(255) DEFAULT NULL,
  `实习补贴` varchar(255) DEFAULT NULL,
  `转正薪资` varchar(255) DEFAULT NULL,
  `福利` varchar(255) DEFAULT NULL,
  `备注` varchar(255) DEFAULT NULL,
  `报道时间` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`序号`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('1', 'HFE-JY-AD-20150715-01', '杨森', '男', '15556405226', '安徽国防科技职业学院', '专科', '计算机应用技术', '', '2015/11/', '', '合肥', '', '', '', '中软国际-科大讯飞项目组', '', '', '', 'android开发', '', '2200', '4000', '', '', '');
INSERT INTO `info` VALUES ('2', 'HFE-JY-AD-20150715-01', '王君君', '女', '18063095275', '安徽国防科技职业学院', '大专', '计算机应用', '', '2015/11/', '', '北京', '', '', '', '北京湛腾科技有限公司', '', '', '', '测试', '', '2500', '4000', '', '', '');
INSERT INTO `info` VALUES ('3', 'HFE-JY-AD-20150715-01', '崔益峰', '男', '18655556874', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '长春', '', '', '', '和姐夫做生意', '', '', '', '', '否', '', '5000', '', '', '');
INSERT INTO `info` VALUES ('4', 'HFE-JY-AD-20150715-01', '罗黎军', '男', '18255001473', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '合肥', '', '', '', '中软国际-科大讯飞项目组', '', '', '', '数据库', '是', '2200', '4000', '', '', '');
INSERT INTO `info` VALUES ('5', 'HFE-JY-AD-20150715-01', '杨一帆', '男', '18365284375', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '合肥', '', '', '', '中软国际-科大讯飞项目组', '', '', '', '数据库', '是', '2200', '4000', '', '', '');
INSERT INTO `info` VALUES ('6', 'HFE-JY-AD-20150715-01', '叶磊', '男', '18098377481', '安徽科技学院', '本科', '网路工程', '', '2015/11/', '', '合肥', '', '', '', '宏昇科技', '', '', '', 'android开发', '是', '3600', '4500', '', '2次就业', '');
INSERT INTO `info` VALUES ('7', 'HFE-JY-AD-20150715-01', '程中强', '男', '18365285483', '安徽科技学院', '本科', '计算机科学与技术', '', '2015/11/', '', '南京', '', '', '', '江苏瑞银科技有限公司', '', '', '', 'android开发', '是', '3000', '5000', '', '', '');
INSERT INTO `info` VALUES ('8', 'HFE-JY-AD-20150715-01', '戈传光', '男', '18365284760', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '上海', '', '', '', '上海新致软件有限公司', '', '', '', 'android开发', '是', '3000+包住', '4500', '', '有住宿补贴，转正后全部返还', '');
INSERT INTO `info` VALUES ('9', 'HFE-JY-AD-20150715-01', '邓超飞', '男', '18365284721', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '上海', '', '', '', '上海新致软件有限公司', '', '', '', 'android开发', '是', '3000+包住', '4500', '', '有住宿补贴，转正后全部返还', '');
INSERT INTO `info` VALUES ('10', 'HFE-JY-AD-20150715-01', '龙伟', '男', '18365267087', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '上海', '', '', '', '上海德颐网络技术有限公司', '', '', '', 'android开发', '是', '4000', '7000', '', '', '');
INSERT INTO `info` VALUES ('11', 'HFE-JY-AD-20150715-01', '徐志雄', '男', '15956988705', '安徽科技学院', '本科', '网络工程专业', '', '2015/11/', '', '上海', '', '', '', '上海明匠智能系统有限公司', '', '', '', 'android开发', '是', '5000+饭补400', '7000', '餐补300', '', '');
INSERT INTO `info` VALUES ('12', 'HFE-JY-AD-20150715-01', '胡传斌', '男', '18655081913', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '上海', '', '', '', '上海玩具帮网络科技有限公司', '', '', '', 'android开发', '是', '5000', '6500', '', '', '');
INSERT INTO `info` VALUES ('13', 'HFE-JY-AD-20150715-01', '罗洋', '男', '18365286523', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '上海', '', '', '', '上海冈三华大计算机系统有限公司', '', '', '', 'android开发', '是', '3000', '5000', '', '', '');
INSERT INTO `info` VALUES ('14', 'HFE-JY-AD-20150715-01', '郑轶', '男', '18098382240/15022430958', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '天津', '', '', '', '时光客栈（天津）网络科技有限公司', '', '', '', 'android开发', '是', '2500-3000', '4000', '', '', '');
INSERT INTO `info` VALUES ('15', 'HFE-JY-AD-20150715-01', '洪舒春', '男', '18365289451', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '杭州', '', '', '', '离职', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('16', 'HFE-JY-AD-20150715-01', '韩丰', '男', '18505641992', '安徽科技学院', '本科', '计算机科学与技术', '', '2015/11/', '', '六安', '', '', '', '中国联通网络通讯有限公司六安分公司', '', '', '', '通讯网络工程师', '否', '', '3500', '', '', '');
INSERT INTO `info` VALUES ('17', 'HFE-JY-AD-20150715-01', '马中生', '男', '18856420017', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '', '', '', '', '', '', '', '', '', '是', '', '4000', '', '在学校答辩', '');
INSERT INTO `info` VALUES ('18', 'HFE-JY-AD-20150715-01', '董奇童', '男', '18726061721', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '合肥', '', '', '', '合肥中软卓越信息技术有限公司', '', '', '', '讲师助教', '是', '2800', '4000', '', '', '');
INSERT INTO `info` VALUES ('19', 'HFE-JY-AD-20150715-01', '张笑', '男', '18098397451', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '上海', '', '', '', '伟本机电上海有限公司', '', '', '', 'android开发', '是', '', '5500', '', '', '');
INSERT INTO `info` VALUES ('20', 'HFE-JY-AD-20150715-01', '金继中', '男', '18365284824', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '上海', '', '', '', '上海悠梦网络公司', '', '', '', 'android开发', '是', '3000', '5500', '', '面试了深圳金亚太、安徽时旭智能科技、中科金城、乐堂动漫等企业但是都没有拿到offer，每次都是自我感觉良好，工作好找，但是和学的知识没什么关系，觉得合肥这边安卓的工作太少没什么发展没门路，决定先学车年后再去北京上海找。', '');
INSERT INTO `info` VALUES ('21', 'HFE-JY-AD-20150715-01', '代立超', '男', '18214747510', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '上海', '', '', '', '上海葵谷金融信息服务有限公司', '', '', '', 'android开发', '是', '3000', '5000', '', '', '');
INSERT INTO `info` VALUES ('22', 'HFE-JY-AD-20150715-01', '周佳兵', '男', '18365076152', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '上海', '', '', '', '上海新觉信息科技有限公司', '', '', '', '机房运维', '否', '3000', '4000', '', '', '');
INSERT INTO `info` VALUES ('23', 'HFE-JY-AD-20150715-01', '袁梦祥', '男', '15655452620', '安徽理工大学', '本科', '自动化', '', '2015/11/', '', '深圳', '', '', '', '北京科蓝软件系统股份有限公司深圳公司', '', '', '', '软件开发', '', '3000', '7000', '', '', '');
INSERT INTO `info` VALUES ('24', 'HFE-JY-AD-20150715-01', '徐波', '男', '15551899806', '阜阳师范学院', '本科', '通信工程', '', '2015/11/', '', '合肥', '', '', '', '科大国创', '', '', '', 'android开发', '', '2000', '4500', '', '包住', '');
INSERT INTO `info` VALUES ('25', 'HFE-JY-AD-20150715-01', '许李超', '男', '18055851413', '阜阳师范学院', '本科', '计算机科学技术', '', '2015/11/', '', '南京', '', '', '', '南京润和信息系统有限公司', '', '', '', 'android开发', '', '2500', '5000', '', '', '');
INSERT INTO `info` VALUES ('26', 'HFE-JY-AD-20150715-01', '孙伟', '男 ', '15556790576', '阜阳师范学院', '本科', '信息工程', '', '2015/11/', '', '合肥', '', '', '', '安徽时旭智能科技有限公司', '', '', '', 'android开发', '', '3000', '4000', '', '1个月转正，午餐和交通补贴250', '');
INSERT INTO `info` VALUES ('27', 'HFE-JY-AD-20150715-01', '贺德朴', '男', '18326890481', '阜阳师范学院', '本科', '信息工程', '', '2015/11/', '', '合肥', '', '', '', '安徽时旭智能科技有限公司', '', '', '', 'android开发', '', '3000', '4000', '', '1个月转正，午餐和交通补贴250', '');
INSERT INTO `info` VALUES ('28', 'HFE-JY-AD-20150715-01', '徐言', '男', '18326808291', '阜阳师范学院', '本科', '信息工程', '', '2015/11/', '', '上海', '', '', '', '上海游戏多网络科技股份有限公司', '', '', '', 'android开发', '', '5700', '7000', '', '2次就业', '');
INSERT INTO `info` VALUES ('29', 'HFE-JY-AD-20150715-01', '刘正', '男', '18326897927', '阜阳师范学院', '本科', '信息工程', '', '2015/11/', '', '上海', '', '', '', '上海乐畅信息技术有限公司', '', '', '', 'android开发', '', '2000', '7000', '', '', '');
INSERT INTO `info` VALUES ('30', 'HFE-JY-AD-20150715-01', '江宝', '男', '18715103952', '阜阳师范学院', '本科', '信息工程', '', '2015/11/', '', '上海', '', '', '', '中彩信息科技研究院（上海）', '', '', '', 'android开发', '', '3200', '6500', '', '', '');
INSERT INTO `info` VALUES ('31', 'HFE-JY-AD-20150715-01', '杨勇', '男', '15551327650', '阜阳师范学院', '本科', '计算机与信息工程', '', '2015/11/', '', '合肥', '', '', '', '安徽锦佳信息技术有限公司', '', '', '', 'java开发', '', '1000', '3000', '', '1个月转正', '');
INSERT INTO `info` VALUES ('32', 'HFE-JY-AD-20150715-01', '刘岩秋', '男', '15555801613', '阜阳师范学院', '本科', '计算机科学与技术', '', '2015/11/', '', '南京', '', '', '', '南京润和信息系统有限公司', '', '', '', 'android开发', '', '2500+项目提成', '5500', '', '', '');
INSERT INTO `info` VALUES ('33', 'HFE-JY-AD-20150715-01', '李硕', '男', '15715654688', '阜阳师范学院', '本科', '计算机科学与技术', '', '2015/11/', '', '北京', '', '', '', '北京中软国际ETC', '', '', '', 'android开发', '', '', '7000', '', '', '');
INSERT INTO `info` VALUES ('34', 'HFE-JY-AD-20150715-01', '张健', '男', '13083377219', '阜阳师范学院', '本科', '信息工程', '', '2015/11/', '', '', '', '', '', '目前暂时不就业', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('35', 'HFE-JY-AD-20150715-01', '姜辉', '男', '18855970741', '黄山学院', '本科', '电子信息工程', '', '2015/11/', '', '杭州', '', '', '', '万家集团杭州孔方宝有限公司', ' 计算机软件互联网', ' 民营', ' 20-99人', 'android开发', '', '4000', '5000', '', '', '');
INSERT INTO `info` VALUES ('36', 'HFE-JY-JV-20150715-01', '丁俊杰', '男', '13773739535', '安徽科技学院', '本科', '网络工程', '', '2015/11/', '', '上海', '', '', '', '上海今远软件有限公司', '', '', '', 'java开发', '是', '3500', '6000', '', '', '');
INSERT INTO `info` VALUES ('37', 'HFE-JY-JV-20150715-01', '廖新森', '男', '18155469524', '安徽理工大学', '本科', '电子仪器', '', '2015/11/', '', '深圳', '', '', '', '万泰集团旗下蜂翼信息科技有限公司/北京科蓝软件系统股份有限公司深圳公司', '', '', '', 'java开发', '', '3000', '7000', '', '1个月转正', '');
INSERT INTO `info` VALUES ('38', 'HFE-JY-JV-20150715-01', '侯雪峰', '男', '13145567656', '安庆师范学院', '本科', '信息与计算科学', '', '2015/11/', '', '合肥', '', '', '', '合肥信息技术服务有限公司', '', '', '', 'java开发', '', '1800', '3000', '', '1个月转正', '');
INSERT INTO `info` VALUES ('39', 'HFE-JY-JV-20150715-01', '王仲贤', '男', '13615568783', '安庆师范学院', '本科', '信息与计算科学', '', '2015/11/', '', '上海', '', '', '', '上海睿民互联网科技有限公司', '', '', '', 'java开发', '', '3000', '5000', '', '', '');
INSERT INTO `info` VALUES ('40', 'HFE-JY-JV-20150715-01', '马凯', '男', '15156860260', '安庆师范学院', '本科', '信息与计算科学', '', '2015/11/', '', '上海', '', '', '', '上海新致软件有限公司', '', '', '', 'java开发', '', '3000', '4500', '', '有住宿补贴，转正后全部返还', '');
INSERT INTO `info` VALUES ('41', 'HFE-JY-JV-20150715-01', '周小敏', '女', '13505636756', '安庆师范学院', '本科', '信息与计算科学', '', '2015/11/', '', '', '', '', '', '北京步峰信息技术有限公司', '', '', '', 'java开发', '', '', '5800', '', '', '');
INSERT INTO `info` VALUES ('42', 'HFE-JY-JV-20150715-01', '洪敏娟', '女', '13966988685', '安庆师范学院', '本科', '信息与计算科学', '', '2015/11/', '', '上海', '', '', '', '上海勤凯信息科技有限公司\n', '', '', '', 'java开发', '', '2000', '4000', '', '', '');
INSERT INTO `info` VALUES ('43', 'HFE-JY-JV-20150715-01', '冯静', '女', '15212946113', '安庆师范学院', '本科', '信息与计算科学', '', '2015/11/', '', '深圳', '', '', '', '深圳市艾派应用系统有限公司', '', '', '', 'java开发', '', '3000', '4500', '', '', '');
INSERT INTO `info` VALUES ('44', 'HFE-JY-JV-20150715-01', '原书蕉', '女', '18712199163', '安庆师范学院', '本科', '信息与计算科学', '', '2015/11/', '', '深圳', '', '', '', '深圳市北辰德科技有限公司', '', '', '', 'java开发', '', '3000', '4500', '', '', '');
INSERT INTO `info` VALUES ('45', 'HFE-JY-JV-20150715-01', '施俊', '男', '18155621237', '安庆师范学院', '本科', '信息与计算科学', '', '2015/11/', '', '上海', '', '', '', '上海睿民互联网科技有限公司', '', '', '', 'java开发', '', '2500', '3500', '', '', '');
INSERT INTO `info` VALUES ('46', 'HFE-JY-JV-20150715-01', '梁红蕾', '女', '18130551592', '安庆师范学院', '本科', '信息与计算科学', '', '2015/11/', '', '', '', '', '', '北京智库泉', '', '', '', '数据处理', '', '', null, '', '结业', '');
INSERT INTO `info` VALUES ('47', 'HFE-JY-JV-20150715-01', '刘雪健', '男', '18855971678', '黄山学院', '本科', '软件工程', '', '2015/11/', '', '杭州', '', '', '', '杭州悉尔科技有限公司', ' 计算机软件其他金融', ' 民营', '50-150人', 'java开发', '', '4200', '5000', '', '', '');
INSERT INTO `info` VALUES ('48', 'HFE-JY-JV-20150715-01', '王顺成', '男', '18855970757', '黄山学院', '本科', '电子信息工程', '', '2015/11/', '', '合肥', '', '', '', '安徽博约科技有限公司', '信息系统', ' 民营', '50-99人', 'java开发', '', '2800', '3500', '', '', '');
INSERT INTO `info` VALUES ('49', 'HFE-JY-JV-20150715-01', '崔东东', '男', '', '黄山学院', '本科', '软件工程', '', '2015/11/', '', '南京', '', '', '', '南京', '信息系统', '', '', 'java开发', '', '5000', '6000', '', '', '');
INSERT INTO `info` VALUES ('50', 'HFE-JY-JV-20150715-01', '郑立炜', '男', '18855971711', '黄山学院', '本科', '软件工程', '', '2015/11/', '', '南京', '', '', '', '上海安硕信息科技有限公司', '国家规划重点软件企业银行', '上市公司', '超过1500人', 'java开发', '', '2000', '4500', '', '提供住宿+午餐', '');
INSERT INTO `info` VALUES ('51', 'HFE-JY-JV-20150715-01', '张丹丹', '女', '18855976913', '黄山学院', '本科', '软件工程', '', '2015/11/', '', '合肥', '', '', '', '深圳金亚太科技有限公司', '多媒体视频产品', ' 民营', '200余人', 'java开发', '', '2000', '4500', '', '', '');
INSERT INTO `info` VALUES ('52', 'HFE-JY-JV-20150715-01', '王鑫明', '男', '18855973101', '黄山学院', '本科', '软件工程', '', '2015/11/', '', '合肥', '', '', '', ' 宏昇科技有限公司', '', ' 民营', '', 'java开发', '', '2500', '4000', '', '', '');
INSERT INTO `info` VALUES ('53', 'HFE-JY-JV-20150715-01', '陈欣玫', '女', '18855973998', '黄山学院', '本科', '电子信息工程', '', '2015/11/', '', '合肥', '', '', '', '深圳金亚太科技有限公司', '多媒体视频产品', ' 民营', '200余人', '测试', '', '2000', '4000', '', '', '');
INSERT INTO `info` VALUES ('54', 'HFE-JY-JV-20150715-01', '邱青青', '女', '18855971714', '黄山学院', '本科', '软件工程', '', '2015/11/', '', '南京', '', '', '', '上海安硕信息科技有限公司', '国家规划重点软件企业银行', '上市公司', '超过1500人', 'java开发', '', '2000', '4500', '', '提供住宿+午餐', '');
INSERT INTO `info` VALUES ('55', 'HFE-JY-JV-20150715-01', '陈强', '男', '18855970923', '黄山学院', '本科', '软件工程', '', '2015/11/', '', '南京', '', '', '', '南京紫津融畅信息科技服务有限公司', '互联网银行项目', '上市公司全紫子公司', '1000-9999人', 'java开发', '', '2500', '5000', '', '', '');
INSERT INTO `info` VALUES ('56', 'HFE-JY-JV-20150715-01', '杨帅帅', '男', '15655930562', '黄山学院', '本科', '软件工程', '', '2015/11/', '', '上海', '', '', '', '伺动常客公共关系咨询（上海）', '其他商业', ' 外商独资', '20-99人', 'java开发', '', '4000', '7000', '', '', '');
INSERT INTO `info` VALUES ('57', 'HFE-JY-JV-20150715-01', '黄勤成', '男', '18855971690', '黄山学院', '本科', '软件工程', '', '2015/11/', '', '昆山', '', '', '', '', '其他', '', '', '转行', '', '', '4500', '', '2015年底前不就业，要把驾照考完，已与父母沟通过确有此事，年后跟班复习一周后再就业', '');
INSERT INTO `info` VALUES ('58', 'HFE-JY-JV-20150715-01', '张雪明', '男', '18855995187', '黄山学院', '本科', '软件工程', '', '2015/11/', '', '合肥', '', '', '', '安徽华研电子科技有限公司', '移动互联网', '民营', '', 'java开发', '', '2400', '3000', '', '', '');
INSERT INTO `info` VALUES ('59', 'HFE-JY-JV-20150715-01', '左超', '男', '18326552667', '皖西学院', '本科', '通信工程', '', '2015/11/', '', '合肥', '', '', '', '安徽奔越网络科技有限公司', '', '', '', 'java开发', '', '2700', '4000', '', '包住', '');
INSERT INTO `info` VALUES ('60', 'HFE-JY-JV-20150715-01', '方文仙', '女', '13275825639', '皖西学院', '本科', '网络工程', '', '2015/11/', '', '南京', '', '', '', '南京聚奢网络科技有限公司', '', '', '', 'java开发', '', '2500', '4000', '', '', '');
INSERT INTO `info` VALUES ('61', 'HFE-JY-JV-20150715-01', '周邦军', '男', '18110675859', '皖西学院', '本科', '计算机科学与技术', '', '2015/11/', '', '上海', '', '', '', '上海浩宜信息科技有限公司', '', '', '', 'java开发', '', '3000', '6000', '', '包住', '');
INSERT INTO `info` VALUES ('62', 'HFE-JY-JV-20150715-01', '赵仁祥', '男', '15556053810', '皖西学院', '本科', '通信工程', '', '2015/11/', '', '上海', '', '', '', '上海睿民互联网科技有限公司', '', '', '', 'java开发', '', '3000', '5000', '', '', '');
INSERT INTO `info` VALUES ('63', 'HFE-JY-JV-20150715-01', '阮浩', '男', '18860402328', '皖西学院', '本科', '通信工程', '', '2015/11/', '', '上海', '', '', '', '昆山农商行', '', '', '', 'java开发', '', '4000', '7000', '', '', '');
INSERT INTO `info` VALUES ('64', 'HFE-JY-JV-20150715-01', '崔文涛', '男', '13761155461', '皖西学院', '本科', '通信工程', '', '2015/11/', '', '上海', '', '', '', '上海中信信息发展有限公司', '', '', '', 'java开发', '', '6000', '7500', '', '', '');
INSERT INTO `info` VALUES ('65', 'HFE-JY-JV-20150715-01', '董成雯', '男', '18326554416', '皖西学院', '本科', '通信工程', '', '2015/11/', '', '上海', '', '', '', '上海友和道通集团', '', '', '', 'java开发', '', '3500', '4500', '', '包住', '');
INSERT INTO `info` VALUES ('66', 'HFE-JY-JV-20150715-01', '产建军', '男', '13162683378', '皖西学院', '本科', '计算机科学与技术', '', '2015/11/', '', '上海', '', '', '', '上海中科软科技有限公司', '', '', '', 'java开发', '', '3300', '5000', '', '', '');
INSERT INTO `info` VALUES ('67', 'HFE-JY-AD-20151010-01', '王任', '男', '15956976053', '安徽大学', '本科', '信息管理与信息系统', '', '2016/2/29', '', '合肥', '', '', '', '北京科蓝软件系统股份有限公司合肥公司', '', '', '', '安卓开发', '', '4950', '5500', '', '', '');
INSERT INTO `info` VALUES ('68', 'HFE-JY-AD-20151010-01', '刘兵', '男', '15755387004', '安徽工程大学', '本科', '信息与计算科学', '', '2016/3/18', '', '合肥', '', '', '', '安徽华博胜讯信息科技股份有限公司', '', '', '', '安卓开发', '', '2500', '4000', '', '', '');
INSERT INTO `info` VALUES ('69', 'HFE-JY-AD-20151010-01', '孙帅', '男', '18963725883', '安徽工程大学', '本科', '信息与计算科学', '', '2016/3/18', '', '合肥', '', '', '', ' 悦易信息网络科技有限公司', '', '', '', '安卓开发', '', '4500', '5500', '', '', '');
INSERT INTO `info` VALUES ('70', 'HFE-JY-AD-20151010-01', '朱振', '男', '15755361877', '安徽工程大学', '本科', '信息与计算科学', '', '2016/3/18', '', '合肥', '', '', '', '上海屹通信息科技发展有限公司合肥分公司', '', '', '', '安卓开发', '', '3000', '4000', '', '', '');
INSERT INTO `info` VALUES ('71', 'HFE-JY-AD-20151010-01', '姚旭斌', '男', '18255328761', '安徽工程大学', '本科', '信息与计算科学', '', '2016/3/18', '', '杭州', '', '', '', '杭州信雅达科技有限公司', '', '', '', '安卓开发', '', '3200', '5000', '', '', '');
INSERT INTO `info` VALUES ('72', 'HFE-JY-AD-20151010-01', '丰伟', '男', '15755363588', '安徽工程大学', '本科', '信息与计算科学', '', '2016/3/18', '', '合肥', '', '', '', '上海屹通信息科技发展有限公司合肥分公司', '', '', '', '安卓开发', '', '3000', '4000', '', '', '');
INSERT INTO `info` VALUES ('73', 'HFE-JY-AD-20151010-01', '钱杨杨', '男', '15755387642', '安徽工程大学', '本科', '计算机科学与技术', '', '2016/3/18', '', '苏州', '', '', '', '伏泰信息科技有限公司', '', '', '', 'java开发', '', '2800', '3500', '', '', '');
INSERT INTO `info` VALUES ('74', 'HFE-JY-AD-20151010-01', '于胜伟', '男', '18895344338', '安徽工程大学', '本科', '计算机科学与技术', '', '2016/3/18', '', '上海', '', '', '', '上海晟鸿信息科技有限公司', '', '', '', '安卓开发', '', '6000', '8000', '', '', '');
INSERT INTO `info` VALUES ('75', 'HFE-JY-AD-20151010-01', '唐兵', '男', '17729915298', '安徽工程大学', '本科', '计算机科学与技术', '', '2016/3/18', '', '合肥', '', '', '', '中寰卫星导航通信合肥公司', '', '', '', '安卓开发', '', '2500', '4000', '', '', '');
INSERT INTO `info` VALUES ('76', 'HFE-JY-AD-20151010-01', '马延超', '男', '18010777137', '安徽工程大学', '本科', '计算机科学与技术', '', '2016/3/1', '', '芜湖', '', '', '', '杭州瑞利声电技术公司', '', '', '', 'c++', '', '3000', '5000', '', '', '');
INSERT INTO `info` VALUES ('77', 'HFE-JY-AD-20151010-01', '汪思婧', '女', '13856986280\n', '安徽农业大学', '本科', '信息与计算科学', '', '2016/3/18', '', '合肥', '', '', '', '安徽七月无限网络科技有限公司', '', '', '', '安卓开发', '', '3600', '4500', '', '', '');
INSERT INTO `info` VALUES ('78', 'HFE-JY-AD-20151010-01', '章国平', '男', '15105992469', '巢湖学院', '本科', '电气工程及其自动化', '', '2016/3/18', '', '深圳', '', '', '', '深圳市快乐淳科技有限公司', '', '', '', '安卓开发', '', '7000', '9000', '', '', '');
INSERT INTO `info` VALUES ('79', 'HFE-JY-AD-20151010-01', '赵大帅', '男', '15695650908', '巢湖学院', '本科', '电气工程及其自动化', '', '2016/3/18', '', '合肥', '', '', '', '安徽好牛信息科技有限公司', '', '', '', '安卓开发', '', '3000', '4000', '', '', '');
INSERT INTO `info` VALUES ('80', 'HFE-JY-AD-20151010-01', '李跃龙', '男', '18326897225', '阜阳师范学院', '本科', '计算机科学与技术', '', '2016/3/18', '', '合肥', '', '', '', '国华光电技术有限公司', '', '', '', '安卓开发', '', '2900', '3500', '', '', '');
INSERT INTO `info` VALUES ('81', 'HFE-JY-AD-20151010-01', '李洋', '男', '18096773101', '阜阳师范学院', '本科', '计算机科学与技术', '', '2016/3/18', '', '合肥', '', '', '', '国华光电技术有限公司', '', '', '', '安卓开发', '', '2900', '3500', '', '', '');
INSERT INTO `info` VALUES ('82', 'HFE-JY-AD-20151010-01', '张伟强', '男', '18856429130', '皖西学院', '本科', '电子信息工程', '', '2016/2/22', '', '佛山', '', '', '', '佛山天地行科技有限公司', '', '', '', '安卓开发', '', '5000', '7000', '', '', '');
INSERT INTO `info` VALUES ('83', 'HFE-JY-AD-20151010-01', '杨士杰', '男', '15273152144', '中南大学', '本科', '软件工程', '', '2016/3/18', '', '南京', '', '', '', 'ViVo南京公司', '', '', '', '安卓开发', '', '5000', '7000', '', '', '');
INSERT INTO `info` VALUES ('84', 'HFE-JY-JV-20151207-01', '陈甜甜', '女', '18214888806', '巢湖学院', '本科', '计算机科学与技术', '2016.7', '2015/12/7', '2016/5/18', '合肥', '推荐就业', '', '', '安徽航天信息有限公司', '', '', '', 'java开发工程师', '是', '', '4500', '', '', '');
INSERT INTO `info` VALUES ('85', 'HFE-JY-JV-20151207-01', '储成云', '女', '15755166986', '安徽建筑大学', '本科', '电子信息工程', '2012.7', '2015/12/7', '2016/5/18', '合肥', '推荐就业', '', '', '安徽航天信息有限公司', '', '', '', 'java开发工程师', '是', '', '4500', '', '', '');
INSERT INTO `info` VALUES ('86', 'HFE-JY-JV-20151207-01', '林启炎', '男', '18792194306', '巢湖学院', '本科', '计算机科学与技术', '2016.7', '2015/12/7', '2016/5/18', '合肥', '推荐就业', '', '', '安徽航天信息有限公司', '', '', '', 'java开发工程师', '是', '', '4500', '', '', '');
INSERT INTO `info` VALUES ('87', 'HFE-JY-JV-20151207-01', '傅昆', '男', '15255550304', '安庆师范学院', '本科', '旅游管理', '2015.7', '2015/12/7', '2016/5/18', '合肥', '自主就业', '', '', '安徽天勤盛创信息科技', '', '', '', 'java开发工程师', '是', '', '4500', '', '', '');
INSERT INTO `info` VALUES ('88', 'HFE-JY-JV-20151207-01', '汪攀', '男', '18326908761', '蚌埠学院', '本科', '电子信息工程', '2016.6', '2015/12/7', '2016/5/18', '合肥', '自主就业', '', '', '安徽天勤盛创信息科技', '', '', '', 'java开发工程师', '是', '', '4100', '补贴', '', '');
INSERT INTO `info` VALUES ('89', 'HFE-JY-JV-20151207-01', '蒋伟', '男', '15556208091', '淮北师范大学', '本科', '计算机科学与技术', '2016.7', '2015/12/7', '2016/5/18', '合肥', '推荐就业', '', '', '安徽兆尹信息科技股份有限公司', '', '', '', 'java开发工程师', '是', '', '3500', '(13薪)', '', '');
INSERT INTO `info` VALUES ('90', 'HFE-JY-JV-20151207-01', '王刚', '男', '13063483516', '安徽建筑大学', '本科', '电子信息工程', '2016.6', '2015/12/7', '2016/5/18', '合肥', '推荐就业', '', '', '安徽兆尹信息科技股份有限公司', '', '', '', 'java开发工程师', '是', '', '3200', '', '', '');
INSERT INTO `info` VALUES ('91', 'HFE-JY-JV-20151207-01', '徐杨', '男', '18656053620', '安徽建筑大学', '本科', '计算机科学与技术', '2016.6', '2015/12/7', '2016/5/18', '合肥', '自主就业', '', '', '安徽兆尹信息科技股份有限公司', '', '', '', 'java开发工程师', '是', '', '6000', '', '', '');
INSERT INTO `info` VALUES ('92', 'HFE-JY-JV-20151207-01', '姚晗', '男', '18154175780', '淮北师范大学', '本科', '计算机科学与技术（师范）', '2016.7', '2015/12/7', '2016/5/18', '合肥', '自主就业', '', '', '安徽兆尹信息科技股份有限公司', '', '', '', 'java开发工程师', '是', '', '4000', '', '', '');
INSERT INTO `info` VALUES ('93', 'HFE-JY-JV-20151207-01', '曹静', '女', '17605695192', '巢湖学院', '本科', '电子商务', '2016.7', '2015/12/7', '2016/5/18', '北京', '推荐就业', '', '', '北京慧博云通科技股份有限公司', '', '', '', 'java开发工程师', '是', '', '6000', '', '', '');
INSERT INTO `info` VALUES ('94', 'HFE-JY-JV-20151207-01', '郑世清', '男', '15357994275', '淮南师范学院', '本科', '自动化', '2012.7', '2015/12/7', '2016/5/18', '北京', '自主就业', '', '', '杭州西软信息技术有限公司', '', '', '', 'java开发工程师', '是', '', '5500', '', '', '');
INSERT INTO `info` VALUES ('95', 'HFE-JY-JV-20151207-01', '齐铭雪', '女', '18225655521', '巢湖学院', '本科', '计算机科学与技术', '2016.7', '2015/12/7', '2016/5/18', '合肥', '自主就业', '', '', '合肥为民电源有限公司', '', '', '', 'java开发工程师', '是', '', '4000', '餐补300+住宿', '', '');
INSERT INTO `info` VALUES ('96', 'HFE-JY-JV-20151207-01', '张树勋', '男', '15675512669', '蚌埠学院', '本科', '电子信息工程', '2016.7', '2015/12/7', '2016/5/18', '合肥', '自主就业', '', '', '科大国创', '', '', '', 'java开发工程师', '是', '', '4300', '', '', '');
INSERT INTO `info` VALUES ('97', 'HFE-JY-JV-20151207-01', '王成彬', '男', '13813378113', '宿州学院', '本科', '电气工程及其自动化', '2014.7', '2015/12/7', '2016/5/18', '南京', '推荐就业', '', '', '南京云问网络科技有限公司', '', '', '', 'java开发工程师', '是', '', '5000', '', '', '');
INSERT INTO `info` VALUES ('98', 'HFE-JY-JV-20151207-01', '马声铃', '男', '18267132379', '安徽建筑大学', '本科', '电子信息工程', '2016.6', '2015/12/7', '2016/5/18', '杭州', '自主就业', '', '', '中文在线杭州分公司', '', '', '', 'java开发工程师', '是', '', '4500', '补贴650', '', '');
INSERT INTO `info` VALUES ('99', 'HFE-JY-JV-20151207-01', '陈梦迪', '女', '18110675881', '皖西学院', '本科', '计算机科学与技术', '2015.7', '2015/12/7', '2016/5/18', '合肥', '推荐就业', '', '', '上海安硕信息技术股份有限公司（合肥）', '', '', '', 'java开发工程师', '是', '', '4500', '餐补900+住宿', '', '');
INSERT INTO `info` VALUES ('100', 'HFE-JY-JV-20151207-01', '段亚飞', '男', '18756592495', '巢湖学院', '本科', '计算机科学与技术', '2016.6', '2015/12/7', '2016/5/18', '合肥', '推荐就业', '', '', '上海安硕信息技术股份有限公司（合肥）', '', '', '', 'java开发工程师', '是', '', '4500', '餐补900+住宿', '', '');
INSERT INTO `info` VALUES ('101', 'HFE-JY-JV-20151207-01', '夏超', '男', '13675517657', '安徽中医药大学', '本科', '计算机科学与技术', '2016.6', '2015/12/7', '2016/5/18', '合肥', '推荐就业', '', '', '上海安硕信息技术股份有限公司（合肥）', '', '', '', 'java开发工程师', '是', '', '4500', '餐补900+住宿', '', '');
INSERT INTO `info` VALUES ('102', 'HFE-JY-JV-20151207-01', '杨赛军', '男', '15663671513', '哈尔滨商业大学', '本科', '软件工程', '2016.6', '2015/12/7', '2016/5/18', '合肥', '推荐就业', '', '', '上海安硕信息技术股份有限公司（合肥）', '', '', '', 'java开发工程师', '是', '', '4500', '餐补900+住宿', '', '');
INSERT INTO `info` VALUES ('103', 'HFE-JY-JV-20151207-01', '丁建', '男', '15357101641', '安徽科技学院', '本科', '信息与计算科学', '2016.7', '2015/12/7', '2016/5/18', '上海', '推荐就业', '', '', '上海睿民互联网科技有限公司', '', '', '', 'java开发工程师', '是', '', '5500', '补贴', '', '');
INSERT INTO `info` VALUES ('104', 'HFE-JY-JV-20151207-01', '戴宗良', '男', '18792146386', '巢湖学院', '本科', '计算机科学与技术', '2015.7', '2015/12/7', '2016/5/18', '合肥', '自主就业', '', '', '汉高信息科技有限公司', '', '', '', 'java开发工程师', '是', '', '4200', '', '', '');
INSERT INTO `info` VALUES ('105', 'HFE-JY-JV-20151207-01', '伍维新', '男', '18956188430', '淮北师范大学', '本科', '计算机科学与技术', '2012.7', '2015/12/7', '2016/5/18', '芜湖', '自主就业', '', '', '讯飞联创信息科技有限公司(芜湖)', '', '', '', 'java开发工程师', '是', '', '3500', '', '', '');
INSERT INTO `info` VALUES ('106', 'HFE-JY-JV-20151207-01', '赵淑妮', '女', '18258204184\n', '安徽建筑大学', '本科', '电子信息工程', '2016.7', '2015/12/7', '2016/5/18', '杭州', '推荐就业', '', '', '中软国际科技服务有限公司-华为业务线（杭州）', '', '', '', 'java开发工程师', '是', '', '5500', '', '', '');
INSERT INTO `info` VALUES ('107', 'HFE-JY-JV-20151207-01', '史文祥', '男', '18365269474', '安徽科技学院', '本科', '电气工程及其自动化', '2012.7', '2015/12/7', '2016/5/18', '上海', '推荐就业', '', '', '中软国际业务线-华腾软件（上海）', '', '', '', 'java开发工程师', '是', '', '8200', '', '', '');
INSERT INTO `info` VALUES ('108', 'HFE-JY-JV-20151207-01', '朱帅', '男', '15755373036', '安徽工程大学', '本科', '电子信息科学与技术', '2012.7', '2015/12/7', '2016/5/18', '上海', '推荐就业', '', '', '中软国际业务线-华腾软件（上海）', '', '', '', 'java开发工程师', '是', '', '8000', '', '', '');
INSERT INTO `info` VALUES ('109', 'HFE-JY-JV-20151207-01', '陈小超', '男', '18324977714', '新华学院', '本科', '电子信息科学与技术', '2016.7', '2015/12/7', '2016/5/18', '', '自主就业', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('110', 'HFE-JY-JV-20151207-01', '陈友', '男', '18256513466', '巢湖学院', '本科', '计算机科学与技术', '2016.7', '2015/12/7', '2016/5/18', '南京', '自主就业', '', '', '南京擎天科技', '', '', '', 'java开发工程师', '是', '4500', null, '', '', '');
INSERT INTO `info` VALUES ('111', 'HFE-JY-JV-20151207-01', '李城城', '男', '18356088319', '安徽新华学院', '本科', '计算机科学与技术', '2015.7', '2015/12/7', '2016/5/18', '上海', '自主就业', '', '', '用友上海分公司', '', '', '', 'java开发工程师', '是', '5500', null, '', '', '');
INSERT INTO `info` VALUES ('112', 'HFE-JY-JV-20151207-01', '李俊达', '男', '15755353700', '安徽工程大学', '本科', '电子信息科学与技术', '2016.7', '2015/12/7', '2016/5/18', '上海', '推荐就业', '', '', '常州英贝通信技术有限公司', '', '', '', 'java开发工程师', '是', '5000', '6000', '', '住宿交500元/月', '');
INSERT INTO `info` VALUES ('113', 'HFE-JY-JV-20151207-01', '鲁先锐', '男', '15755378014', '安徽工程大学', '本科', '电子信息科学与技术', '2016.7', '2015/12/7', '2016/5/18', '南京', '自主就业', '', '', '南京中软', '', '', '', 'java开发工程师', '是', '', '5000', '', '', '');
INSERT INTO `info` VALUES ('114', 'HFE-JY-JV-20151207-01', '孟凯', '男', '18356285351', '铜陵学院', '本科', '电子信息工程', '2016.7', '2015/12/7', '2016/5/18', '合肥', '推荐就业', '', '', '安徽航天信息有限公司', '', '', '', 'java开发工程师', '是', '', '4200', '住宿', '', '');
INSERT INTO `info` VALUES ('115', 'HFE-JY-JV-20151207-01', '任清柯', '男', '18130231356', '安徽交通学院', '大专', '高等级公路维护与管理', '2014.7', '2015/12/7', '2016/5/18', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('116', 'HFE-JY-JV-20151207-01', '石志诚', '男', '15755180082', '安徽建筑大学', '本科', '电子与信息工程', '2016.7', '2015/12/7', '2016/5/18', '', '自主就业', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('117', 'HFE-JY-JV-20151207-01', '谢长风', '男', '18355075937', '安徽科技学院', '本科', '信息与计算科学', '2012.7', '2015/12/7', '2016/5/18', '上海', '自主就业', '', '', '上海久雅信息科技有限公司', '', '', '', 'java开发工程师', '是', '', '6250', '', '', '');
INSERT INTO `info` VALUES ('118', 'HFE-JY-JV-20151207-01', '章辉', '男', '18326908682', '蚌埠学院', '本科', '电子信息工程', '2016.7', '2015/12/7', '2016/5/18', '上海', '推荐就业', '', '', '常州英贝通信技术有限公司', '', '', '', 'java开发工程师', '是', '5000', '6000', '', '住宿交500元/月', '');
INSERT INTO `info` VALUES ('119', 'HFE-JY-JV-20151207-01', '朱喜', '男', '13003035966', '安徽工程大学', '本科', '电子信息科学与技术', '2016.7', '2015/12/7', '2016/5/18', '南京', '推荐就业', '', '', '中软国际业务线-华为业务（南京）', '', '', '', 'java开发工程师', '是', '', '5500', '', '', '');
INSERT INTO `info` VALUES ('120', 'HFE-JY-JV-20160222-01', '涂必鹏', '男', '18356455108', '安徽科技学院', '本科', '信息显示与光电技术', '2016.7', '2016/2/22', '2016/6/30', '杭州', '推荐就业', '', '', '北京西达信息技术有限公司（杭州）', '', '', '', 'java开发工程师', '是', '', '5500', '', '', '');
INSERT INTO `info` VALUES ('121', 'HFE-JY-JV-20160222-01', '贺宏雨', '男', '18365266475', '安徽科技学院', '本科', '信息显示与光电技术', '2016.6', '2016/2/22', '2016/6/30', '南京', '自主就业', '', '', '南京绛门通讯科技股份有限公司', '', '', '', 'java开发工程师', '是', '', '5800', '', '', '');
INSERT INTO `info` VALUES ('122', 'HFE-JY-JV-20160222-01', '周国军', '男', '18365264248', '安徽科技学院', '本科', '信息与计算科学', '2016.7', '2016/2/22', '2016/6/30', '杭州', '推荐就业', '', '', '浙江用友软件有限公司', '', '', '', 'java开发工程师', '是', '', '5100', '', '', '');
INSERT INTO `info` VALUES ('123', 'HFE-JY-JV-20160222-01', '王炳超', '男', '13865767899', '安徽科技学院', '本科', '信息显示与光电技术', '2016.7', '2016/2/22', '2016/6/30', '南京', '自主就业', '', '', '南京剑盛科技发展有限公司（江苏银行项目组）', '', '', '', 'java开发工程师', '是', '', '5000', '', '', '');
INSERT INTO `info` VALUES ('124', 'HFE-JY-JV-20160222-01', '姜甫', '男', '18365264192', '安徽科技学院', '本科', '信息显示与光电技术', '2016.7', '2016/2/22', '2016/6/30', '南京', '推荐就业', '', '', '江苏新大陆科技有限公司', '', '', '', 'java开发工程师', '是', '', '5000', '', '', '');
INSERT INTO `info` VALUES ('125', 'HFE-JY-JV-20160222-01', '赵思奇', '男', '18056634351', '安徽科技学院', '本科', '计算机科学与技术', '2016.7', '2016/2/22', '2016/6/30', '武汉', '自主就业', '', '', '上海金仕达卫宁软件科技有限公司（武汉）', '', '', '', '数据库开发', '是', '', '4000', '', '', '');
INSERT INTO `info` VALUES ('126', 'HFE-JY-JV-20160222-01', '王超', '男', '15212066351', '安徽科技学院', '本科', '地理信息系统', '2016.7', '2016/2/22', '2016/6/30', '上海', '自主就业', '', '', '上海杰狮信息技术有限公司', '', '', '', 'java开发工程师', '是', '', '5500', '', '', '');
INSERT INTO `info` VALUES ('127', 'HFE-JY-JV-20160222-01', '刘东', '男', '18075240275', '安徽科技学院', '本科', '地理信息科学', '2016.7', '2016/2/22', '2016/6/30', '上海', '自主就业', '', '', '上海百林通信网络科技服务股份有限公司', '', '', '', 'java开发工程师', '是', '', '6000', '', '', '');
INSERT INTO `info` VALUES ('128', 'HFE-JY-JV-20160222-01', '荣光海', '男', '18355092097', '安徽科技学院', '本科', '信息显示与光电技术', '2016.7', '2016/2/22', '2016/6/30', '上海', '自主就业', '', '', '上海淘略数据处理有限公司', '', '', '', 'java开发工程师', '是', '', '5500', '', '', '');
INSERT INTO `info` VALUES ('129', 'HFE-JY-JV-20160222-01', '盛涛', '男', '18755063793', '安徽科技学院', '本科', '信息显示与光电技术', '2016.6', '2016/2/22', '2016/6/30', '南京', '推荐就业', '', '', '南京绛门通讯科技股份有限公司', '', '', '', 'java开发工程师', '是', '', '5800', '', '', '');
INSERT INTO `info` VALUES ('130', 'HFE-JY-JV-20160222-01', '欧诚越', '女', '18365261796', '安徽科技学院', '本科', '计算机科学与技术', '2016.7', '2016/2/22', '2016/6/30', '合肥', '推荐就业', '', '', '安徽航天信息有限公司', '', '', '', 'java开发工程师', '是', '', '4200', '住宿', '', '');
INSERT INTO `info` VALUES ('131', 'HFE-JY-JV-20160222-01', '王宏伟', '男', '18056608684', '安徽科技学院', '本科', '计算机科学与技术', '2016.6', '2016/2/22', '2016/6/30', '杭州', '推荐就业', '', '', '北京西达信息技术有限公司（杭州）', '', '', '', 'java开发工程师', '是', '', '5500', '', '', '');
INSERT INTO `info` VALUES ('132', 'HFE-JY-JV-20160222-01', '朱鹏辉', '男', '18365266501', '安徽科技学院', '本科 ', '信息显示与光电技术', '2016.6', '2016/2/22', '2016/6/30', '南京', '推荐就业', '', '', '南京远光广安有限公司', '', '', '', 'java开发工程师', '是', '', '4000', '', '', '');
INSERT INTO `info` VALUES ('133', 'HFE-JY-JV-20160222-01', '刘娇', '女', '18256093596', '安徽农业大学', '本科', '信息与计算科学', '2016.7', '2016/2/22', '2016/6/30', '合肥', '推荐就业', '', '', '安徽商信政通信息技术股份有限公司', '', '', '', 'java开发工程师', '是', '', '4000', '', '', '');
INSERT INTO `info` VALUES ('134', 'HFE-JY-JV-20160222-01', '欧丽冰', '女', '18205694720', '安徽农业大学', '本科', '信息与计算科学', '2012.9', '2016/2/22', '2016/6/30', '杭州', '推荐就业', '', '', '杭州三汇数字信息技术有限公司', '', '', '', 'java开发工程师', '是', '', '5200', '', '', '');
INSERT INTO `info` VALUES ('135', 'HFE-JY-JV-20160222-01', '张欢', '女', '18326060803', '安徽农业大学', '本科', '信息与计算科学', '2016.7', '2016/2/22', '2016/6/30', '合肥', '推荐就业', '', '', '安徽商信政通信息技术股份有限公司', '', '', '', 'java开发工程师', '是', '', '4000', '', '', '');
INSERT INTO `info` VALUES ('136', 'HFE-JY-JV-20160222-01', '姚筱筱', '女', '18792058959', '安徽新华学院', '大专', '通信技术', '2015.7', '2016/2/22', '2016/6/30', '合肥', '自主就业', '', '', '北京步峰信息技术有限公司', '', '', '', 'java开发工程师', '是', '', '4500', '', '', '');
INSERT INTO `info` VALUES ('137', 'HFE-JY-JV-20160222-01', '方平', '男', '13695528707', '蚌埠学院', '本科', '电子信息工程', '2016.7', '2016/2/22', '2016/6/30', '南京', '自主就业', '', '', '南京旭品信息科技有限公司', '', '', '', 'java开发工程师', '是', '', '5000', '', '', '');
INSERT INTO `info` VALUES ('138', 'HFE-JY-JV-20160222-01', '周维秀', '男', '18756564918', '巢湖学院', '本科', '计算机科学与技术', '2012.7', '2016/2/22', '2016/6/30', '上海', '自主就业', '', '', '上海维恩孛特信息技术有限公司', '', '', '', 'java开发工程师', '是', '', '6000', '', '', '');
INSERT INTO `info` VALUES ('139', 'HFE-JY-JV-20160222-01', '吴佳佳', '男', '18792189348', '巢湖学院', '本科', '计算机科学与技术', '2016.7', '2016/2/22', '2016/6/30', '合肥', '推荐就业', '', '', '安徽胜利科技发展有限公司', '', '', '', 'java开发工程师', '是', '', '4000', '', '', '');
INSERT INTO `info` VALUES ('140', 'HFE-JY-JV-20160222-01', '刘阔', '男', '15526598755', '淮北师范大学', '本科', '计算机科学与技术（师范）', '2016.7', '2016/2/22', '2016/6/30', '合肥', '推荐就业', '', '', '安徽航天信息有限公司', '', '', '', 'java开发工程师', '是', '', '4200', '住宿', '', '');
INSERT INTO `info` VALUES ('141', 'HFE-JY-JV-20160222-01', '王帅', '男', '15212624002', '淮北职业技术学院', '大专', '机电一体化', '2016.7', '2016/2/22', '2016/6/30', '合肥', '自主就业', '', '', '安徽亿信互联科技有限公司', '', '', '', 'java开发工程师', '是', '', '3000', '', '', '');
INSERT INTO `info` VALUES ('142', 'HFE-JY-JV-20160222-01', '庄鹏成', '男', '18556369676', '淮北职业技术学院', '专科', '机电一体化', '2016.7', '2016/2/22', '2016/6/30', '合肥', '自主就业', '', '', '华亿生态园林股份有限公司', '', '', '', 'java开发工程师', '是', '', '3000', '', '', '');
INSERT INTO `info` VALUES ('143', 'HFE-JY-JV-20160222-01', '王欣如', '女', '18096433871', '淮南师范学院', '本科', '通信工程', '2016.7', '2016/2/22', '2016/6/30', '合肥', '自主就业', '', '', '合肥讯百软件有限公司', '', '', '', 'java开发工程师', '是', '', '3500', '', '', '');
INSERT INTO `info` VALUES ('144', 'HFE-JY-JV-20160222-01', '周陈园', '男', '15756123132', '芜湖职业技术学院', '专科', '建筑工程技术', '2015.7', '2016/2/22', '2016/6/30', '上海', '推荐就业', '', '', '上海航动科技有限公司', '', '', '', 'java开发工程师', '是', '', '5000', '', '', '');
INSERT INTO `info` VALUES ('145', 'HFE-JY-AD-20151207-01', '刘萱', '女', '13865936624', '安徽农业大学', '本科', '信息与计算科学', '2016.6', '2015/12/7', '2016/5/20', '上海', '推荐就业', '', '', '上海航动科技有限公司', '', '', '', '测试+安卓', '是', '', '5000', '', '', '');
INSERT INTO `info` VALUES ('146', 'HFE-JY-AD-20151207-01', '杜庆振', '男', '15755695397', '安庆师范学院', '本科', '电子信息科学与技术', '2016.7', '2015/12/7', '2016/5/20', '合肥', '自主就业', '', '', '安徽时旭智能科技有限公司', '', '', '', 'android工程师', '是', '', '3500', '', '', '');
INSERT INTO `info` VALUES ('147', 'HFE-JY-AD-20151207-01', '韩业春', '男', '18956532506', '巢湖学院', '本科', '计算机科学与技术', '2016.6', '2015/12/7', '2016/5/20', '苏州', '自主就业', '', '', '苏州革新百集传媒科技有限公司', '', '', '', 'android工程师', '是', '', '6000', '', '', '');
INSERT INTO `info` VALUES ('148', 'HFE-JY-AD-20151207-01', '齐连山', '男', '18156992263', '巢湖学院', '本科', '计算机科学与技术', '2016.6', '2015/12/7', '2016/5/20', '杭州', '自主就业', '', '', '杭州跟着哥哥做淘宝', '', '', '', '', '', '', '5500', '', '', '');
INSERT INTO `info` VALUES ('149', 'HFE-JY-AD-20151207-01', '施朋', '男', '18756585787', '巢湖学院', '本科', '计算机科学与技术', '2016.6', '2015/12/7', '2016/5/20', '合肥', '自主就业', '', '', '合肥品恩智能科技有限公司', '', '', '', 'android工程师', '是', '', '5000', '', '', '');
INSERT INTO `info` VALUES ('150', 'HFE-JY-AD-20151207-01', '张智', '男', '13395655981', '巢湖学院', '本科', '计算机科学与技术', '2016.7', '2015/12/7', '2016/5/20', '上海', '自主就业', '', '', '上海成思信息科技有限公司', '', '', '', 'android工程师', '是', '', '6000', '', '', '');
INSERT INTO `info` VALUES ('151', 'HFE-JY-AD-20151207-01', '刘健根', '男', '15656575670', '巢湖学院', '本科', '软件工程', '2016.7', '2015/12/7', '2016/5/20', '杭州', '自主就业', '', '', '杭州惟勤科技有限公司', '', '', '', 'android工程师', '是', '', '5500', '', '', '');
INSERT INTO `info` VALUES ('152', 'HFE-JY-AD-20151207-01', '余涛', '男', '15655519876', '巢湖学院', '本科', '软件工程', '2016.7', '2015/12/7', '2016/5/20', '合肥', '自主就业', '', '', '0551房产公司的子公司', '', '', '', 'android工程师', '是', '', '4000', '', '', '');
INSERT INTO `info` VALUES ('153', 'HFE-JY-AD-20151207-01', '吕家靖', '男', '18255075460', '巢湖学院', '本科', '软件工程', '2016.4', '2015/12/7', '2016/5/20', '杭州', '自主就业', '', '', '杭州它石车联网数据中心有限公司', '', '', '', 'android工程师', '是', '', '6000', '', '', '');
INSERT INTO `info` VALUES ('154', 'HFE-JY-AD-20151207-01', '关蕤', '男', '15203808118', '郑州经贸职业学院', '大专', '计算机网络技术', '2009.6', '2015/12/7', '2016/5/20', '合肥', '自主就业', '', '', '宏昇科技（合肥）', '', '', '', 'android工程师', '是', '', '4500', '', '', '');
INSERT INTO `info` VALUES ('155', 'HFE-JY-AD-20151207-01', '束永东', '男', '15256510432', '巢湖学院', '本科', '网络工程', '2014', '2015/12/7', '2016/5/20', '合肥', '自主就业', '', '', '安徽科力信息产业有限责任公司', '', '', '', 'android工程师', '是', '', '5500', '', '', '');
INSERT INTO `info` VALUES ('156', 'HFE-JY-AD-20151207-01', '夏勋', '男', '13966387123', '阜阳师范学院', '本科', '信息工程', '2016.7', '2015/12/7', '2016/5/20', '合肥', '自主就业', '', '', '安徽鼎尖文化传媒有限公司', '', '', '', '总经理助理', '是', '', '4500', '提成', '', '');
INSERT INTO `info` VALUES ('157', 'HFE-JY-JV-20160328-01', '姚涵淘', '男', '18226181163', '佳木斯大学', '本科', '土木工程', '2015.7', '2016/3/28', '2016/8/16', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('158', 'HFE-JY-JV-20160328-01', '徐晶晶', '男', '18256201101', '铜陵学院', '本科', '电气工程及其自动化', '2016.7', '2016/3/28', '2016/8/16', '南京', '推荐就业', '', '', '南京鑫众力软件', '', '', '', 'java开发工程师', '是', '', '5500', '', '', '');
INSERT INTO `info` VALUES ('159', 'HFE-JY-JV-20160328-01', '尹海业', '男', '18304015001', '沈阳理工大学', '本科', '计算机科学与技术', '2016.7', '2016/3/28', '2016/8/16', '合肥', '推荐就业', '', '', '安徽中科大国祯信息科技有限公司', '', '', '', 'java开发工程师', '是', '', '4400', '', '', '');
INSERT INTO `info` VALUES ('160', 'HFE-JY-JV-20160328-01', '陈江虎', '男', '18326554208', '皖西学院', '本科', '计算机科学与技术', '2016.7', '2016/3/28', '2016/8/16', '合肥', '推荐就业', '', '', '安徽航天信息有限公司', '', '', '', 'java开发工程师', '是', '', '4200', '住宿', '', '');
INSERT INTO `info` VALUES ('161', 'HFE-JY-JV-20160328-01', '王冬冬', '男', '18326554077', '皖西学院', '本科', '计算机科学与技术', '2016.7', '2016/3/28', '2016/8/16', '上海', '推荐就业', '', '', '上海如旺电子商务有限公司', '', '', '', 'java开发工程师', '是', '', '6000', '午餐', '', '');
INSERT INTO `info` VALUES ('162', 'HFE-JY-JV-20160328-01', '李治强', '男', '13965074857', '安徽审计职业学院', '大专', '建筑工程管理', '2016.7', '2016/3/28', '2016/8/16', '合肥', '推荐就业', '', '', '安徽经邦软件技术有限公司', '', '', '', 'java开发工程师', '是', '', '3000', '住宿', '', '');
INSERT INTO `info` VALUES ('163', 'HFE-JY-JV-20160328-01', '解光林', '男', '13225650868', '宿州学院', '本科', '资源环境与城乡规划管理', '2012.7', '2016/3/28', '2016/8/16', '合肥', '推荐就业', '', '', '安徽易联众信息技术有限公司 ', '', '', '', 'java开发工程师', '是', '3800', '4500', '', '', '');
INSERT INTO `info` VALUES ('164', 'HFE-JY-JV-20160328-01', '李金超', '男', '18355889664', '阜阳师范学院信息工程学院', '本科', '计算机科学与技术', '2016.7', '2016/3/28', '2016/8/16', '上海', '推荐就业', '', '', '上海博科资讯股份有限公司', '', '', '', 'java开发工程师', '是', '', '7000', '', '', '');
INSERT INTO `info` VALUES ('165', 'HFE-JY-JV-20160328-01', '陈峰', '男', '18326897112', '阜阳师范学院', '本科', '统计学', '2016.8', '2016/3/28', '2016/8/16', '合肥', '推荐就业', '', '', '安徽航天信息有限公司', '', '', '', 'java开发工程师', '是', '', '4200', '住宿', '', '');
INSERT INTO `info` VALUES ('166', 'HFE-JY-JV-20160328-01', '詹敏亮', '男', '18119514320', '安徽理工大学', '本科', '数学与应用数学', '2016.7', '2016/3/28', '2016/8/16', '合肥', '推荐就业', '', '', '上海文沥信息技术有限公司（合肥）', '', '', '', 'java开发工程师', '是', '', '5000', '', '', '');
INSERT INTO `info` VALUES ('167', 'HFE-JY-JV-20160328-01', '徐鹏飞', '男', '13155491011', '安徽理工大学', '本科', '土木工程', '2015.7', '2016/3/28', '2016/8/16', '合肥', '推荐就业', '', '', '安徽航天信息有限公司', '', '', '', 'java开发工程师', '是', '', '4200', '住宿', '', '');
INSERT INTO `info` VALUES ('168', 'HFE-JY-JV-20160328-01', '李伟', '男', '13145659575', '合肥师范学院', '本科', '电气工程及其自动化', '2016.7', '2016/3/28', '2016/8/16', '上海', '推荐就业', '', '', '上海博科资讯股份有限公司', '', '', '', 'java开发工程师', '是', '', '7000', '', '', '');
INSERT INTO `info` VALUES ('169', 'HFE-JY-JV-20160328-01', '喻超凡', '男', '13956065303', '安徽中医药大学', '本科', '计算机科学与技术', '2016.8', '2016/3/28', '2016/8/16', '合肥', '推荐就业', '', '', '上海屹通信息科技发展有限公司（合肥）', '', '', '', 'java开发工程师', '是', '', '5000', '', '', '');
INSERT INTO `info` VALUES ('170', 'HFE-JY-JV-20160328-01', '刘倩倩', '女', '15178640182', '安庆师范学院', '本科', '信息与计算科学', '2016', '2016/3/28', '2016/8/16', '宁波', '自主就业', '', '', '波轩好网络科技有限公司', '', '', '', 'java开发工程师', '是', '', '5000', '', '', '');
INSERT INTO `info` VALUES ('171', 'HFE-JY-JV-20160328-01', '吴其顺', '男', '17756016470', '安徽电子信息职业技术学院', '大专', '计算机应用', '2015.7', '2016/3/28', '2016/8/16', '合肥', '推荐就业', '', '', '安徽经邦软件技术有限公司', '', '', '', 'java开发工程师', '是', '', '3000', '住宿', '', '');
INSERT INTO `info` VALUES ('172', 'HFE-JY-JV-20160328-01', '姚鑫鑫', '男', '13135408535', '安徽新华学院', '本科', '电子信息科学与技术', '2016.8', '2016/3/28', '2016/8/16', '合肥', '自主就业', '', '', '安徽百诚慧通科技有限公司 ', '', '', '', 'java开发工程师', '是', '', '3500', '公积金400+餐补220+车补100', '', '');
INSERT INTO `info` VALUES ('173', 'HFE-JY-JV-20160328-01', '孙传磊', '男', '18130169650', '安徽理工大学', '本科', '特种能源工程与烟火技术', '2016.7', '2016/3/28', '2016/8/16', '合肥', '推荐就业', '', '', '上海文沥信息技术有限公司（合肥）', '', '', '', 'java开发工程师', '是', '', '4500', '', '', '');
INSERT INTO `info` VALUES ('174', 'HFE-JY-JV-20160328-01', '任毛毛', '女', '18365204187', '淮南师范学院', '本科', '自动化', '2016.7', '2016/3/28', '2016/8/16', '合肥', '推荐就业', '', '', '恒生芸泰安徽运营中心研发 ', '', '', '', 'java开发工程师', '是', '', '3500', '', '', '');
INSERT INTO `info` VALUES ('175', 'HFE-JY-JV-20160328-01', '刘晓堃', '男', '15756006310', '铜陵学院', '本科', '物联网工程', '2017.7', '2016/3/28', '2016/8/16', '上海', '推荐就业', '', '', '上海华到信息科技有限公司', '', '', '', 'java开发工程师', '是', '150/天', '5500', '', '', '');
INSERT INTO `info` VALUES ('176', 'HFE-JY-JV-20160328-01', '李磊', '男', '15055193169', '安徽水利水电职业技术学院', '专科', '汽车检测与维修', '2016.7', '2016/3/28', '2016/8/16', '马鞍山', '', '', '', '东华软件股份公司', '', '', '', 'java开发工程师', '是', '', '4000', '', '', '');
INSERT INTO `info` VALUES ('177', 'HFE-JY-JV-20160328-01', '顾猛', '男', '18356509806', '安徽建筑大学', '本科', '统计学', '2016.7', '2016/3/28', '2016/8/16', '合肥', '', '', '', '合肥华迪信息技术有限公司', '', '', '', 'java开发工程师', '是', '', '3500', '', '', '');
INSERT INTO `info` VALUES ('178', 'HFE-JY-JV-20160516-01', '吕彬', '男', '15355746876', '淮南师范学院', '本科', '自动化', '2014', '2016/5/16', '2016/10/24', '合肥', '自主就业', '', '', '合肥小指信息技术有限公司', '', '', '', 'java开发工程师', '是', '5200', '6500', '', '包装了两年经验', '');
INSERT INTO `info` VALUES ('179', 'HFE-JY-JV-20160516-01', '王子炫', '男', '13855105644', '安徽三联学院', '本科', '电子科学与技术', '2016', '2016/5/16', '2016/10/24', '合肥', '推荐就业', '', '', '安徽山立信息工程有限公司', '', '', '', 'java开发工程师', '是', '3000', '4000', '', '', '');
INSERT INTO `info` VALUES ('180', 'HFE-JY-JV-20160516-01', '孟令时', '男', '18175006243', '蚌埠学院', '本科', '应用化学', '2016', '2016/5/16', '2016/10/24', '溧阳', '自主就业', '', '', '北京智游联动科技有限公司', '', '', '', 'java开发工程师', '是', '2800', '4000', '', '', '2016.11.10');
INSERT INTO `info` VALUES ('181', 'HFE-JY-JV-20160516-01', '吕志伟', '男', '15856987971', '合肥经济技术职业学院', '专科', '会计', '2015', '2016/5/16', '2016/10/24', '合肥', '推荐就业', '', '', '安徽兴博远实信息科技有限公司 ', '', '', '', '测试 ', '', '2500', '3000', '', '', '');
INSERT INTO `info` VALUES ('182', 'HFE-JY-JV-20160516-01', '周洁', '女', '18225580465', '阜阳师范学院', '本科', '信息工程', '2016', '2016/5/16', '2016/10/24', '合肥', '推荐就业', '', '', '卫宁健康科技集团股份有限公司', '', '', '', 'java开发工程师 .net', '是', '3360', '4200', '', '', '2016.11.15');
INSERT INTO `info` VALUES ('183', 'HFE-JY-JV-20160516-01', '王深圳', '男', '17775303082', '合肥师范学院', '本科', '电子信息工程', '2016', '2016/5/16', '2016/10/24', '合肥', '推荐就业', '', '', '安徽航天信息有限公司', '', '', '', 'java开发工程师', '是', '2700', '4200', '住宿', '', '');
INSERT INTO `info` VALUES ('184', 'HFE-JY-JV-20160516-01', '徐礼强', '男', '15755180896', '合肥师范学院', '本科', '电子信息工程', '2016', '2016/5/16', '2016/10/24', '北京', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('185', 'HFE-JY-JV-20160516-01', '费先军', '男', '15150205626', '安徽大学江淮学院', '本科', '计算机科学与技术', '2010', '2016/5/16', '2016/10/24', '合肥', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('186', 'HFE-JY-JV-20160516-01', '徐汉文', '男', '15305615978', '安徽建筑大学', '本科', '工业设计', '2013', '2016/5/16', '2016/10/24', '合肥', '推荐就业', '', '', '安徽易联众信息技术有限公司 ', '', '', '', 'java开发工程师', '是', '3000', '4200', '', '', '2016.11.2');
INSERT INTO `info` VALUES ('187', 'HFE-JY-JV-20160516-01', '王明明', '男', '15156085800', '长江大学', '本科', '农学', '2013', '2016/5/16', '2016/10/24', '合肥', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('188', 'HFE-JY-JV-20160516-01', '未治龙', '男', '15821930392', '安庆职业技术学院', '大专', '物流管理', '2009', '2016/5/16', '2016/10/24', '合肥', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('189', 'HFE-JY-JV-20160516-01', '余文静', '女', '15502176546', '安徽工商职业学院', '大专', '软件技术', '2012', '2016/5/16', '2016/10/24', '上海', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('190', 'HFE-JY-JV-20160516-01', '李涛', '男', '18365288461', '安徽科技学院', '本科', '信息显示与光电技术', '2016.7', '2016/5/16', '2016/10/24', '南京', '推荐就业', '', '', '埃森哲', '', '', '', 'java开发工程师', '是 ', '5000', '6000', '', '', '2016.11.23');
INSERT INTO `info` VALUES ('191', 'HFE-JY-JV-20160516-01', '张慧敏', '女', '15156057507', '安徽涉外经济职业学院', '专科', '动漫设计与制作', '2016.7', '2016/5/16', '2016/10/24', '合肥', '自主就业', '', '', '合肥弗乐斯传媒有限公司', '', '', '', '前端开发工程师', '', '2500', '3500', '年底2%分红', '', '');
INSERT INTO `info` VALUES ('192', 'HFE-JY-JV-20160516-01', '王鹏', '男', '15688188729', '河南理工大学', '本科', '电气工程及其自动化', '2012', '2016/5/16', '2016/10/24', '上海', '自主就业', '', '', '上海宜喆智能科技有限公司', '', '', '', '', '', '', null, '', '回原公司', '');
INSERT INTO `info` VALUES ('193', 'HFE-JY-JV-20160516-01', '方子君', '男', '18856055164', '安徽新华学院', '本科', '土木工程', '2016.7', '2016/5/16', '2016/10/24', '合肥', '推荐就业', '', '', '安徽易联众信息技术有限公司 ', '', '', '', 'java开发工程师', '是', '2800', '3800', '', '', '2016.11.2');
INSERT INTO `info` VALUES ('194', 'HFE-JY-JV-20160516-01', '许杰', '男', '18756519621', '安徽科技学院', '本科', '信息与计算科学', '2016.7', '2016/5/16', '2016/10/24', '合肥', '推荐就业', '', '', '科大国创', '', '', '', 'java开发工程师', ' 是 ', '3500', '4300', '', '', '2016.11.14');
INSERT INTO `info` VALUES ('195', 'HFE-JY-JV-20160516-01', '王猛', '男', '15255615082', '安徽文达信息工程学院', '大专', '电子商务', '2012.9', '2016/5/16', '2016/10/24', '合肥', '推荐就业', '', '', '安徽博约信息科技股份有限公司', '', '', '', 'java开发工程师', ' 是 ', '3040', '3800', '', '', '2016.11.3');
INSERT INTO `info` VALUES ('196', 'HFE-JY-JV-20160516-01', '刘凯', '男', '15705596491', '黄山学院', '本科', '计算机科学与技术', '2016.7', '2016/5/16', '2016/10/24', '上海', '自主就业', '', '', '上海杰狮信息技术有限公司', '', '', '', 'java开发工程师', ' 是 ', '2800+项目提成', '5500', '', '', '2016.11.14');
INSERT INTO `info` VALUES ('197', 'HFE-JY-JV-20160516-01', '张彬', '男', '15665596253', '黄山学院', '本科', '计算机科学与技术', '2016.7', '2016/5/16', '2016/10/24', '合肥', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('198', 'HFE-JY-JV-20160516-01', '朱学远', '男', '15655971985', '黄山学院', '本科', '计算机科学与技术', '2016.7', '2016/5/16', '2016/10/24', '合肥', '推荐就业', '', '', '卫宁健康科技集团股份有限公司', '', '', '', 'java开发工程师', '是', '实习2520', '4800', '', '', '2016.11.4');
INSERT INTO `info` VALUES ('199', 'HFE-JY-JV-20160516-01', '袁明亮', '男', '18055942983', '黄山学院', '本科', '光电信息科学与技术', '2016.7', '2016/5/16', '2016/10/24', '合肥', '推荐就业', '', '', '卫宁健康科技集团股份有限公司', '', '', '', 'java开发工程师', '是', '实习2520', '4800', '', '', '');
INSERT INTO `info` VALUES ('200', 'HFE-JY-JV-20160516-01', '席志成', '男', '15665595520', '黄山学院', '本科', '计算机科学与技术', '2016.7', '2016/5/16', '2016/10/24', '合肥', '自主就业', '', '', '中新网络信息安全股份有限公司', '', '', '', 'java开发工程师', ' 是 ', '实习2200', '5000', '', '', '');
INSERT INTO `info` VALUES ('201', 'HFE-JY-JV-20160516-01', '刘硕', '男', '15705593098', '黄山学院', '本科', '计算机科学与技术', '2016.7', '2016/5/16', '2016/10/24', '杭州', '', '', '', '浙江用友软件有限公司', '', '', '', 'java开发工程师', ' 是 ', '实习2000', '5300', '', '', '2016.11.11');
INSERT INTO `info` VALUES ('202', 'HFE-JY-JV-20160516-01', '崔志翔', '男', '15705595793', '黄山学院', '本科', '计算机科学与技术', '2016.7', '2016/5/16', '2016/10/24', '杭州', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('203', 'HFE-JY-JV-20160516-01', '朱明姚', '男', '15705596318', '黄山学院', '本科', '计算机科学与技术', '2016.7', '2016/5/16', '2016/10/24', '杭州', '推荐就业', '', '', '浙江用友软件有限公司', '', '', '', 'java开发工程师', ' 是 ', '实习2000', '5300', '', '', '2016.11.11');
INSERT INTO `info` VALUES ('204', 'HFE-JY-JV-20160516-01', '丁鹏', '男', '15705597027', '黄山学院', '本科', '计算机科学与技术', '2016.7', '2016/5/16', '2016/10/24', '杭州', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('205', 'HFE-JY-PHP-20160718-01', '李扬', '男', '18714819256', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('206', 'HFE-JY-PHP-20160718-01', '汪蕾', '女', '15155939583', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('207', 'HFE-JY-PHP-20160718-01', '尹厚杰', '男', '18256529018', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('208', 'HFE-JY-PHP-20160718-01', '李雪丽', '女', '18356092380', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('209', 'HFE-JY-PHP-20160718-01', '方韧志', '男', '18715028565', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '合肥迪森网络科技', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('210', 'HFE-JY-PHP-20160718-01', '高曲', '男', '18158868499', '安徽财贸职业学院', '专科', '计算机信息管理 ', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('211', 'HFE-JY-PHP-20160718-01', '戴磊', '女', '18356507348', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '合肥迪森网络科技', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('212', 'HFE-JY-PHP-20160718-01', '张娜', '男', '18709867620', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('213', 'HFE-JY-PHP-20160718-01', '孟金霞', '女', '18256994465', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('214', 'HFE-JY-PHP-20160718-01', '王静文', '女', '18715133425', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('215', 'HFE-JY-PHP-20160718-01', '杨国庆 ', '男', '18714815421', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('216', 'HFE-JY-PHP-20160718-01', '张韬', '女', '13856132765', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('217', 'HFE-JY-PHP-20160718-01', '钱磊', '男', '18709869062', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('218', 'HFE-JY-PHP-20160718-01', '梁松', '男', '18715129047', '滁州职业技术学院', '大专', '计算机系统维护', '2016.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('219', 'HFE-JY-PHP-20160718-01', '李先婷', '女', '18256994630', '徽商职业学院', '大专', '软件技术', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('220', 'HFE-JY-PHP-20160718-01', '江琪', '女', '18656053237', '安徽大学 ', '本科', '国际商学院', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('221', 'HFE-JY-PHP-20160718-01', '朱正琴', '女', '13856832037', '新华学院', '中专', '美工', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('222', 'HFE-JY-PHP-20160718-01', '刘国俊', '男', '18010929181', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('223', 'HFE-JY-PHP-20160718-01', '许永康', '女', '18855124213', '阜阳师范学院', '本科', '计科嵌入式', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('224', 'HFE-JY-PHP-20160718-01', '王萍萍', '女', '18756542544', '安徽财贸职业学院', '大专', '计算机信息管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('225', 'HFE-JY-PHP-20160718-01', '胡文竹', '男', '18856843889', '安徽国防科技职业学院', '专科', '计算机应用', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('226', 'HFE-JY-PHP-20160718-01', '徐丽', '女', '18256001302', '亳州二中', '高中', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('227', 'HFE-JY-JV-20160718-01', '王旭', '男', '18375310856', '安徽工程大学', '本科', '软件工程', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('228', 'HFE-JY-JV-20160718-01', '王星星', '男', '15665530891', '安徽工程大学', '本科', '软件工程', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('229', 'HFE-JY-JV-20160718-01', '严超', '男', '18375335223', '安徽工程大学', '本科', '软件工程', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('230', 'HFE-JY-JV-20160718-01', '朱新春', '男', '13170036723', '安徽工程大学', '本科', '软件工程', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('231', 'HFE-JY-JV-20160718-01', '梅健勇', '男', '15755379768', '安徽工程大学', '本科', '信息管理与信息系统', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('232', 'HFE-JY-JV-20160718-01', '孙亚东', '男', '15755387177', '安徽工程大学', '本科', '生物工程', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('233', 'HFE-JY-JV-20160718-01', '任玉松', '男', '18196544826', '安徽工机大学电学院', '本科', '电子信息工程', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('234', 'HFE-JY-JV-20160718-01', '高磊', '男', '18705699682', '安徽建筑大学', '本科', '自动化', '2014.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('235', 'HFE-JY-JV-20160718-01', '李贤胜', '男', '18255181577', '安徽建筑大学', '本科', '计算机', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('236', 'HFE-JY-JV-20160718-01', '赵朋朋', '男', '18297610716', '安徽理工大学', '本科', '遥感', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('237', 'HFE-JY-JV-20160718-01', '钟靳', '女', '15656090480', '安徽新华学院', '本科', '电子信息工程', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('238', 'HFE-JY-JV-20160718-01', '崔摇摇', '男', '18225862322', '安徽新华学院', '专科', '计算机网络', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('239', 'HFE-JY-JV-20160718-01', '王心雨', '女', '15077908926', '安徽中医药大学', '本科', '医药软件', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('240', 'HFE-JY-JV-20160718-01', '张倩', '女', '18297975862', '安徽中医药大学', '本科', '计算机科学与技术', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('241', 'HFE-JY-JV-20160718-01', '徐展', '女', '18755101021', '安徽中医药大学', '本科', '计算机科学与技术', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('242', 'HFE-JY-JV-20160718-01', '张龙飞', '男', '18155145284', '安徽中医药大学', '本科', '计算机科学与技术', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('243', 'HFE-JY-JV-20160718-01', '沈红玺', '男', '18356084471', '滨湖学院', '专科', '汽车电子', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('244', 'HFE-JY-JV-20160718-01', '陈望', '男', '15255426409', '巢湖学院', '本科', '电子商务', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('245', 'HFE-JY-JV-20160718-01', '刘振宇', '男', '18055137741', '国家成人大学', '大专', '行政管理', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('246', 'HFE-JY-JV-20160718-01', '杨宇', '男', '18356063897', '合肥工业大学', '本科', '机械设计制造及其自动化', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('247', 'HFE-JY-JV-20160718-01', '庄飞', '男', '18119603293', '合肥学院', '本科', '电子信息工程', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('248', 'HFE-JY-JV-20160718-01', '魏阳', '男', '18156992096', '合肥学院', '本科', '电子信息工程', '2016.7', '', '', '', '', '', '', '南京埃森哲华为业务线', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('249', 'HFE-JY-JV-20160718-01', '段梦倩', '女', '18656506121', '河海大学文天学院', '本科', '通信工程', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('250', 'HFE-JY-JV-20160718-01', '曹珺', '男', '18255595819', '河海大学文天学院', '本科', '通信工程', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('251', 'HFE-JY-JV-20160718-01', '唐先普', '男', '15255190446', '淮北师范大学', '本科', '计算机科学与技术', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('252', 'HFE-JY-JV-20160718-01', '许星源', '男', '18207240791', '淮北职业技术学院', '大专', '土木工程', '2013.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('253', 'HFE-JY-JV-20160718-01', '杨威', '男', '18856157656', '淮北职业技术学院', '专科', '机电一体化', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('254', 'HFE-JY-JV-20160718-01', '朱敏', '男', '13345546135', '淮南师范学院', '本科', '自动化', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('255', 'HFE-JY-JV-20160718-01', '何晓伟', '男', '15505593990', '黄山学院', '本科', '计算机科学与技术', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('256', 'HFE-JY-JV-20160718-01', '王雷雷', '男', '18298141214', '长江大学 ', '本科', '农学', '2013.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('257', 'HFE-JY-JV-20160718-01', '陈峰', '男', '15050832338', '中国矿业大学', '硕士', '矿业工程', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('258', 'HFE-JY-JV-20160718-01', '赵海军', '男', '17855135207', '重庆三峡学院', '本科', '物理学（师范）', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('259', 'HFE-JY-JV-20160718-01', '吴源', '女', '18175386023', '安庆师范大学', '本科', '信息与计算科学', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('260', 'HFE-JY-JV-20160718-01', '方卓', '男', '18555119262', '河北科技大学', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('261', 'HFE-JY-AD-20160725-01 ', '王世民', '男', '18365265268', '滁州学院', '本科', '计算机科学与技术', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('262', 'HFE-JY-AD-20160725-01 ', '董义文', '男', '13155393896', '皖西学院', '本科', '网络工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('263', 'HFE-JY-AD-20160725-01 ', '张鹏鹏', '男', '18860469661', '皖西学院', '本科', '通信工程', '2017.6', '', '', '', '', '', '', '上海新致软件有限公司', '', '', '', '', '', '150/天', null, '', '', '2016.12.19');
INSERT INTO `info` VALUES ('264', 'HFE-JY-AD-20160725-01 ', '李俊鹏', '男', '15665626993', '铜陵学院', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('265', 'HFE-JY-AD-20160725-01 ', '陈光强', '男', '18110678159', '皖西学院', '本科', '通信工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('266', 'HFE-JY-AD-20160725-01 ', '  方癸酉', '男', '15656233283', '铜陵学院', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('267', 'HFE-JY-AD-20160725-01 ', '刘波', '男', '18860460981', '皖西学院', '本科', '通信工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('268', 'HFE-JY-AD-20160725-01 ', '杨芝玮 ', '男', '18326137739', '三联学院', '本科', ' 自动化', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('269', 'HFE-JY-AD-20160725-01 ', '王栋', '男', '18305629877', '铜陵学院', '本科', '信息管理与信息系统', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('270', 'HFE-JY-AD-20160725-01 ', '王常亮', '男', '18860469668', '皖西学院', '本科', '网络工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('271', 'HFE-JY-AD-20160725-01 ', '李爽', '男', '13733079701', '安徽审计职业学院', '大专', '商务管理', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('272', 'HFE-JY-AD-20160725-01 ', '袁锦涛', '男', '18705629007', '铜陵学院', '本科', '计算机', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('273', 'HFE-JY-AD-20160725-01 ', '吴佳程', '男', '18356029931', '河北科技大学', '本科', '计算机', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('274', 'HFE-JY-AD-20160725-01 ', '魏明', '男', '15656233265', '铜陵学院', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('275', 'HFE-JY-AD-20160725-01 ', '苗康', '男', '17775209767', '安徽理工大学', '本科', '数字媒体技术', '2017.6', '', '', '', '', '', '', '北京慧博云通股份有限公司', '', '', '', '', '', '5000', null, '', '', '');
INSERT INTO `info` VALUES ('276', 'HFE-JY-AD-20160725-01 ', '王海霞', '女', '15055410138', '安徽理工', '本科', '数字媒体技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('277', 'HFE-JY-AD-20160725-01 ', '张超越', '男', '13155465512', '安徽理工大学', '本科', '数字媒体技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('278', 'HFE-JY-AD-20160725-01 ', '赵良运', '男', '15375163243', '安徽理工大学', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('279', 'HFE-JY-AD-20160725-01 ', '吴凯', '男', '18355435336', '安徽理工大学', '本科', '数字媒体技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('280', 'HFE-JY-AD-20160725-01 ', '陈建生', '男', '15955472933', '安徽理工大学', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('281', 'HFE-JY-AD-20160725-01 ', '高晗', '女', '18955517270', '安徽理工大学', '本科', '物联网工程', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('282', 'HFE-JY-AD-20160725-01 ', '朱海盟', '男', '17775205630', '安徽理工大学', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('283', 'HFE-JY-AD-20160725-01 ', '孙刘荣', '男', '18355434774', '安徽理工大学', '本科', '数字媒体', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('284', 'HFE-JY-AD-20160725-01 ', '梁新宇', '男', '15955412759', '安徽理工大学', '本科', '数字媒体技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('285', 'HFE-JY-AD-20160725-01 ', '徐志文', '男', '18355433327', '安徽理工大学', '本科', '数字媒体技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('286', 'HFE-JY-AD-20160725-01 ', '钱福琛', '男', '18712027082', '安徽理工大学', '本科', '数字媒体技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('287', 'HFE-JY-AD-20160725-01 ', '俞能列', '男', '18355432847', '安徽理工大学', '本科', '物联网工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('288', 'HFE-JY-AD-20160725-01 ', '黄子立', '男', '18355461656', '安徽理工大学', '本科', '数字媒体', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('289', 'HFE-JY-AD-20160725-01 ', '王丽阳', '女', '15055404026', '安徽理工大学', '本科', '数字媒体技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('290', 'HFE-JY-AD-20160725-01 ', '辛永康', '男', '15055438845', '安徽理工大学', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('291', 'HFE-JY-AD-20160725-01 ', '黄思龙', '男', '13721139725', '安徽省工大学', '本科', '物联网工程', '2017.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('292', 'HFE-JY-AD-20160725-01 ', '胡健', '男', '15755074462', '安徽科技学院', '本科', '网络工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('293', 'HFE-JY-AD-20160725-01 ', '李叔俊', '男', '15755074302', '安徽科技学院', '本科', '网络工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('294', 'HFE-JY-JV-20160725-01  ', '徐嫚嫚', '女', '18860488919', '安徽国防科技职业学院', '大专', '计算机应用技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('295', 'HFE-JY-JV-20160725-01  ', '谢东', '男', '15755074344', '安徽科技学院', '本科', '', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('296', 'HFE-JY-JV-20160725-01  ', '胡亚强', '男', '13215507961', '安徽科技学院', '本科', '光电信息科学与工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('297', 'HFE-JY-JV-20160725-01  ', '徐良良', '男', '13083313027', '安徽科技学院', '本科', '光电', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('298', 'HFE-JY-JV-20160725-01  ', '姜孝伟', '男', '15755073096', '安徽科技学院', '本科', '光电信息科学与工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('299', 'HFE-JY-JV-20160725-01  ', '陈海超', '男', '15655019065', '安徽科技学院', '本科', '光电信息', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('300', 'HFE-JY-JV-20160725-01  ', '朱峰', '男', '18119520763', '安徽理工大学', '本科', '数学与应用数学', '2016.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('301', 'HFE-JY-JV-20160725-01  ', '刘中东', '男', '15505080759', '安庆师范大学', '本科', '计算机科学与技术', '2016.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('302', 'HFE-JY-JV-20160725-01  ', '陶靖', '男', '15755841938', '阜阳师范学院', '本科', '物联网工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('303', 'HFE-JY-JV-20160725-01  ', '王诗强', '男', '18856843137', '阜阳师范学院', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('304', 'HFE-JY-JV-20160725-01  ', '许星成', '男', '17755801373', '阜阳师范学院', '本科', '信息工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('305', 'HFE-JY-JV-20160725-01  ', '章攀宇', '男', '18326886066', '阜阳师范学院', '本科', '计算机科学与技术', '2016.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('306', 'HFE-JY-JV-20160725-01  ', '张坤鹏', '男', '15551356727', '阜阳师范学院', '本科', '物联网工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('307', 'HFE-JY-JV-20160725-01  ', '朱亦然', '男', '13063332208', '阜阳师范学院', '本科', '物理网工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('308', 'HFE-JY-JV-20160725-01  ', '王杰', '男', '18755129385', '合肥师范', '本科', '软件工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('309', 'HFE-JY-JV-20160725-01  ', '张东林', '男', '15255184503', '合肥师范学院', '本科', '软件工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('310', 'HFE-JY-JV-20160725-01  ', '张堃', '男', '15256078934', '合肥师范学院', '本科', '软件工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('311', 'HFE-JY-JV-20160725-01  ', '刘敏辉', '男', '18455096303', '合肥师范学院', '本科', '软件工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('312', 'HFE-JY-JV-20160725-01  ', '陈剑波', '男', '15077909982', '合肥师范学院', '本科', '软件工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('313', 'HFE-JY-JV-20160725-01  ', '杨定延', '男', '18756922260', '合肥师范学院', '本科', '软件工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('314', 'HFE-JY-JV-20160725-01  ', '鲍程', '男', '15156158720', '合肥师范学院', '本科', '软件工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('315', 'HFE-JY-JV-20160725-01  ', '邵威', '男', '18255176758', '合肥师范学院', '本科', '软件工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('316', 'HFE-JY-JV-20160725-01  ', '阮涛', '男', '13856021759', '合肥师范学院', '本科', '软件工程', '2017.6', '', '', '', '', '', '', '上海新致软件有限公司', '', '', '', '', '', '', null, '', '', '2016.12.19');
INSERT INTO `info` VALUES ('317', 'HFE-JY-JV-20160725-01  ', '张浩然', '男', '15055136836', '合肥师范学院', '本科', '软件工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('318', 'HFE-JY-JV-20160725-01  ', '钱明明', '男', '15255170248', '合肥师范学院  ', '本科', ' 软件工程             ', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('319', 'HFE-JY-JV-20160725-01  ', '伍健', '男', '18365200418', '淮南师范学院', '本科', '材料化学', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('320', 'HFE-JY-JV-20160725-01  ', '曹志勇', '男', '18156280865', '铜陵学院', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('321', 'HFE-JY-JV-20160725-01  ', '叶书', '男', '15756024805', '铜陵学院', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('322', 'HFE-JY-JV-20160725-01  ', '唐璐', '女', '18756233573', '铜陵学院', '本科', '信息管理与信息系统', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('323', 'HFE-JY-JV-20160725-01  ', '董紫檀', '女', '15756006370', '铜陵学院', '本科', '信息管理与信息系统', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('324', 'HFE-JY-JV-20160725-01  ', '彭慧', '女', '18356270830', '铜陵学院', '本科', '信息管理与信息系统', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('325', 'HFE-JY-JV-20160725-01  ', '许颜圣', '男', '13329125249', '铜陵学院', '本科', '信息管理与信息系统', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('326', 'HFE-JY-JV-20160725-01  ', '王志成', '男', '15756006116', '铜陵学院', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('327', 'HFE-JY-JV-20160725-01  ', '钱云云', '女', '15656205171', '铜陵学院', '本科', '计算机科学与技术', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('328', 'HFE-JY-JV-20160725-01  ', '孙蕾', '女', '18856262016', '铜陵学院', '本科', '数学与应用数学', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('329', 'HFE-JY-JV-20160725-01  ', '陈国鹏', '男', '18655411496', '铜陵学院', '本科', '信息管理与信息系统', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('330', 'HFE-JY-JV-20160725-01  ', '张银龙', '男', '15556428721', '皖西学院', '本科', '网络工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('331', 'HFE-JY-JV-20160725-01  ', '缪磊', '男', '18860450291', '皖西学院', '本科', '通信工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('332', 'HFE-JY-JV-20160725-01  ', '朱红国', '男', '18860401913', '皖西学院', '本科', '通信工程', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('333', 'HFE-JY-JV-20160725-01  ', '文继铸', '男', '15156489573', '皖西学院', '本科', '电子信息技术', '2016.7', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('334', 'HFE-JY-JV-20160725-01  ', '陆浩伟', '男', '18092514042', '西安工业大学', '本科', '数学与应用数学', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('335', 'HFE-JY-JV-20160725-01  ', '梁修虎', '男', '13053100965', '安徽科技学院', '本科', '信息与计算科学', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');
INSERT INTO `info` VALUES ('336', 'HFE-JY-JV-20160725-01  ', '陈瑞', '男', '1306330653', '安徽科技学院', '本科', '信息与计算科学', '2017.6', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '');

-- ----------------------------
-- Table structure for recollection
-- ----------------------------
DROP TABLE IF EXISTS `recollection`;
CREATE TABLE `recollection` (
  `re_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'reId',
  `re_photo` varchar(100) DEFAULT '' COMMENT 'rePhoto',
  `re_uil` varchar(100) DEFAULT '' COMMENT 'reUil',
  `re_description` varchar(100) DEFAULT '' COMMENT 'reDescription',
  `stu_id` bigint(15) DEFAULT '-1' COMMENT 'stuId',
  `emp_id` bigint(15) DEFAULT '-1' COMMENT 'empId',
  PRIMARY KEY (`re_id`),
  KEY `fk_empid` (`emp_id`),
  KEY `fk_stu_id` (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='`recollection`';

-- ----------------------------
-- Records of recollection
-- ----------------------------
INSERT INTO `recollection` VALUES ('1', 'upload/vidoPicture/201703152159431489586383785.jpg', 'https://www.baidu.com', '在蔻丁的这段时间里我觉得我的收获非常的大，我喊感谢蔻丁给我的这次机会...', '1', '64');
INSERT INTO `recollection` VALUES ('2', 'upload/vidoPicture/201703152200481489586448125.jpg', 'https://www.baidu.com', '蔻丁使我在就业上上找到了新的出路', '2', '65');
INSERT INTO `recollection` VALUES ('15', 'upload/vidoPicture/201703152201281489586488621.jpg', 'https://www.baidu.com', '蔻丁教育这方法真的没得说', '3', '66');
INSERT INTO `recollection` VALUES ('16', 'upload/vidoPicture/201703152201401489586500199.jpg', 'https://www.baidu.com', '这次的学习使我受益匪浅', '10', '73');
INSERT INTO `recollection` VALUES ('17', 'upload/vidoPicture/201703152202481489586568462.JPG', 'https://www.baidu.com', '怎么说呢，在这次学习过程中，我觉得蔻丁给了我很大的帮助', '11', '74');
INSERT INTO `recollection` VALUES ('18', 'upload/vidoPicture/201703152202031489586523389.jpg', 'https://www.baidu.com', '这次的机会是很难得，我很珍惜', '12', '75');
INSERT INTO `recollection` VALUES ('19', 'upload/vidoPicture/201703152202151489586535038.jpg', 'https://www.baidu.com', '这次机会很难得，我很珍惜，毕竟这关乎我未来的发展', '13', '76');
INSERT INTO `recollection` VALUES ('20', 'upload/vidoPicture/201703152202391489586559986.jpg', 'https://www.baidu.com', '人生能有几次选择的机会，而我选择了蔻丁', '14', '77');
INSERT INTO `recollection` VALUES ('21', 'upload/vidoPicture/201703152203471489586627893.jpg', 'https://www.baidu.com', '是蔻丁，让我突出，是蔻丁，让我成就', '16', '79');
INSERT INTO `recollection` VALUES ('22', 'upload/vidoPicture/201703152203591489586639119.jpg', 'https://www.baidu.com', '看到现在自己的生活，我觉得是蔻丁给予我的', '18', '81');
INSERT INTO `recollection` VALUES ('23', 'upload/vidoPicture/201703152204101489586650974.jpg', 'https://www.baidu.com', '我们在错误的时间相遇，在正确的时间却又分开……', '19', '82');
INSERT INTO `recollection` VALUES ('24', 'upload/vidoPicture/201703152204211489586661212.jpg', 'https://www.baidu.com', '走自己的路，让能说得人说去吧，你只要做就行了。', '20', '83');
INSERT INTO `recollection` VALUES ('25', 'upload/vidoPicture/201703152204341489586674237.jpg', 'https://www.baidu.com', '寻找自己的同类人，人以群分，特别是对待婚姻要慎重，宁可拆十座庙，不分一个家……', '21', '84');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'roleId',
  `role_name` varchar(50) DEFAULT '' COMMENT 'roleName',
  `description` varchar(50) DEFAULT '' COMMENT 'description',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='`role`';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '年', '伏氏眶棘鲈');
INSERT INTO `role` VALUES ('2', 'dfsd', 'hfaklhdijl');
INSERT INTO `role` VALUES ('3', 'ajsjk', 'akjsdhfiald');
INSERT INTO `role` VALUES ('4', '大娃', '我是大娃，我可以变大哦');
INSERT INTO `role` VALUES ('5', '大娃', '我是大娃，我可以变大哦');
INSERT INTO `role` VALUES ('6', '二娃', '我是二娃。我有千里眼，顺风耳');
INSERT INTO `role` VALUES ('8', '大娃', '我是大娃，我可以变大哦');

-- ----------------------------
-- Table structure for stu_info
-- ----------------------------
DROP TABLE IF EXISTS `stu_info`;
CREATE TABLE `stu_info` (
  `stu_id` bigint(15) NOT NULL AUTO_INCREMENT COMMENT '学员ID',
  `stu_name` varchar(10) DEFAULT NULL COMMENT '学员姓名',
  `edu_background` varchar(10) DEFAULT NULL COMMENT '学历',
  `status` varchar(10) DEFAULT NULL COMMENT '目前状态',
  `major` varchar(100) DEFAULT NULL COMMENT '专业',
  `photo` varchar(50) DEFAULT NULL COMMENT '图像',
  `course_id` bigint(15) DEFAULT NULL COMMENT '课程ID',
  PRIMARY KEY (`stu_id`),
  KEY `fk_c_id` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8 COMMENT='学员信息表';

-- ----------------------------
-- Records of stu_info
-- ----------------------------
INSERT INTO `stu_info` VALUES ('1', '杨森', '专科', null, '计算机应用技术', null, '1');
INSERT INTO `stu_info` VALUES ('2', '王君君', '大专', null, '计算机应用', null, '1');
INSERT INTO `stu_info` VALUES ('3', '崔益峰', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('4', '罗黎军', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('5', '杨一帆', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('6', '叶磊', '本科', null, '网路工程', null, '1');
INSERT INTO `stu_info` VALUES ('7', '程中强', '本科', null, '计算机科学与技术', null, '1');
INSERT INTO `stu_info` VALUES ('8', '戈传光', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('9', '邓超飞', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('10', '龙伟', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('11', '徐志雄', '本科', null, '网络工程专业', null, '1');
INSERT INTO `stu_info` VALUES ('12', '胡传斌', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('13', '罗洋', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('14', '郑轶', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('15', '洪舒春', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('16', '韩丰', '本科', null, '计算机科学与技术', null, '1');
INSERT INTO `stu_info` VALUES ('17', '马中生', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('18', '董奇童', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('19', '张笑', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('20', '金继中', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('21', '代立超', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('22', '周佳兵', '本科', null, '网络工程', null, '1');
INSERT INTO `stu_info` VALUES ('23', '袁梦祥', '本科', null, '自动化', null, '1');
INSERT INTO `stu_info` VALUES ('24', '徐波', '本科', null, '通信工程', null, '1');
INSERT INTO `stu_info` VALUES ('25', '许李超', '本科', null, '计算机科学技术', null, '1');
INSERT INTO `stu_info` VALUES ('26', '孙伟', '本科', null, '信息工程', null, '1');
INSERT INTO `stu_info` VALUES ('27', '贺德朴', '本科', null, '信息工程', null, '1');
INSERT INTO `stu_info` VALUES ('28', '徐言', '本科', null, '信息工程', null, '1');
INSERT INTO `stu_info` VALUES ('29', '刘正', '本科', null, '信息工程', null, '1');
INSERT INTO `stu_info` VALUES ('30', '江宝', '本科', null, '信息工程', null, '1');
INSERT INTO `stu_info` VALUES ('31', '杨勇', '本科', null, '计算机与信息工程', null, '1');
INSERT INTO `stu_info` VALUES ('32', '刘岩秋', '本科', null, '计算机科学与技术', null, '1');
INSERT INTO `stu_info` VALUES ('33', '李硕', '本科', null, '计算机科学与技术', null, '1');
INSERT INTO `stu_info` VALUES ('34', '张健', '本科', null, '信息工程', null, '1');
INSERT INTO `stu_info` VALUES ('35', '姜辉', '本科', null, '电子信息工程', null, '1');
INSERT INTO `stu_info` VALUES ('36', '丁俊杰', '本科', null, '网络工程', null, '2');
INSERT INTO `stu_info` VALUES ('37', '廖新森', '本科', null, '电子仪器', null, '2');
INSERT INTO `stu_info` VALUES ('38', '侯雪峰', '本科', null, '信息与计算科学', null, '2');
INSERT INTO `stu_info` VALUES ('39', '王仲贤', '本科', null, '信息与计算科学', null, '2');
INSERT INTO `stu_info` VALUES ('40', '马凯', '本科', null, '信息与计算科学', null, '2');
INSERT INTO `stu_info` VALUES ('41', '周小敏', '本科', null, '信息与计算科学', null, '2');
INSERT INTO `stu_info` VALUES ('42', '洪敏娟', '本科', null, '信息与计算科学', null, '2');
INSERT INTO `stu_info` VALUES ('43', '冯静', '本科', null, '信息与计算科学', null, '2');
INSERT INTO `stu_info` VALUES ('44', '原书蕉', '本科', null, '信息与计算科学', null, '2');
INSERT INTO `stu_info` VALUES ('45', '施俊', '本科', null, '信息与计算科学', null, '2');
INSERT INTO `stu_info` VALUES ('46', '梁红蕾', '本科', null, '信息与计算科学', null, '2');
INSERT INTO `stu_info` VALUES ('47', '刘雪健', '本科', null, '软件工程', null, '2');
INSERT INTO `stu_info` VALUES ('48', '王顺成', '本科', null, '电子信息工程', null, '2');
INSERT INTO `stu_info` VALUES ('49', '崔东东', '本科', null, '软件工程', null, '2');
INSERT INTO `stu_info` VALUES ('50', '郑立炜', '本科', null, '软件工程', null, '2');
INSERT INTO `stu_info` VALUES ('51', '张丹丹', '本科', null, '软件工程', null, '2');
INSERT INTO `stu_info` VALUES ('52', '王鑫明', '本科', null, '软件工程', null, '2');
INSERT INTO `stu_info` VALUES ('53', '陈欣玫', '本科', null, '电子信息工程', null, '2');
INSERT INTO `stu_info` VALUES ('54', '邱青青', '本科', null, '软件工程', null, '2');
INSERT INTO `stu_info` VALUES ('55', '陈强', '本科', null, '软件工程', null, '2');
INSERT INTO `stu_info` VALUES ('56', '杨帅帅', '本科', null, '软件工程', null, '2');
INSERT INTO `stu_info` VALUES ('57', '黄勤成', '本科', null, '软件工程', null, '2');
INSERT INTO `stu_info` VALUES ('58', '张雪明', '本科', null, '软件工程', null, '2');
INSERT INTO `stu_info` VALUES ('59', '左超', '本科', null, '通信工程', null, '2');
INSERT INTO `stu_info` VALUES ('60', '方文仙', '本科', null, '网络工程', null, '2');
INSERT INTO `stu_info` VALUES ('61', '周邦军', '本科', null, '计算机科学与技术', null, '2');
INSERT INTO `stu_info` VALUES ('62', '赵仁祥', '本科', null, '通信工程', null, '2');
INSERT INTO `stu_info` VALUES ('63', '阮浩', '本科', null, '通信工程', null, '2');
INSERT INTO `stu_info` VALUES ('64', '崔文涛', '本科', null, '通信工程', null, '2');
INSERT INTO `stu_info` VALUES ('65', '董成雯', '本科', null, '通信工程', null, '2');
INSERT INTO `stu_info` VALUES ('66', '产建军', '本科', null, '计算机科学与技术', null, '2');
INSERT INTO `stu_info` VALUES ('67', '王任', '本科', null, '信息管理与信息系统', null, '3');
INSERT INTO `stu_info` VALUES ('68', '刘兵', '本科', null, '信息与计算科学', null, '3');
INSERT INTO `stu_info` VALUES ('69', '孙帅', '本科', null, '信息与计算科学', null, '3');
INSERT INTO `stu_info` VALUES ('70', '朱振', '本科', null, '信息与计算科学', null, '3');
INSERT INTO `stu_info` VALUES ('71', '姚旭斌', '本科', null, '信息与计算科学', null, '3');
INSERT INTO `stu_info` VALUES ('72', '丰伟', '本科', null, '信息与计算科学', null, '3');
INSERT INTO `stu_info` VALUES ('73', '钱杨杨', '本科', null, '计算机科学与技术', null, '3');
INSERT INTO `stu_info` VALUES ('74', '于胜伟', '本科', null, '计算机科学与技术', null, '3');
INSERT INTO `stu_info` VALUES ('75', '唐兵', '本科', null, '计算机科学与技术', null, '3');
INSERT INTO `stu_info` VALUES ('76', '马延超', '本科', null, '计算机科学与技术', null, '3');
INSERT INTO `stu_info` VALUES ('77', '汪思婧', '本科', null, '信息与计算科学', null, '3');
INSERT INTO `stu_info` VALUES ('78', '章国平', '本科', null, '电气工程及其自动化', null, '3');
INSERT INTO `stu_info` VALUES ('79', '赵大帅', '本科', null, '电气工程及其自动化', null, '3');
INSERT INTO `stu_info` VALUES ('80', '李跃龙', '本科', null, '计算机科学与技术', null, '3');
INSERT INTO `stu_info` VALUES ('81', '李洋', '本科', null, '计算机科学与技术', null, '3');
INSERT INTO `stu_info` VALUES ('82', '张伟强', '本科', null, '电子信息工程', null, '3');
INSERT INTO `stu_info` VALUES ('83', '杨士杰', '本科', null, '软件工程', null, '3');
INSERT INTO `stu_info` VALUES ('84', '陈甜甜', '本科', null, '计算机科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('85', '储成云', '本科', null, '电子信息工程', null, '4');
INSERT INTO `stu_info` VALUES ('86', '林启炎', '本科', null, '计算机科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('87', '傅昆', '本科', null, '旅游管理', null, '4');
INSERT INTO `stu_info` VALUES ('88', '汪攀', '本科', null, '电子信息工程', null, '4');
INSERT INTO `stu_info` VALUES ('89', '蒋伟', '本科', null, '计算机科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('90', '王刚', '本科', null, '电子信息工程', null, '4');
INSERT INTO `stu_info` VALUES ('91', '徐杨', '本科', null, '计算机科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('92', '姚晗', '本科', null, '计算机科学与技术（师范）', null, '4');
INSERT INTO `stu_info` VALUES ('93', '曹静', '本科', null, '电子商务', null, '4');
INSERT INTO `stu_info` VALUES ('94', '郑世清', '本科', null, '自动化', null, '4');
INSERT INTO `stu_info` VALUES ('95', '齐铭雪', '本科', null, '计算机科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('96', '张树勋', '本科', null, '电子信息工程', null, '4');
INSERT INTO `stu_info` VALUES ('97', '王成彬', '本科', null, '电气工程及其自动化', null, '4');
INSERT INTO `stu_info` VALUES ('98', '马声铃', '本科', null, '电子信息工程', null, '4');
INSERT INTO `stu_info` VALUES ('99', '陈梦迪', '本科', null, '计算机科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('100', '段亚飞', '本科', null, '计算机科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('101', '夏超', '本科', null, '计算机科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('102', '杨赛军', '本科', null, '软件工程', null, '4');
INSERT INTO `stu_info` VALUES ('103', '丁建', '本科', null, '信息与计算科学', null, '4');
INSERT INTO `stu_info` VALUES ('104', '戴宗良', '本科', null, '计算机科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('105', '伍维新', '本科', null, '计算机科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('106', '赵淑妮', '本科', null, '电子信息工程', null, '4');
INSERT INTO `stu_info` VALUES ('107', '史文祥', '本科', null, '电气工程及其自动化', null, '4');
INSERT INTO `stu_info` VALUES ('108', '朱帅', '本科', null, '电子信息科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('109', '陈小超', '本科', null, '电子信息科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('110', '陈友', '本科', null, '计算机科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('111', '李城城', '本科', null, '计算机科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('112', '李俊达', '本科', null, '电子信息科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('113', '鲁先锐', '本科', null, '电子信息科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('114', '孟凯', '本科', null, '电子信息工程', null, '4');
INSERT INTO `stu_info` VALUES ('115', '任清柯', '大专', null, '高等级公路维护与管理', null, '4');
INSERT INTO `stu_info` VALUES ('116', '石志诚', '本科', null, '电子与信息工程', null, '4');
INSERT INTO `stu_info` VALUES ('117', '谢长风', '本科', null, '信息与计算科学', null, '4');
INSERT INTO `stu_info` VALUES ('118', '章辉', '本科', null, '电子信息工程', null, '4');
INSERT INTO `stu_info` VALUES ('119', '朱喜', '本科', null, '电子信息科学与技术', null, '4');
INSERT INTO `stu_info` VALUES ('120', '涂必鹏', '本科', null, '信息显示与光电技术', null, '5');
INSERT INTO `stu_info` VALUES ('121', '贺宏雨', '本科', null, '信息显示与光电技术', null, '5');
INSERT INTO `stu_info` VALUES ('122', '周国军', '本科', null, '信息与计算科学', null, '5');
INSERT INTO `stu_info` VALUES ('123', '王炳超', '本科', null, '信息显示与光电技术', null, '5');
INSERT INTO `stu_info` VALUES ('124', '姜甫', '本科', null, '信息显示与光电技术', null, '5');
INSERT INTO `stu_info` VALUES ('125', '赵思奇', '本科', null, '计算机科学与技术', null, '5');
INSERT INTO `stu_info` VALUES ('126', '王超', '本科', null, '地理信息系统', null, '5');
INSERT INTO `stu_info` VALUES ('127', '刘东', '本科', null, '地理信息科学', null, '5');
INSERT INTO `stu_info` VALUES ('128', '荣光海', '本科', null, '信息显示与光电技术', null, '5');
INSERT INTO `stu_info` VALUES ('129', '盛涛', '本科', null, '信息显示与光电技术', null, '5');
INSERT INTO `stu_info` VALUES ('130', '欧诚越', '本科', null, '计算机科学与技术', null, '5');
INSERT INTO `stu_info` VALUES ('131', '王宏伟', '本科', null, '计算机科学与技术', null, '5');
INSERT INTO `stu_info` VALUES ('132', '朱鹏辉', '本科 ', null, '信息显示与光电技术', null, '5');
INSERT INTO `stu_info` VALUES ('133', '刘娇', '本科', null, '信息与计算科学', null, '5');
INSERT INTO `stu_info` VALUES ('134', '欧丽冰', '本科', null, '信息与计算科学', null, '5');
INSERT INTO `stu_info` VALUES ('135', '张欢', '本科', null, '信息与计算科学', null, '5');
INSERT INTO `stu_info` VALUES ('136', '姚筱筱', '大专', null, '通信技术', null, '5');
INSERT INTO `stu_info` VALUES ('137', '方平', '本科', null, '电子信息工程', null, '5');
INSERT INTO `stu_info` VALUES ('138', '周维秀', '本科', null, '计算机科学与技术', null, '5');
INSERT INTO `stu_info` VALUES ('139', '吴佳佳', '本科', null, '计算机科学与技术', null, '5');
INSERT INTO `stu_info` VALUES ('140', '刘阔', '本科', null, '计算机科学与技术（师范）', null, '5');
INSERT INTO `stu_info` VALUES ('141', '王帅', '大专', null, '机电一体化', null, '5');
INSERT INTO `stu_info` VALUES ('142', '庄鹏成', '专科', null, '机电一体化', null, '5');
INSERT INTO `stu_info` VALUES ('143', '王欣如', '本科', null, '通信工程', null, '5');
INSERT INTO `stu_info` VALUES ('144', '周陈园', '专科', null, '建筑工程技术', null, '5');
INSERT INTO `stu_info` VALUES ('145', '刘萱', '本科', null, '信息与计算科学', null, '6');
INSERT INTO `stu_info` VALUES ('146', '杜庆振', '本科', null, '电子信息科学与技术', null, '6');
INSERT INTO `stu_info` VALUES ('147', '韩业春', '本科', null, '计算机科学与技术', null, '6');
INSERT INTO `stu_info` VALUES ('148', '齐连山', '本科', null, '计算机科学与技术', null, '6');
INSERT INTO `stu_info` VALUES ('149', '施朋', '本科', null, '计算机科学与技术', null, '6');
INSERT INTO `stu_info` VALUES ('150', '张智', '本科', null, '计算机科学与技术', null, '6');
INSERT INTO `stu_info` VALUES ('151', '刘健根', '本科', null, '软件工程', null, '6');
INSERT INTO `stu_info` VALUES ('152', '余涛', '本科', null, '软件工程', null, '6');
INSERT INTO `stu_info` VALUES ('153', '吕家靖', '本科', null, '软件工程', null, '6');
INSERT INTO `stu_info` VALUES ('154', '关蕤', '大专', null, '计算机网络技术', null, '6');
INSERT INTO `stu_info` VALUES ('155', '束永东', '本科', null, '网络工程', null, '6');
INSERT INTO `stu_info` VALUES ('156', '夏勋', '本科', null, '信息工程', null, '6');
INSERT INTO `stu_info` VALUES ('157', '姚涵淘', '本科', null, '土木工程', null, '7');
INSERT INTO `stu_info` VALUES ('158', '徐晶晶', '本科', null, '电气工程及其自动化', null, '7');
INSERT INTO `stu_info` VALUES ('159', '尹海业', '本科', null, '计算机科学与技术', null, '7');
INSERT INTO `stu_info` VALUES ('160', '陈江虎', '本科', null, '计算机科学与技术', null, '7');
INSERT INTO `stu_info` VALUES ('161', '王冬冬', '本科', null, '计算机科学与技术', null, '7');
INSERT INTO `stu_info` VALUES ('162', '李治强', '大专', null, '建筑工程管理', null, '7');
INSERT INTO `stu_info` VALUES ('163', '解光林', '本科', null, '资源环境与城乡规划管理', null, '7');
INSERT INTO `stu_info` VALUES ('164', '李金超', '本科', null, '计算机科学与技术', null, '7');
INSERT INTO `stu_info` VALUES ('165', '陈峰', '本科', null, '统计学', null, '7');
INSERT INTO `stu_info` VALUES ('166', '詹敏亮', '本科', null, '数学与应用数学', null, '7');
INSERT INTO `stu_info` VALUES ('167', '徐鹏飞', '本科', null, '土木工程', null, '7');
INSERT INTO `stu_info` VALUES ('168', '李伟', '本科', null, '电气工程及其自动化', null, '7');
INSERT INTO `stu_info` VALUES ('169', '喻超凡', '本科', null, '计算机科学与技术', null, '7');
INSERT INTO `stu_info` VALUES ('170', '刘倩倩', '本科', null, '信息与计算科学', null, '7');
INSERT INTO `stu_info` VALUES ('171', '吴其顺', '大专', null, '计算机应用', null, '7');
INSERT INTO `stu_info` VALUES ('172', '姚鑫鑫', '本科', null, '电子信息科学与技术', null, '7');
INSERT INTO `stu_info` VALUES ('173', '孙传磊', '本科', null, '特种能源工程与烟火技术', null, '7');
INSERT INTO `stu_info` VALUES ('174', '任毛毛', '本科', null, '自动化', null, '7');
INSERT INTO `stu_info` VALUES ('175', '刘晓堃', '本科', null, '物联网工程', null, '7');
INSERT INTO `stu_info` VALUES ('176', '李磊', '专科', null, '汽车检测与维修', null, '7');
INSERT INTO `stu_info` VALUES ('177', '顾猛', '本科', null, '统计学', null, '7');
INSERT INTO `stu_info` VALUES ('178', '吕彬', '本科', null, '自动化', null, '8');
INSERT INTO `stu_info` VALUES ('179', '王子炫', '本科', null, '电子科学与技术', null, '8');
INSERT INTO `stu_info` VALUES ('180', '孟令时', '本科', null, '应用化学', null, '8');
INSERT INTO `stu_info` VALUES ('181', '吕志伟', '专科', null, '会计', null, '8');
INSERT INTO `stu_info` VALUES ('182', '周洁', '本科', null, '信息工程', null, '8');
INSERT INTO `stu_info` VALUES ('183', '王深圳', '本科', null, '电子信息工程', null, '8');
INSERT INTO `stu_info` VALUES ('184', '徐礼强', '本科', null, '电子信息工程', null, '8');
INSERT INTO `stu_info` VALUES ('185', '费先军', '本科', null, '计算机科学与技术', null, '8');
INSERT INTO `stu_info` VALUES ('186', '徐汉文', '本科', null, '工业设计', null, '8');
INSERT INTO `stu_info` VALUES ('187', '王明明', '本科', null, '农学', null, '8');
INSERT INTO `stu_info` VALUES ('188', '未治龙', '大专', null, '物流管理', null, '8');
INSERT INTO `stu_info` VALUES ('189', '余文静', '大专', null, '软件技术', null, '8');
INSERT INTO `stu_info` VALUES ('190', '李涛', '本科', null, '信息显示与光电技术', null, '8');
INSERT INTO `stu_info` VALUES ('191', '张慧敏', '专科', null, '动漫设计与制作', null, '8');
INSERT INTO `stu_info` VALUES ('192', '王鹏', '本科', null, '电气工程及其自动化', null, '8');
INSERT INTO `stu_info` VALUES ('193', '方子君', '本科', null, '土木工程', null, '8');
INSERT INTO `stu_info` VALUES ('194', '许杰', '本科', null, '信息与计算科学', null, '8');
INSERT INTO `stu_info` VALUES ('195', '王猛', '大专', null, '电子商务', null, '8');
INSERT INTO `stu_info` VALUES ('196', '刘凯', '本科', null, '计算机科学与技术', null, '8');
INSERT INTO `stu_info` VALUES ('197', '张彬', '本科', null, '计算机科学与技术', null, '8');
INSERT INTO `stu_info` VALUES ('198', '朱学远', '本科', null, '计算机科学与技术', null, '8');
INSERT INTO `stu_info` VALUES ('199', '袁明亮', '本科', null, '光电信息科学与技术', null, '8');
INSERT INTO `stu_info` VALUES ('200', '席志成', '本科', null, '计算机科学与技术', null, '8');
INSERT INTO `stu_info` VALUES ('201', '刘硕', '本科', null, '计算机科学与技术', null, '8');
INSERT INTO `stu_info` VALUES ('202', '崔志翔', '本科', null, '计算机科学与技术', null, '8');
INSERT INTO `stu_info` VALUES ('203', '朱明姚', '本科', null, '计算机科学与技术', null, '8');
INSERT INTO `stu_info` VALUES ('204', '丁鹏', '本科', null, '计算机科学与技术', null, '8');
INSERT INTO `stu_info` VALUES ('205', '李扬', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('206', '汪蕾', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('207', '尹厚杰', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('208', '李雪丽', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('209', '方韧志', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('210', '高曲', '专科', null, '计算机信息管理 ', null, '9');
INSERT INTO `stu_info` VALUES ('211', '戴磊', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('212', '张娜', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('213', '孟金霞', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('214', '王静文', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('215', '杨国庆 ', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('216', '张韬', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('217', '钱磊', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('218', '梁松', '大专', null, '计算机系统维护', null, '9');
INSERT INTO `stu_info` VALUES ('219', '李先婷', '大专', null, '软件技术', null, '9');
INSERT INTO `stu_info` VALUES ('220', '江琪', '本科', null, '国际商学院', null, '9');
INSERT INTO `stu_info` VALUES ('221', '朱正琴', '中专', null, '美工', null, '9');
INSERT INTO `stu_info` VALUES ('222', '刘国俊', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('223', '许永康', '本科', null, '计科嵌入式', null, '9');
INSERT INTO `stu_info` VALUES ('224', '王萍萍', '大专', null, '计算机信息管理', null, '9');
INSERT INTO `stu_info` VALUES ('225', '胡文竹', '专科', null, '计算机应用', null, '9');
INSERT INTO `stu_info` VALUES ('226', '徐丽', '高中', null, '', null, '9');
INSERT INTO `stu_info` VALUES ('227', '王旭', '本科', null, '软件工程', null, '10');
INSERT INTO `stu_info` VALUES ('228', '王星星', '本科', null, '软件工程', null, '10');
INSERT INTO `stu_info` VALUES ('229', '严超', '本科', null, '软件工程', null, '10');
INSERT INTO `stu_info` VALUES ('230', '朱新春', '本科', null, '软件工程', null, '10');
INSERT INTO `stu_info` VALUES ('231', '梅健勇', '本科', null, '信息管理与信息系统', null, '10');
INSERT INTO `stu_info` VALUES ('232', '孙亚东', '本科', null, '生物工程', null, '10');
INSERT INTO `stu_info` VALUES ('233', '任玉松', '本科', null, '电子信息工程', null, '10');
INSERT INTO `stu_info` VALUES ('234', '高磊', '本科', null, '自动化', null, '10');
INSERT INTO `stu_info` VALUES ('235', '李贤胜', '本科', null, '计算机', null, '10');
INSERT INTO `stu_info` VALUES ('236', '赵朋朋', '本科', null, '遥感', null, '10');
INSERT INTO `stu_info` VALUES ('237', '钟靳', '本科', null, '电子信息工程', null, '10');
INSERT INTO `stu_info` VALUES ('238', '崔摇摇', '专科', null, '计算机网络', null, '10');
INSERT INTO `stu_info` VALUES ('239', '王心雨', '本科', null, '医药软件', null, '10');
INSERT INTO `stu_info` VALUES ('240', '张倩', '本科', null, '计算机科学与技术', null, '10');
INSERT INTO `stu_info` VALUES ('241', '徐展', '本科', null, '计算机科学与技术', null, '10');
INSERT INTO `stu_info` VALUES ('242', '张龙飞', '本科', null, '计算机科学与技术', null, '10');
INSERT INTO `stu_info` VALUES ('243', '沈红玺', '专科', null, '汽车电子', null, '10');
INSERT INTO `stu_info` VALUES ('244', '陈望', '本科', null, '电子商务', null, '10');
INSERT INTO `stu_info` VALUES ('245', '刘振宇', '大专', null, '行政管理', null, '10');
INSERT INTO `stu_info` VALUES ('246', '杨宇', '本科', null, '机械设计制造及其自动化', null, '10');
INSERT INTO `stu_info` VALUES ('247', '庄飞', '本科', null, '电子信息工程', null, '10');
INSERT INTO `stu_info` VALUES ('248', '魏阳', '本科', null, '电子信息工程', null, '10');
INSERT INTO `stu_info` VALUES ('249', '段梦倩', '本科', null, '通信工程', null, '10');
INSERT INTO `stu_info` VALUES ('250', '曹珺', '本科', null, '通信工程', null, '10');
INSERT INTO `stu_info` VALUES ('251', '唐先普', '本科', null, '计算机科学与技术', null, '10');
INSERT INTO `stu_info` VALUES ('252', '许星源', '大专', null, '土木工程', null, '10');
INSERT INTO `stu_info` VALUES ('253', '杨威', '专科', null, '机电一体化', null, '10');
INSERT INTO `stu_info` VALUES ('254', '朱敏', '本科', null, '自动化', null, '10');
INSERT INTO `stu_info` VALUES ('255', '何晓伟', '本科', null, '计算机科学与技术', null, '10');
INSERT INTO `stu_info` VALUES ('256', '王雷雷', '本科', null, '农学', null, '10');
INSERT INTO `stu_info` VALUES ('257', '陈峰', '硕士', null, '矿业工程', null, '10');
INSERT INTO `stu_info` VALUES ('258', '赵海军', '本科', null, '物理学（师范）', null, '10');
INSERT INTO `stu_info` VALUES ('259', '吴源', '本科', null, '信息与计算科学', null, '10');
INSERT INTO `stu_info` VALUES ('260', '方卓', '本科', null, '计算机科学与技术', null, '10');
INSERT INTO `stu_info` VALUES ('261', '王世民', '本科', null, '计算机科学与技术', null, '11');
INSERT INTO `stu_info` VALUES ('262', '董义文', '本科', null, '网络工程', null, '11');
INSERT INTO `stu_info` VALUES ('263', '张鹏鹏', '本科', null, '通信工程', null, '11');
INSERT INTO `stu_info` VALUES ('264', '李俊鹏', '本科', null, '计算机科学与技术', null, '11');
INSERT INTO `stu_info` VALUES ('265', '陈光强', '本科', null, '通信工程', null, '11');
INSERT INTO `stu_info` VALUES ('266', '  方癸酉', '本科', null, '计算机科学与技术', null, '11');
INSERT INTO `stu_info` VALUES ('267', '刘波', '本科', null, '通信工程', null, '11');
INSERT INTO `stu_info` VALUES ('268', '杨芝玮 ', '本科', null, ' 自动化', null, '11');
INSERT INTO `stu_info` VALUES ('269', '王栋', '本科', null, '信息管理与信息系统', null, '11');
INSERT INTO `stu_info` VALUES ('270', '王常亮', '本科', null, '网络工程', null, '11');
INSERT INTO `stu_info` VALUES ('271', '李爽', '大专', null, '商务管理', null, '11');
INSERT INTO `stu_info` VALUES ('272', '袁锦涛', '本科', null, '计算机', null, '11');
INSERT INTO `stu_info` VALUES ('273', '吴佳程', '本科', null, '计算机', null, '11');
INSERT INTO `stu_info` VALUES ('274', '魏明', '本科', null, '计算机科学与技术', null, '11');
INSERT INTO `stu_info` VALUES ('275', '苗康', '本科', null, '数字媒体技术', null, '11');
INSERT INTO `stu_info` VALUES ('276', '王海霞', '本科', null, '数字媒体技术', null, '11');
INSERT INTO `stu_info` VALUES ('277', '张超越', '本科', null, '数字媒体技术', null, '11');
INSERT INTO `stu_info` VALUES ('278', '赵良运', '本科', null, '计算机科学与技术', null, '11');
INSERT INTO `stu_info` VALUES ('279', '吴凯', '本科', null, '数字媒体技术', null, '11');
INSERT INTO `stu_info` VALUES ('280', '陈建生', '本科', null, '计算机科学与技术', null, '11');
INSERT INTO `stu_info` VALUES ('281', '高晗', '本科', null, '物联网工程', null, '11');
INSERT INTO `stu_info` VALUES ('282', '朱海盟', '本科', null, '计算机科学与技术', null, '11');
INSERT INTO `stu_info` VALUES ('283', '孙刘荣', '本科', null, '数字媒体', null, '11');
INSERT INTO `stu_info` VALUES ('284', '梁新宇', '本科', null, '数字媒体技术', null, '11');
INSERT INTO `stu_info` VALUES ('285', '徐志文', '本科', null, '数字媒体技术', null, '11');
INSERT INTO `stu_info` VALUES ('286', '钱福琛', '本科', null, '数字媒体技术', null, '11');
INSERT INTO `stu_info` VALUES ('287', '俞能列', '本科', null, '物联网工程', null, '11');
INSERT INTO `stu_info` VALUES ('288', '黄子立', '本科', null, '数字媒体', null, '11');
INSERT INTO `stu_info` VALUES ('289', '王丽阳', '本科', null, '数字媒体技术', null, '11');
INSERT INTO `stu_info` VALUES ('290', '辛永康', '本科', null, '计算机科学与技术', null, '11');
INSERT INTO `stu_info` VALUES ('291', '黄思龙', '本科', null, '物联网工程', null, '11');
INSERT INTO `stu_info` VALUES ('292', '胡健', '本科', null, '网络工程', null, '11');
INSERT INTO `stu_info` VALUES ('293', '李叔俊', '本科', null, '网络工程', null, '11');
INSERT INTO `stu_info` VALUES ('294', '徐嫚嫚', '大专', null, '计算机应用技术', null, '12');
INSERT INTO `stu_info` VALUES ('295', '谢东', '本科', null, '', null, '12');
INSERT INTO `stu_info` VALUES ('296', '胡亚强', '本科', null, '光电信息科学与工程', null, '12');
INSERT INTO `stu_info` VALUES ('297', '徐良良', '本科', null, '光电', null, '12');
INSERT INTO `stu_info` VALUES ('298', '姜孝伟', '本科', null, '光电信息科学与工程', null, '12');
INSERT INTO `stu_info` VALUES ('299', '陈海超', '本科', null, '光电信息', null, '12');
INSERT INTO `stu_info` VALUES ('300', '朱峰', '本科', null, '数学与应用数学', null, '12');
INSERT INTO `stu_info` VALUES ('301', '刘中东', '本科', null, '计算机科学与技术', null, '12');
INSERT INTO `stu_info` VALUES ('302', '陶靖', '本科', null, '物联网工程', null, '12');
INSERT INTO `stu_info` VALUES ('303', '王诗强', '本科', null, '计算机科学与技术', null, '12');
INSERT INTO `stu_info` VALUES ('304', '许星成', '本科', null, '信息工程', null, '12');
INSERT INTO `stu_info` VALUES ('305', '章攀宇', '本科', null, '计算机科学与技术', null, '12');
INSERT INTO `stu_info` VALUES ('306', '张坤鹏', '本科', null, '物联网工程', null, '12');
INSERT INTO `stu_info` VALUES ('307', '朱亦然', '本科', null, '物理网工程', null, '12');
INSERT INTO `stu_info` VALUES ('308', '王杰', '本科', null, '软件工程', null, '12');
INSERT INTO `stu_info` VALUES ('309', '张东林', '本科', null, '软件工程', null, '12');
INSERT INTO `stu_info` VALUES ('310', '张堃', '本科', null, '软件工程', null, '12');
INSERT INTO `stu_info` VALUES ('311', '刘敏辉', '本科', null, '软件工程', null, '12');
INSERT INTO `stu_info` VALUES ('312', '陈剑波', '本科', null, '软件工程', null, '12');
INSERT INTO `stu_info` VALUES ('313', '杨定延', '本科', null, '软件工程', null, '12');
INSERT INTO `stu_info` VALUES ('314', '鲍程', '本科', null, '软件工程', null, '12');
INSERT INTO `stu_info` VALUES ('315', '邵威', '本科', null, '软件工程', null, '12');
INSERT INTO `stu_info` VALUES ('316', '阮涛', '本科', null, '软件工程', null, '12');
INSERT INTO `stu_info` VALUES ('317', '张浩然', '本科', null, '软件工程', null, '12');
INSERT INTO `stu_info` VALUES ('318', '钱明明', '本科', null, ' 软件工程             ', null, '12');
INSERT INTO `stu_info` VALUES ('319', '伍健', '本科', null, '材料化学', null, '12');
INSERT INTO `stu_info` VALUES ('320', '曹志勇', '本科', null, '计算机科学与技术', null, '12');
INSERT INTO `stu_info` VALUES ('321', '叶书', '本科', null, '计算机科学与技术', null, '12');
INSERT INTO `stu_info` VALUES ('322', '唐璐', '本科', null, '信息管理与信息系统', null, '12');
INSERT INTO `stu_info` VALUES ('323', '董紫檀', '本科', null, '信息管理与信息系统', null, '12');
INSERT INTO `stu_info` VALUES ('324', '彭慧', '本科', null, '信息管理与信息系统', null, '12');
INSERT INTO `stu_info` VALUES ('325', '许颜圣', '本科', null, '信息管理与信息系统', null, '12');
INSERT INTO `stu_info` VALUES ('326', '王志成', '本科', null, '计算机科学与技术', null, '12');
INSERT INTO `stu_info` VALUES ('327', '钱云云', '本科', null, '计算机科学与技术', null, '12');
INSERT INTO `stu_info` VALUES ('328', '孙蕾', '本科', null, '数学与应用数学', null, '12');
INSERT INTO `stu_info` VALUES ('329', '陈国鹏', '本科', null, '信息管理与信息系统', null, '12');
INSERT INTO `stu_info` VALUES ('330', '张银龙', '本科', null, '网络工程', null, '12');
INSERT INTO `stu_info` VALUES ('331', '缪磊', '本科', null, '通信工程', null, '12');
INSERT INTO `stu_info` VALUES ('332', '朱红国', '本科', null, '通信工程', null, '12');
INSERT INTO `stu_info` VALUES ('333', '文继铸', '本科', null, '电子信息技术', null, '12');
INSERT INTO `stu_info` VALUES ('334', '陆浩伟', '本科', null, '数学与应用数学', null, '12');
INSERT INTO `stu_info` VALUES ('335', '梁修虎', '本科', null, '信息与计算科学', null, '12');
INSERT INTO `stu_info` VALUES ('336', '陈瑞', '本科', null, '信息与计算科学', null, '12');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `te_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'teId',
  `te_name` varchar(50) DEFAULT '' COMMENT 'teName',
  `teacher_says` varchar(100) DEFAULT '' COMMENT 'teacherSays',
  `te_description` varchar(500) DEFAULT '' COMMENT 'teDescription',
  `te_header` varchar(100) DEFAULT '' COMMENT 'teHeader',
  PRIMARY KEY (`te_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='`teacher`';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '谢霆锋', '一切为了孩子', '蔻丁Android学科总监，9年多移动应用相关工作经验，国内Android开发工程师，深入了解移动应用系统，在网络协议与手机浏览器内核设计方面有丰富的经验。从事工作涉及企业办公、移动通讯等领域，为企业培养众多业务骨干。擅长总结归纳，化繁为简，化难为易，教学方法独特，富有激情，擅以理论结合实际、提高学生项目开发实战的能力。技术领域涉及广泛，曾主导定制手机浏览器内核设计、开发工作；参加移动运营声众多项目设计、实施；参与海外移动运营商移动终端软件项目设计、实施。参与多项企业级移动应用开发工作', '/upload/teacherPicture/201703150956051489542965844.jpg');
INSERT INTO `teacher` VALUES ('3', '吴彦祖', '孩子就是我的一切', '蔻丁Android学科副总监，7年多教育工作经验，3年多Android研发工作经验。2007年进入中科院西安网络中心从事J2EE教育与研发工作，2009年担任陕西省税务局软件开发培训的《软件架构设计》与《Oracle数据库管理》方面的讲师。自2010年以来，先后参与国家基金委基金项目管理系统、中科院公文平台系统、吉林省白城市工商局巡检移动终端Android手机版，并承担与部队有关的Android平板项目研发的技术主管。', '/upload/teacherPicture/201703150957041489543024685.jpg');
INSERT INTO `teacher` VALUES ('5', '褚世伟（褚哥）', '把时间浪费在美好的事物上！', '有多年的项目实战经验，曾在全通教育，中兴通讯等上市公司担任高级软件工程师，项目经理一职，曾主导的项目有中国移动营销管理平台，全通企业大学学习云平台，高校教学信息化管理云平台，中兴学习云平台等众多项目；现在教育培训方向也有自己的心得体会，深知学习的难度曲线，注重学员学习引导，倡导实战，注重学员理论基本功的沉淀。', '/upload/teacherPicture/201703150958001489543080178.jpg');
INSERT INTO `teacher` VALUES ('6', '古天乐', '高调做事，低调做人！', '从业软件行业10多年，有着丰富的前端、后端开发和管理经验。参与过华为和IBM联合项目MEAP的开发，中南财经政法大学的机房管理系统开发、东风雪铁龙多个企业项目开发、龙工、三一重工、安琪等多个大型企业的项目开发，能为学员项目实战提供丰富的经验。5年多的教学经验，授课幽默风趣，善于跟学员沟通，教授过的学员不少成功入职腾讯、百度、阿里巴巴，且均有不错的口碑。', '/upload/teacherPicture/201703150958241489543104726.jpg');
INSERT INTO `teacher` VALUES ('7', '李连杰', '细节决定成败, 注重每一环节！', '10年软件开发经验，曾先后担任国际知名IT公司的软件研发、项目规划及策划工作，主持并参与P-Gate, USonline,TPM2009等要求高、时间紧的多个大型欧美项目的开发，积累了丰富的代码编写、调试及系统级别的评估等实战经验。\r\n授课有激情、关注每一环节，要求学生在开发过程中注重细节!', '/upload/teacherPicture/201703150958501489543130861.jpg');
INSERT INTO `teacher` VALUES ('8', '王珞丹', '多年后你一定会感谢现在努力的自己！', '蔻丁教学部Java讲师，多年软件开发经验，曾经参与中国人寿保险投保项目(PICC人寿保险)的开发工作，现此项目已经上线。有java培训从业经验，曾从事互联网开发相关课程的教学工作，具有丰富的教学经验，深厚的编程底蕴，有趣的学习氛围，洪亮的声音把您带入移动互联网开发的知识殿堂；授课由浅入深、生动实用，把生活案例引入到学习中，让枯燥的学习变成有趣的事，在愉快的氛围里学到了知识。', '/upload/teacherPicture/201703150959141489543154776.jpg');
INSERT INTO `teacher` VALUES ('9', '鹿晗', '天行健君子以自强不息，地势坤君子以厚德载物！', '毕业于清华大学微软全球最具价值专家，微软Tech.Ed 大会金牌讲师清华大学Oracle-java技术俱乐部，清华大学谷歌俱乐部，清华大学微软俱乐部创始人,资深软件架构师，intel软件技术专家，CSDN著名技术专家，具备多年的软件编程经验与讲师授课经历，并在人机交互，教育，信息安全，广告系统开发诸多产品，具备深厚的项目管理经验以及研发经验, 拥有两项发明专利。业界拥有极高的教学口碑与业界名声，曾带领学生微软编程大赛获得大奖。曾经先后巡讲数十所中学与高校，影响数十万人。并指导衡水中学学生获得信息学奥林匹克竞赛金牌1枚，银牌两枚，铜牌一枚，金牌获得保送清华大学计算机系的资格，银牌分别获得上海交通大学与中国科学技术大学的保送资格。', '/upload/teacherPicture/201703150959381489543178201.jpg');
INSERT INTO `teacher` VALUES ('10', '邓超', '教育的唯一工作与全部工作可以总结在这一概念之中——道德！', '蔻丁HTML5教学总监，蔻丁UI教学总监。原中科院计算所专家，曾任北京市高校师资培训中心特邀讲师,多年担任北京市属高校师资培训工作。11年的UI、WEB前端开发教育培训经验，4年HTML5开发经验，深刻理解教学研究、教学管理工作,热爱教育事业。精通HTML5.0及CSS3.0、JavaScript等前端技术，授课通俗易懂，注重学员学习体验，多次获得教学效果方面奖励，崇尚化繁为简，快乐学习，快乐成功的教学方式。', '/upload/teacherPicture/201703151000521489543252980.jpg');
INSERT INTO `teacher` VALUES ('15', '谢美红', '没有教不会的学员，只有不会教的老师', '好……很好……非常好……让我们来看这道题', null);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` bigint(15) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `real_name` varchar(10) NOT NULL COMMENT '真实姓名',
  `sex` enum('男','女') NOT NULL COMMENT '性别',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `email` varchar(128) NOT NULL COMMENT '电子邮箱',
  `address` varchar(256) DEFAULT NULL COMMENT '住址',
  `head_pic` varchar(100) DEFAULT NULL COMMENT '用户图像',
  `role_id` bigint(15) NOT NULL DEFAULT '0' COMMENT '用户角色ID',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '上次登录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'coffee377', 'wuyujie', '吴玉杰', '男', '13956945898', 'coffee377@dingtalk.com', '安徽省合肥市高新区', 'upload/user.jpg', '-1', null, '2016-12-29 12:38:58', null);
INSERT INTO `user_info` VALUES ('2', 'demo', '123456', 'Demo', '男', '12345678901', 'demo@163.com', null, null, '0', '2017-03-15 23:35:45', '2017-03-15 23:35:45', null);
