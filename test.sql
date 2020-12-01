/*
 Navicat Premium Data Transfer

 Source Server         : 20190106
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 01/12/2020 22:19:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES (1, '户外运动');
INSERT INTO `t_category` VALUES (2, '电脑数码');
INSERT INTO `t_category` VALUES (3, '母婴童装');
INSERT INTO `t_category` VALUES (4, '烟酒食品');
INSERT INTO `t_category` VALUES (5, '鞋包饰品');
INSERT INTO `t_category` VALUES (6, '国际大牌');
INSERT INTO `t_category` VALUES (7, '测试分类1');
INSERT INTO `t_category` VALUES (8, '测试分类2');
INSERT INTO `t_category` VALUES (9, '测试分类3');
INSERT INTO `t_category` VALUES (10, '测试分类4');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float(10, 2) NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES (1, '亚瑟士ASICI GEL-KAYANO24', 1218.88, 1);
INSERT INTO `t_product` VALUES (2, '联想拯救者刃9000', 6880.00, 2);
INSERT INTO `t_product` VALUES (3, '火鸡面', 7.90, 4);
INSERT INTO `t_product` VALUES (4, '婴儿手口湿巾', 29.90, 3);
INSERT INTO `t_product` VALUES (5, '香辣鸭锁骨', 16.80, 4);
INSERT INTO `t_product` VALUES (6, '红烧牛肉罐头', 29.90, 4);

-- ----------------------------
-- Table structure for t_resume
-- ----------------------------
DROP TABLE IF EXISTS `t_resume`;
CREATE TABLE `t_resume`  (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sub` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `edu` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `highschool` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `university` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `skill` varchar(2550) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `project` varchar(2550) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `intro` varchar(2550) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `addtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`rid`) USING BTREE,
  INDEX `sno_fk`(`sno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_resume
-- ----------------------------
INSERT INTO `t_resume` VALUES (1, '201919410202', '李成蹊', '男', '湖南省长沙市', '13607398862', '21', '湖南信息职业技术学院', '软件技术专业', '大学专科', '2013.8-2016.6 长沙市地质中学', '2016.8-2019.6 湖南信息职业技术学院', 'photo1.png', '熟练使用Spring、SpringMVC、Mybatis框架；熟练使用 JSP、Servlet；熟练使用 MySQL数据库；熟练使用HTML、CSS、JavaScript、JQuery、Ajax前端技术；熟悉solr全文搜索引擎工具包。熟悉Web Service技术。熟悉使用SVN、Git、Maven等项目开发及管理工具。熟悉Linux常用命令，能在Linux环境下进行简单开发。了解redis数据库及其缓存应用。', '<p>项目名称: 湖南信息职业技术学院学生管理系统</p><p>项目时间:2019.11-2019.12 </p><p>项目工具: Eclipse EE、MySQL、Tomcat</p><p>项目介绍:1.首页学生管理：学生列表、新增学生、删除学生、编辑修改学生等\r\n2.用户管理：管理员登录后可以管理用户、新增、删除、修改用户等3.简历管理：用户登录后可以查看、新增上传、修改、删除学生简历4.其他功能：登录时可以记住密码，完善的用户权限管理功能</p><p>我的职责:负责给项目组成员做饭洗衣端茶倒水买烟酒槟榔</p>', '大家好，我姓黄，红绿灯的黄。大学期间，我热爱学习，拥护中国共产党的领导，吃苦耐劳，抗压能力强，能适应长时间的加班。能接受长期出差。这个项目我要求大家一个礼拜之内做完，我不要我觉得，我要我觉得，听我的，我说了算，做完，一个礼拜全部全部做完！', '2019-11-11 11:11:11');
INSERT INTO `t_resume` VALUES (2, '201919410201', '赵聘婷', '女', '湖南省长沙市', '15173889653', '21', '湖南信息职业技术学院', '计算机软件技术', '大学专科', '2013.8-2016.6 长沙市十三中', '2016.8-2019.6 湖南信息职业技术学院', 'photo4.png', '测试', '测试', '测试', '2019-11-25 19:44:26');
INSERT INTO `t_resume` VALUES (3, '201919410204', '易涛', '男', '湖南省常德市', '13796588399', '22', '湖南信息职业技术学院', '移动互联应用技术', '大学专科', '2013.8-2016.6 长沙市十三中', '2016.8-2019.6 湖南信息职业技术学院', 'photo2.png', '测试', '测试', '测试', '2019-11-25 21:31:31');
INSERT INTO `t_resume` VALUES (4, '201919410203', '邓梦瑜', '女', '湖南省长沙市', '15173889653', '19', '湖南信息职业技术学院', '计算机软件技术', '大学专科', '望城一中', '湖南信息职业技术学院', 'photo3.png', 'Java', '菜市场管理系统', '大家好', '2020-05-14 14:22:06');
INSERT INTO `t_resume` VALUES (10, '201919410205', '张三', '男', '湖南省衡阳市', '15846853165', '20', '湖南信息职业技术学院', '计算机应用', '大学专科', '望城一中', '湖南信息职业技术学院', 'photo5.png', 'Java，Web前端开发，软件测试，产品经理，数据库', '天工开物系统', '我是张三', '2020-06-08 22:48:05');
INSERT INTO `t_resume` VALUES (11, '201919410206', '李四', '男', '湖南省衡阳市', '15846853165', '20', '湖南信息职业技术学院', '计算机应用', '大学专科', '望城一中', '湖南信息职业技术学院', 'photo6.png', 'Linux系统', '软件测试', '大家好，我是李四！', '2020-06-08 22:52:33');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `stuname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `stusex` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `stusub` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `stuclass` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `stuphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `stuaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `regtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES (1, '201919410201', '赵聘婷', '女', '计算机软件技术', '软件1908', '13978625361', '湖南省桃源县', '2019-09-09 10:24:35');
INSERT INTO `t_student` VALUES (2, '201919410202', '李成蹊', '男', '计算机软件技术', '软件1908', '13607398862', '湖南省长沙县', '2019-09-09 11:09:02');
INSERT INTO `t_student` VALUES (3, '201919410203', '邓梦瑜', '女', '移动互联应用技术', '移动1902', '13167119431', '四川省成都市', '2019-09-08 14:22:10');
INSERT INTO `t_student` VALUES (4, '201919410204', '易涛', '男', '移动互联应用技术', '移动1902', '13796588399', '湖南省常德市', '2019-09-08 15:46:05');
INSERT INTO `t_student` VALUES (5, '201919410205', '张三', '男', '计算机应用', '计应1802', '15846853165', '湖南省衡阳市', '2020-06-02 19:00:45');
INSERT INTO `t_student` VALUES (6, '201919410206', '李四', '男', '计算机应用', '计应1802', '15846853165', '湖南省衡阳市', '2020-06-04 11:39:30');
INSERT INTO `t_student` VALUES (7, '201919410207', '王五', '女', '软件技术', '软件1805', '15846853165', '湖南省娄底市', '2020-06-04 11:39:30');
INSERT INTO `t_student` VALUES (9, '201919410208', '赵六', '男', '大数据', '大数据1805', '15846853471', '湖南省怀化市', '2020-06-05 11:48:28');
INSERT INTO `t_student` VALUES (10, '201919410209', '易涛涛', '男', '移动互联应用技术', '移动1902', '15846853471', '湖南省常德市', '2020-06-05 11:51:14');
INSERT INTO `t_student` VALUES (11, '201919410210', '李成希', '女', '软件技术', '软件1812', '12222222222', '湖南省长沙县', '2020-06-05 11:54:36');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `addtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `lasttime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '123456', '2019-06-19 20:24:35', '2019-11-11 11:11:11', 11);
INSERT INTO `t_user` VALUES (2, 'teemo', '5201314', '2019-06-19 20:24:35', '2019-11-22 20:24:35', 6);
INSERT INTO `t_user` VALUES (3, 'jack', '111111', '2019-06-19 20:24:35', '2019-11-19 14:30:12', 2);
INSERT INTO `t_user` VALUES (7, 'tom', '123456', '2020-06-05 15:59:53', '2020-06-05 15:59:53', 1);

SET FOREIGN_KEY_CHECKS = 1;
