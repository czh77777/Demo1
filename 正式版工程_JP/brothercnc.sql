/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50137
Source Host           : 127.0.0.1:3306
Source Database       : brothercnc

Target Server Type    : MYSQL
Target Server Version : 50137
File Encoding         : 65001

Date: 2021-06-10 16:33:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cnc_basics
-- ----------------------------
DROP TABLE IF EXISTS `cnc_basics`;
CREATE TABLE `cnc_basics` (
  `ID` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键自增ID',
  `CNCSN` varchar(255) DEFAULT NULL COMMENT 'CNC编号',
  `CNCName` varchar(255) DEFAULT NULL COMMENT 'CNC名称',
  `InsertTime` datetime DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cnc_basics
-- ----------------------------
INSERT INTO `cnc_basics` VALUES ('1', '01#CNC', 'Brother_221', '2021-06-10 11:27:26');
INSERT INTO `cnc_basics` VALUES ('2', '02#CNC', 'Brother_222', '2021-06-10 11:27:44');
INSERT INTO `cnc_basics` VALUES ('3', '03#CNC', 'Brother_223', '2021-06-10 11:27:46');
INSERT INTO `cnc_basics` VALUES ('4', '04#CNC', 'Brother_224', '2021-06-10 11:27:48');
INSERT INTO `cnc_basics` VALUES ('5', '05#CNC', 'Brother_225', '2021-06-10 11:27:49');
INSERT INTO `cnc_basics` VALUES ('6', '06#CNC', 'Brother_226', '2021-06-10 11:27:49');
INSERT INTO `cnc_basics` VALUES ('7', '07#CNC', 'Brother_227', '2021-06-10 11:27:50');
INSERT INTO `cnc_basics` VALUES ('8', '08#CNC', 'Brother_228', '2021-06-10 11:27:51');
INSERT INTO `cnc_basics` VALUES ('9', '09#CNC', 'Brother_229', '2021-06-10 11:27:51');
INSERT INTO `cnc_basics` VALUES ('10', '10#CNC', 'Brother_230', '2021-06-10 11:27:53');

-- ----------------------------
-- Table structure for cnc_cutter_count
-- ----------------------------
DROP TABLE IF EXISTS `cnc_cutter_count`;
CREATE TABLE `cnc_cutter_count` (
  `CNCNO` bigint(32) NOT NULL COMMENT '外键关联到CNC_Basics表',
  `CutterNO` int(10) DEFAULT NULL COMMENT '刀具号',
  `CutterCount` int(10) DEFAULT NULL COMMENT '刀具使用计数',
  `InsertTime` datetime DEFAULT NULL COMMENT '记录时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cnc_cutter_count
-- ----------------------------

-- ----------------------------
-- Table structure for cnc_info
-- ----------------------------
DROP TABLE IF EXISTS `cnc_info`;
CREATE TABLE `cnc_info` (
  `CNCNO` bigint(32) NOT NULL,
  `ProgSerio` varchar(100) DEFAULT NULL COMMENT '当前加工产品所使用的的NC程序编号',
  `RunMode` varchar(100) DEFAULT NULL COMMENT '当前设备的运行模式',
  `RunMode2` varchar(100) DEFAULT NULL COMMENT '运行模式下的下行模式',
  `CurrentCutter` int(10) DEFAULT NULL COMMENT '主轴刀具号_当前使用的刀具号',
  `AxisSpeed` int(32) DEFAULT NULL COMMENT '主轴回转速',
  `FeedSpeed` float(50,2) DEFAULT NULL COMMENT '进给速度',
  `MachinePosX` float(50,2) DEFAULT NULL COMMENT '机械位置X',
  `MachinePosY` float(50,2) DEFAULT NULL COMMENT '机械位置Y',
  `MachinePosZ` float(50,2) DEFAULT NULL COMMENT '机械位置Z',
  `RelativeCoordX` float(50,2) DEFAULT NULL COMMENT '相对坐标X',
  `RelativeCoordY` float(50,2) DEFAULT NULL COMMENT '相对坐标Y',
  `RelativeCoordZ` float(50,2) DEFAULT NULL COMMENT '相对坐标Z',
  `AbsoluteCoordX` float(50,2) DEFAULT NULL COMMENT '绝对坐标X',
  `AbsoluteCoordY` float(50,2) DEFAULT NULL COMMENT '绝对坐标Y',
  `AbsoluteCoordZ` float(50,2) DEFAULT NULL COMMENT '绝对坐标Z',
  `ResiDistanceX` float(50,2) DEFAULT NULL COMMENT '剩余距离X',
  `ResiDistanceY` float(50,2) DEFAULT NULL COMMENT '剩余距离Y',
  `ResiDistanceZ` float(50,2) DEFAULT NULL COMMENT '剩余距离Z',
  `FastFeedRatio` varchar(50) DEFAULT NULL COMMENT '快速进给超程倍率',
  `CuttFeedRatio` int(32) DEFAULT NULL COMMENT '切削进给超程倍率',
  `AxisRatio` int(32) DEFAULT NULL COMMENT '主轴超程倍率',
  `ControlLight` varchar(50) DEFAULT NULL COMMENT '控制面板功能灯',
  `EmerState` varchar(50) DEFAULT NULL COMMENT '紧急停止状态',
  `ProductCount` int(32) DEFAULT NULL COMMENT '计数值',
  `CurrentCount` int(32) DEFAULT NULL COMMENT '计数当前值',
  `OperateTime` varchar(50) DEFAULT NULL COMMENT '操作时间',
  `TotalTime` varchar(50) DEFAULT NULL COMMENT '总操作时间',
  `ElecTime` varchar(50) DEFAULT NULL COMMENT '通电时间',
  `UpdateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`CNCNO`),
  CONSTRAINT `CNC_NO` FOREIGN KEY (`CNCNO`) REFERENCES `cnc_basics` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cnc_info
-- ----------------------------
INSERT INTO `cnc_info` VALUES ('1', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:32:30');
INSERT INTO `cnc_info` VALUES ('2', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:32:30');
INSERT INTO `cnc_info` VALUES ('3', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:32:30');
INSERT INTO `cnc_info` VALUES ('4', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:32:30');
INSERT INTO `cnc_info` VALUES ('5', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:32:30');
INSERT INTO `cnc_info` VALUES ('6', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:32:30');
INSERT INTO `cnc_info` VALUES ('7', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:32:30');
INSERT INTO `cnc_info` VALUES ('8', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:32:30');
INSERT INTO `cnc_info` VALUES ('9', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:32:30');
INSERT INTO `cnc_info` VALUES ('10', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:32:30');
DROP TRIGGER IF EXISTS `cncbasics_inserttime`;
DELIMITER ;;
CREATE TRIGGER `cncbasics_inserttime` BEFORE INSERT ON `cnc_basics` FOR EACH ROW BEGIN
	set new.InsertTime=NOW();
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `cutter_count`;
DELIMITER ;;
CREATE TRIGGER `cutter_count` BEFORE UPDATE ON `cnc_info` FOR EACH ROW BEGIN
	DECLARE cutter_record int(10) DEFAULT 0;
	DECLARE cutter_count int(10) DEFAULT 0;
	set new.UpdateTime = NOW();
	IF(new.CurrentCutter!=old.CurrentCutter) THEN
		select count(CNCNO) into cutter_record from cnc_cutter_count where CNCNO=new.CNCNO AND CutterNo=new.CurrentCutter;
		IF(cutter_record=0) THEN
			INSERT INTO `cnc_cutter_count` (`CNCNO`, `CutterNO`, `CutterCount`, `InsertTime`) VALUES (new.CNCNO, new.CurrentCutter, 1, NOW());
		ELSEIF(cutter_record!=0) THEN
			UPDATE `cnc_cutter_count` SET `CutterCount`=CutterCount+1, `InsertTime`=NOW() WHERE CNCNO=new.CNCNO AND CutterNo=new.CurrentCutter;
		END IF;
	END IF;
END
;;
DELIMITER ;
