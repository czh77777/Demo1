/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50734
Source Host           : localhost:3306
Source Database       : brothercnc

Target Server Type    : MYSQL
Target Server Version : 50734
File Encoding         : 65001

Date: 2021-06-17 16:05:02
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
INSERT INTO `cnc_cutter_count` VALUES ('1', '1', '5', '2021-06-16 19:51:54');
INSERT INTO `cnc_cutter_count` VALUES ('1', '2', '11', '2021-06-17 14:36:42');
INSERT INTO `cnc_cutter_count` VALUES ('1', '3', '10', '2021-06-17 14:37:43');
INSERT INTO `cnc_cutter_count` VALUES ('1', '4', '9', '2021-06-17 14:43:46');
INSERT INTO `cnc_cutter_count` VALUES ('1', '5', '8', '2021-06-17 16:03:09');
INSERT INTO `cnc_cutter_count` VALUES ('1', '6', '8', '2021-06-17 16:03:23');
INSERT INTO `cnc_cutter_count` VALUES ('1', '7', '8', '2021-06-17 16:03:37');
INSERT INTO `cnc_cutter_count` VALUES ('1', '8', '8', '2021-06-17 16:03:48');
INSERT INTO `cnc_cutter_count` VALUES ('1', '9', '8', '2021-06-17 14:43:16');
INSERT INTO `cnc_cutter_count` VALUES ('1', '10', '5', '2021-06-17 14:40:22');
INSERT INTO `cnc_cutter_count` VALUES ('1', '11', '10', '2021-06-17 16:04:00');
INSERT INTO `cnc_cutter_count` VALUES ('1', '12', '6', '2021-06-17 15:56:05');
INSERT INTO `cnc_cutter_count` VALUES ('1', '13', '6', '2021-06-17 16:04:14');
INSERT INTO `cnc_cutter_count` VALUES ('1', '14', '6', '2021-06-16 19:47:42');

-- ----------------------------
-- Table structure for cnc_cutter_histtory
-- ----------------------------
DROP TABLE IF EXISTS `cnc_cutter_histtory`;
CREATE TABLE `cnc_cutter_histtory` (
  `ID` bigint(32) NOT NULL AUTO_INCREMENT,
  `CNCNO` bigint(32) DEFAULT NULL COMMENT '设备编号',
  `CutterNO` int(10) DEFAULT NULL COMMENT '刀具编号',
  `OperateTime` varchar(50) DEFAULT NULL COMMENT '操作时间',
  `ProductCount` int(10) DEFAULT NULL COMMENT '计数',
  `InsertTime` datetime DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cnc_cutter_histtory
-- ----------------------------
INSERT INTO `cnc_cutter_histtory` VALUES ('389', '1', '2', '27594H:05M:31S', '12', '2021-06-17 14:36:42');
INSERT INTO `cnc_cutter_histtory` VALUES ('390', '1', '3', '27594H:06M:32S', '12', '2021-06-17 14:37:43');
INSERT INTO `cnc_cutter_histtory` VALUES ('391', '1', '10', '27594H:09M:11S', '12', '2021-06-17 14:40:22');
INSERT INTO `cnc_cutter_histtory` VALUES ('392', '1', '9', '27594H:12M:05S', '12', '2021-06-17 14:43:16');
INSERT INTO `cnc_cutter_histtory` VALUES ('393', '1', '11', '27594H:12M:20S', '12', '2021-06-17 14:43:31');
INSERT INTO `cnc_cutter_histtory` VALUES ('394', '1', '4', '27594H:12M:35S', '12', '2021-06-17 14:43:46');
INSERT INTO `cnc_cutter_histtory` VALUES ('395', '1', '12', '27595H:20M:41S', '12', '2021-06-17 15:56:05');
INSERT INTO `cnc_cutter_histtory` VALUES ('396', '1', '5', '27595H:27M:45S', '12', '2021-06-17 16:03:09');
INSERT INTO `cnc_cutter_histtory` VALUES ('397', '1', '6', '27595H:27M:59S', '12', '2021-06-17 16:03:23');
INSERT INTO `cnc_cutter_histtory` VALUES ('398', '1', '7', '27595H:28M:13S', '12', '2021-06-17 16:03:37');
INSERT INTO `cnc_cutter_histtory` VALUES ('399', '1', '8', '27595H:28M:24S', '12', '2021-06-17 16:03:48');
INSERT INTO `cnc_cutter_histtory` VALUES ('400', '1', '11', '27595H:28M:36S', '12', '2021-06-17 16:04:00');
INSERT INTO `cnc_cutter_histtory` VALUES ('401', '1', '13', '27595H:28M:50S', '12', '2021-06-17 16:04:14');

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
INSERT INTO `cnc_info` VALUES ('1', '#1000', '自动运行', '0', '13', '13500', '421.00', '-169.72', '-285.42', '234.49', '46.44', '3.97', '23.42', '-87.63', '-33.80', '-0.64', '0.01', '-0.01', '0.03', '速度4', '100', '100', '程序', '非紧急停止状态', '12', '11868', '27595H:29M:38S', '27595H:29M:38S', '47082H:15M:06S', '2021-06-17 16:05:02');
INSERT INTO `cnc_info` VALUES ('2', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:55:31');
INSERT INTO `cnc_info` VALUES ('3', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:55:31');
INSERT INTO `cnc_info` VALUES ('4', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:55:31');
INSERT INTO `cnc_info` VALUES ('5', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:55:31');
INSERT INTO `cnc_info` VALUES ('6', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:55:31');
INSERT INTO `cnc_info` VALUES ('7', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:55:31');
INSERT INTO `cnc_info` VALUES ('8', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:55:31');
INSERT INTO `cnc_info` VALUES ('9', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:55:31');
INSERT INTO `cnc_info` VALUES ('10', '', '', '0', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0', '0', '', '', '0', '0', '', '', '', '2021-06-10 16:55:31');
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
	IF(new.CurrentCutter!=old.CurrentCutter And new.CurrentCutter!=0 ) THEN
		select count(CNCNO) into cutter_record from cnc_cutter_count where CNCNO=new.CNCNO AND CutterNo=new.CurrentCutter;
		IF(cutter_record=0) THEN
			INSERT INTO `cnc_cutter_count` (`CNCNO`, `CutterNO`, `CutterCount`, `InsertTime`) VALUES (new.CNCNO, new.CurrentCutter, 1, NOW());
		ELSEIF(cutter_record!=0) THEN
			UPDATE `cnc_cutter_count` SET `CutterCount`=CutterCount+1, `InsertTime`=NOW() WHERE CNCNO=new.CNCNO AND CutterNo=new.CurrentCutter;
		END IF;
		INSERT INTO `cnc_cutter_histtory` (`CNCNO`, `CutterNO`, `OperateTime`, `ProductCount`, `InsertTime`) VALUES (new.CNCNO, new.CurrentCutter,new.OperateTime,new.ProductCount ,NOW());
	END IF;
END
;;
DELIMITER ;
