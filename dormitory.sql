/*
Navicat MySQL Data Transfer

Source Server         : sushe
Source Server Version : 50650
Source Host           : 124.222.51.88:8306
Source Database       : dormitory

Target Server Type    : MYSQL
Target Server Version : 50650
File Encoding         : 65001

Date: 2022-05-29 18:07:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banji
-- ----------------------------
DROP TABLE IF EXISTS `banji`;
CREATE TABLE `banji` (
  `id` int(32) NOT NULL,
  `snum` int(32) NOT NULL,
  `fid` int(32) DEFAULT NULL,
  `type` varchar(128) DEFAULT NULL,
  `bnum` varchar(128) DEFAULT NULL,
  `yuanxi` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banji
-- ----------------------------

-- ----------------------------
-- Table structure for baoxiu
-- ----------------------------
DROP TABLE IF EXISTS `baoxiu`;
CREATE TABLE `baoxiu` (
  `qid` int(32) NOT NULL,
  `text` text,
  `shijian` date DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baoxiu
-- ----------------------------

-- ----------------------------
-- Table structure for fudao
-- ----------------------------
DROP TABLE IF EXISTS `fudao`;
CREATE TABLE `fudao` (
  `id` int(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `age` int(32) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `pwd` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fudao
-- ----------------------------

-- ----------------------------
-- Table structure for gonggao
-- ----------------------------
DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE `gonggao` (
  `id` int(32) NOT NULL,
  `type` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `shijian` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gonggao
-- ----------------------------

-- ----------------------------
-- Table structure for lou
-- ----------------------------
DROP TABLE IF EXISTS `lou`;
CREATE TABLE `lou` (
  `id` int(32) NOT NULL,
  `type` varchar(64) DEFAULT NULL,
  `sid` int(32) NOT NULL,
  `weizhi` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lou
-- ----------------------------

-- ----------------------------
-- Table structure for qingjia
-- ----------------------------
DROP TABLE IF EXISTS `qingjia`;
CREATE TABLE `qingjia` (
  `sid` int(32) NOT NULL COMMENT '学生学号',
  `sname` varchar(64) NOT NULL COMMENT '学生姓名',
  `text` text NOT NULL,
  `type` varchar(128) DEFAULT NULL,
  `shijian` date DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qingjia
-- ----------------------------

-- ----------------------------
-- Table structure for qinshi
-- ----------------------------
DROP TABLE IF EXISTS `qinshi`;
CREATE TABLE `qinshi` (
  `id` int(32) NOT NULL,
  `lid` int(32) NOT NULL,
  `shuifei` float NOT NULL,
  `dianfei` float NOT NULL,
  `snum` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qinshi
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `bid` int(32) DEFAULT NULL,
  `qid` int(32) DEFAULT NULL,
  `age` int(16) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `pwd` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for suguan
-- ----------------------------
DROP TABLE IF EXISTS `suguan`;
CREATE TABLE `suguan` (
  `id` int(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `age` int(16) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `pwd` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suguan
-- ----------------------------
