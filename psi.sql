/*
Navicat MySQL Data Transfer

Source Server         : zp
Source Server Version : 80012
Source Host           : 127.0.0.1:3306
Source Database       : psi

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-09-19 15:30:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_class
-- ----------------------------
DROP TABLE IF EXISTS `tb_class`;
CREATE TABLE `tb_class` (
  `cid` int(5) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cintrog` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE,
  KEY `cname` (`cname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tb_class
-- ----------------------------
INSERT INTO `tb_class` VALUES ('1', '男士短袖', '普通的男式短袖');
INSERT INTO `tb_class` VALUES ('2', '女士短袖', '好看的女式短袖');
INSERT INTO `tb_class` VALUES ('3', '帽子', '羊毛针织帽子、鸭舌帽等等');
INSERT INTO `tb_class` VALUES ('4', '围巾', '好看的围巾');
INSERT INTO `tb_class` VALUES ('5', '男士短裤', '运动型的男士短裤、休闲款等等');
INSERT INTO `tb_class` VALUES ('6', '短裙', '一些好看的短裙');

-- ----------------------------
-- Table structure for tb_in
-- ----------------------------
DROP TABLE IF EXISTS `tb_in`;
CREATE TABLE `tb_in` (
  `ipid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `inu` int(11) DEFAULT NULL,
  `idate` date NOT NULL,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `iintrog` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ipid`),
  KEY `uid` (`idate`),
  KEY `pid` (`pname`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_in
-- ----------------------------
INSERT INTO `tb_in` VALUES ('2', '阿迪短袖(女)', '女士短袖', '20', '2019-09-16', '唐伯虎', '下午三轮车拖过来的');
INSERT INTO `tb_in` VALUES ('10', '李宁短袖(女)', '女士短袖', '2', '2019-09-18', 'admin', 'tetst');
INSERT INTO `tb_in` VALUES ('12', '女式休闲短裙', '短裙', '1000', '2019-09-19', 'admin', 'test');

-- ----------------------------
-- Table structure for tb_out
-- ----------------------------
DROP TABLE IF EXISTS `tb_out`;
CREATE TABLE `tb_out` (
  `opid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `onu` int(11) DEFAULT NULL,
  `odate` date NOT NULL,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ointrog` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`opid`),
  KEY `uid` (`odate`),
  KEY `pid` (`pname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_out
-- ----------------------------
INSERT INTO `tb_out` VALUES ('1', '阿玛尼短袖(男)', '男士短袖', '100', '2019-09-16', '唐伯虎', '退货');
INSERT INTO `tb_out` VALUES ('7', '李宁短袖(女)', '女士短袖', '3', '2019-09-18', 'admin', 'test');
INSERT INTO `tb_out` VALUES ('8', '耐克短袖(男)', '男士短袖', '100', '2019-09-19', '', '卖了');
INSERT INTO `tb_out` VALUES ('9', '女式休闲短裙', '短裙', '2', '2019-09-19', '', '');

-- ----------------------------
-- Table structure for tb_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE `tb_product` (
  `pid` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `pnu` int(11) DEFAULT NULL,
  `wnu` int(11) DEFAULT NULL,
  `pintrog` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE,
  KEY `cid` (`cname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tb_product
-- ----------------------------
INSERT INTO `tb_product` VALUES ('1001', '耐克短袖(男)', '258.00', '1000', '45', '成都尚都严老板处进货', '男士短袖');
INSERT INTO `tb_product` VALUES ('1002', '阿玛尼短袖(男)', '299.80', '500', '50', '温江王老板处进货', '男士短袖');
INSERT INTO `tb_product` VALUES ('2001', '阿迪达斯短袖(女)', '312.00', '458', '50', '成都春熙路张老板处进货', '女士短袖');
INSERT INTO `tb_product` VALUES ('2002', '李宁短袖(女)', '175.50', '366', '60', '浙江李老板处进货', '女士短袖');
INSERT INTO `tb_product` VALUES ('3001', '羊毛红色针织帽', '58.80', '400', '50', '北京周老板处进货', '帽子');
INSERT INTO `tb_product` VALUES ('6001', '女式休闲短裙', '879.00', '1098', '47', '海宁王老板处进货', '短裙');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `introg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', 'admin', '男', '18111111112', '645@163.com', '本店老板');
INSERT INTO `tb_user` VALUES ('2', '秋香', '123456', '女', '13311111111', '321@qq.com', '周三、四负责人员');
INSERT INTO `tb_user` VALUES ('3', '唐伯虎', '123456', '男', '15125694567', '123@qq.com', '周一、二负责人员');
INSERT INTO `tb_user` VALUES ('6', '124789rry', '123', '男', '123456789555', '123@q.com', 'test777');
