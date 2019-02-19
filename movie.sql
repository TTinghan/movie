/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-16 16:51:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_limit
-- ----------------------------
DROP TABLE IF EXISTS `t_limit`;
CREATE TABLE `t_limit` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_limit
-- ----------------------------
INSERT INTO `t_limit` VALUES ('1', '影片管理', 'findmoviepage.do');
INSERT INTO `t_limit` VALUES ('2', '影厅管理', 'moviehall.do');
INSERT INTO `t_limit` VALUES ('3', '影片上映', 'movieshow.do');
INSERT INTO `t_limit` VALUES ('4', '会员管理', 'findAllVip.do');
INSERT INTO `t_limit` VALUES ('5', '数据统计', 'test.do');
INSERT INTO `t_limit` VALUES ('6', '用户信息', 'finduserpage.do');

-- ----------------------------
-- Table structure for t_movie
-- ----------------------------
DROP TABLE IF EXISTS `t_movie`;
CREATE TABLE `t_movie` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(255) NOT NULL,
  `mpic` varchar(255) NOT NULL,
  `mcountry` varchar(255) NOT NULL,
  `mauthor` varchar(255) NOT NULL,
  `mprice` double NOT NULL,
  `mactor` varchar(255) NOT NULL,
  `mdate` date NOT NULL,
  `mstate` varchar(255) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_movie
-- ----------------------------
INSERT INTO `t_movie` VALUES ('1', '前任3:再见前任', 'upload\\qianren.jpg', '中国大陆', '田羽生', '39', '韩庚，郑凯，于文文，曾梦雪，罗米', '2017-12-29', '0');
INSERT INTO `t_movie` VALUES ('2', '芳华', 'upload\\fanghua.png', '中国大陆', '冯小刚', '39', '黄轩，苗苗，钟楚曦，周放，赵立新', '2017-12-15', '0');
INSERT INTO `t_movie` VALUES ('3', '星球大战:最后的绝地武士', 'upload\\xingqiu.jpg', '美国', '莱恩·约翰逊', '48', '黛西·雷德利，亚当·德里弗，约翰·波耶加，奥斯卡·伊萨克', '2018-01-05', '1');
INSERT INTO `t_movie` VALUES ('4', '勇敢者的游戏', 'upload\\yongganzhe.jpg', '美国', '杰克·卡斯丹', '52', '道恩·强森，凯文·哈特，杰克·布莱克，凯伦·吉兰', '2018-01-12', '0');
INSERT INTO `t_movie` VALUES ('5', '迷镇凶案', 'upload\\mizhen.jpg', '美国,英国', '乔治·克鲁尼', '32', '马特·达蒙，朱利安·摩尔，奥斯卡·伊萨克，诺亚·尤佩', '2018-01-12', '0');
INSERT INTO `t_movie` VALUES ('6', '解忧杂货店', 'upload\\jieyou.jpg', '中国大陆', '韩杰', '35', '王俊凯，迪丽热巴，董子健，李鸿其', '2017-12-29', '1');
INSERT INTO `t_movie` VALUES ('7', '妖妖铃', 'upload\\yaoyaoling.jpg', '中国大陆,中国香港', '吴君如', '33', '吴君如，沈腾，岳云鹏，张译', '2017-12-29', '1');
INSERT INTO `t_movie` VALUES ('8', '二代妖精', 'upload\\erdai.jpg', '中国大陆', '肖洋', '40', '冯绍峰，刘亦菲，李光洁，郭京飞', '2017-12-29', '1');
INSERT INTO `t_movie` VALUES ('9', '卧底巨星', 'upload\\wodi.jpg', '中国大陆,中国香港', '谷德昭', '42', '陈奕迅，李荣浩，李一桐，陈国坤', '2018-01-12', '1');
INSERT INTO `t_movie` VALUES ('10', '公牛历险记', 'upload\\gongniu.jpg', '美国', '卡洛斯·沙尔丹哈', '35', '保罗·费格，唐纳德·萨瑟兰，萨曼莎·莫顿，克里斯·奥多德', '2018-01-19', '1');
INSERT INTO `t_movie` VALUES ('19', '我不是药神', 'upload/wobushiyaoshen.jpg', '中国大陆', '徐峥', '38', '徐峥，宁浩，周一围，王传君，谭卓，章鑫，杨新鸣', '2018-07-05', '1');
INSERT INTO `t_movie` VALUES ('21', '邪不压正', 'upload/xiebuyazheng.jpg', '中国大陆', '姜文', '33', '姜文，彭于晏，廖凡，周韵，许晴', '2018-07-05', '1');
INSERT INTO `t_movie` VALUES ('22', '动物世界', 'upload/dongwu.jpg', '中国大陆', '韩延', '38', '李易峰，周冬雨', '2018-06-29', '1');

-- ----------------------------
-- Table structure for t_moviehall
-- ----------------------------
DROP TABLE IF EXISTS `t_moviehall`;
CREATE TABLE `t_moviehall` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(255) NOT NULL,
  `hnum` int(11) NOT NULL,
  `hstate` varchar(255) NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_moviehall
-- ----------------------------
INSERT INTO `t_moviehall` VALUES ('1', '第一放映厅', '84', '倒闭');
INSERT INTO `t_moviehall` VALUES ('2', '第二放映厅', '100', '营业');
INSERT INTO `t_moviehall` VALUES ('3', '第三放映厅', '84', '营业');
INSERT INTO `t_moviehall` VALUES ('7', '第五放映厅', '84', '营业');

-- ----------------------------
-- Table structure for t_moviehall_movie
-- ----------------------------
DROP TABLE IF EXISTS `t_moviehall_movie`;
CREATE TABLE `t_moviehall_movie` (
  `m_m_id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`m_m_id`),
  KEY `fk_mid` (`mid`),
  KEY `fk_h_id` (`hid`),
  KEY `fk_tid` (`tid`),
  CONSTRAINT `fk_h_id` FOREIGN KEY (`hid`) REFERENCES `t_moviehall` (`hid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mid` FOREIGN KEY (`mid`) REFERENCES `t_movie` (`mid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tid` FOREIGN KEY (`tid`) REFERENCES `t_time` (`tid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_moviehall_movie
-- ----------------------------
INSERT INTO `t_moviehall_movie` VALUES ('2', '2', '2', '2');
INSERT INTO `t_moviehall_movie` VALUES ('3', '3', '2', '3');
INSERT INTO `t_moviehall_movie` VALUES ('4', '4', '2', '4');
INSERT INTO `t_moviehall_movie` VALUES ('5', '5', '2', '5');
INSERT INTO `t_moviehall_movie` VALUES ('6', '6', '1', '1');
INSERT INTO `t_moviehall_movie` VALUES ('7', '7', '1', '2');
INSERT INTO `t_moviehall_movie` VALUES ('8', '8', '1', '3');
INSERT INTO `t_moviehall_movie` VALUES ('9', '9', '1', '4');
INSERT INTO `t_moviehall_movie` VALUES ('10', '10', '1', '5');
INSERT INTO `t_moviehall_movie` VALUES ('11', '1', '3', '1');
INSERT INTO `t_moviehall_movie` VALUES ('12', '2', '3', '4');
INSERT INTO `t_moviehall_movie` VALUES ('17', '4', '7', '1');
INSERT INTO `t_moviehall_movie` VALUES ('18', '1', '7', '2');
INSERT INTO `t_moviehall_movie` VALUES ('19', '2', '2', '1');
INSERT INTO `t_moviehall_movie` VALUES ('21', '21', '3', '2');
INSERT INTO `t_moviehall_movie` VALUES ('22', '19', '1', '2');

-- ----------------------------
-- Table structure for t_moviehall_seat
-- ----------------------------
DROP TABLE IF EXISTS `t_moviehall_seat`;
CREATE TABLE `t_moviehall_seat` (
  `h_s_id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `h_s_state` varchar(3) NOT NULL,
  `tid2` int(11) DEFAULT NULL,
  PRIMARY KEY (`h_s_id`),
  KEY `fk_hid` (`hid`),
  KEY `fk_sid` (`sid`),
  KEY `fk_tid2` (`tid2`),
  CONSTRAINT `fk_hid` FOREIGN KEY (`hid`) REFERENCES `t_moviehall` (`hid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sid` FOREIGN KEY (`sid`) REFERENCES `t_seat` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tid2` FOREIGN KEY (`tid2`) REFERENCES `t_time2` (`tid2`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1241 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_moviehall_seat
-- ----------------------------
INSERT INTO `t_moviehall_seat` VALUES ('1', '1', '1', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('2', '1', '2', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('3', '1', '3', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('4', '1', '4', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('5', '1', '5', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('6', '1', '6', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('7', '1', '7', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('8', '1', '8', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('9', '1', '11', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('10', '1', '12', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('11', '1', '13', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('12', '1', '14', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('13', '1', '15', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('14', '1', '16', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('15', '1', '17', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('16', '1', '18', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('17', '1', '21', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('18', '1', '22', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('19', '1', '23', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('20', '1', '24', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('21', '1', '25', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('22', '1', '26', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('23', '1', '27', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('24', '1', '28', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('25', '1', '31', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('26', '1', '32', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('27', '1', '33', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('28', '1', '34', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('29', '1', '35', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('30', '1', '36', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('31', '1', '37', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('32', '1', '38', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('33', '1', '41', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('34', '1', '42', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('35', '1', '43', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('36', '1', '44', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('37', '1', '45', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('38', '1', '46', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('39', '1', '47', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('40', '1', '48', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('41', '1', '51', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('42', '1', '52', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('43', '1', '53', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('44', '1', '54', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('45', '1', '55', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('46', '1', '56', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('47', '1', '57', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('48', '1', '58', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('49', '1', '61', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('50', '1', '62', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('51', '1', '63', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('52', '1', '64', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('53', '1', '65', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('54', '1', '66', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('55', '1', '67', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('56', '1', '68', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('57', '1', '71', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('58', '1', '72', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('59', '1', '73', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('60', '1', '74', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('61', '1', '75', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('62', '1', '76', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('63', '1', '77', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('64', '1', '78', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('65', '2', '1', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('66', '2', '2', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('67', '2', '3', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('68', '2', '4', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('69', '2', '5', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('70', '2', '6', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('71', '2', '7', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('72', '2', '8', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('73', '2', '9', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('74', '2', '10', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('75', '2', '11', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('76', '2', '12', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('77', '2', '13', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('78', '2', '14', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('79', '2', '15', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('80', '2', '16', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('81', '2', '17', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('82', '2', '18', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('83', '2', '19', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('84', '2', '20', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('85', '2', '21', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('86', '2', '22', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('87', '2', '23', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('88', '2', '24', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('89', '2', '25', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('90', '2', '26', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('91', '2', '27', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('92', '2', '28', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('93', '2', '29', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('94', '2', '30', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('95', '2', '31', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('96', '2', '32', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('97', '2', '33', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('98', '2', '34', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('99', '2', '35', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('100', '2', '36', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('101', '2', '37', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('102', '2', '38', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('103', '2', '39', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('104', '2', '40', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('105', '2', '41', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('106', '2', '42', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('107', '2', '43', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('108', '2', '44', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('109', '2', '45', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('110', '2', '46', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('111', '2', '47', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('112', '2', '48', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('113', '2', '49', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('114', '2', '50', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('115', '2', '51', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('116', '2', '52', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('117', '2', '53', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('118', '2', '54', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('119', '2', '55', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('120', '2', '56', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('121', '2', '57', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('122', '2', '58', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('123', '2', '59', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('124', '2', '60', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('125', '2', '61', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('126', '2', '62', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('127', '2', '63', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('128', '2', '64', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('129', '2', '65', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('130', '2', '66', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('131', '2', '67', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('132', '2', '68', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('133', '2', '69', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('134', '2', '70', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('135', '2', '71', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('136', '2', '72', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('137', '2', '73', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('138', '2', '74', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('139', '2', '75', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('140', '2', '76', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('141', '2', '77', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('142', '2', '78', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('143', '2', '79', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('144', '2', '80', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('145', '2', '81', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('146', '2', '82', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('147', '2', '83', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('148', '2', '84', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('149', '2', '85', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('150', '2', '86', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('151', '2', '87', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('152', '2', '88', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('153', '2', '89', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('154', '2', '90', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('155', '2', '91', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('156', '2', '92', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('157', '2', '93', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('158', '2', '94', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('159', '2', '95', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('160', '2', '96', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('161', '2', '97', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('162', '2', '98', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('163', '2', '99', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('164', '2', '100', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('165', '3', '1', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('166', '3', '2', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('167', '3', '3', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('168', '3', '4', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('169', '3', '5', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('170', '3', '6', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('171', '3', '11', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('172', '3', '12', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('173', '3', '13', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('174', '3', '14', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('175', '3', '15', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('176', '3', '16', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('177', '3', '21', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('178', '3', '22', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('179', '3', '23', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('180', '3', '24', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('181', '3', '25', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('182', '3', '26', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('183', '3', '27', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('184', '3', '28', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('185', '3', '29', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('186', '3', '31', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('187', '3', '32', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('188', '3', '33', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('189', '3', '34', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('190', '3', '35', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('191', '3', '36', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('192', '3', '37', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('193', '3', '38', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('194', '3', '39', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('195', '3', '41', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('196', '3', '42', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('197', '3', '43', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('198', '3', '44', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('199', '3', '45', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('200', '3', '46', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('201', '3', '47', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('202', '3', '48', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('203', '3', '49', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('204', '3', '51', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('205', '3', '52', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('206', '3', '53', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('207', '3', '54', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('208', '3', '55', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('209', '3', '56', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('210', '3', '57', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('211', '3', '58', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('212', '3', '59', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('213', '3', '61', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('214', '3', '62', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('215', '3', '63', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('216', '3', '64', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('217', '3', '65', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('218', '3', '66', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('219', '3', '67', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('220', '3', '68', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('221', '3', '69', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('222', '3', '71', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('223', '3', '72', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('224', '3', '73', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('225', '3', '74', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('226', '3', '75', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('227', '3', '76', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('228', '3', '77', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('229', '3', '78', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('230', '3', '79', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('231', '3', '81', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('232', '3', '82', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('233', '3', '83', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('234', '3', '84', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('235', '3', '85', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('236', '3', '86', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('237', '3', '87', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('238', '3', '88', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('239', '3', '89', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('240', '3', '91', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('241', '3', '92', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('242', '3', '93', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('243', '3', '94', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('244', '3', '95', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('245', '3', '96', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('246', '3', '97', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('247', '3', '98', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('248', '3', '99', '0', '1');
INSERT INTO `t_moviehall_seat` VALUES ('249', '1', '1', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('250', '1', '1', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('251', '1', '1', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('252', '1', '1', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('253', '1', '2', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('254', '1', '2', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('255', '1', '2', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('256', '1', '2', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('257', '1', '3', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('258', '1', '3', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('259', '1', '3', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('260', '1', '3', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('261', '1', '4', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('262', '1', '4', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('263', '1', '4', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('264', '1', '4', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('265', '1', '5', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('266', '1', '5', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('267', '1', '5', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('268', '1', '5', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('269', '1', '6', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('270', '1', '6', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('271', '1', '6', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('272', '1', '6', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('273', '1', '7', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('274', '1', '7', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('275', '1', '7', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('276', '1', '7', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('277', '1', '8', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('278', '1', '8', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('279', '1', '8', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('280', '1', '8', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('281', '1', '11', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('282', '1', '11', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('283', '1', '11', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('284', '1', '11', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('285', '1', '12', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('286', '1', '12', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('287', '1', '12', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('288', '1', '12', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('289', '1', '13', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('290', '1', '13', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('291', '1', '13', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('292', '1', '13', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('293', '1', '14', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('294', '1', '14', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('295', '1', '14', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('296', '1', '14', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('297', '1', '15', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('298', '1', '15', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('299', '1', '15', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('300', '1', '15', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('301', '1', '16', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('302', '1', '16', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('303', '1', '16', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('304', '1', '16', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('305', '1', '17', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('306', '1', '17', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('307', '1', '17', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('308', '1', '17', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('309', '1', '18', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('310', '1', '18', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('311', '1', '18', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('312', '1', '18', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('313', '1', '21', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('314', '1', '21', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('315', '1', '21', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('316', '1', '21', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('317', '1', '22', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('318', '1', '22', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('319', '1', '22', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('320', '1', '22', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('321', '1', '23', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('322', '1', '23', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('323', '1', '23', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('324', '1', '23', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('325', '1', '24', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('326', '1', '24', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('327', '1', '24', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('328', '1', '24', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('329', '1', '25', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('330', '1', '25', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('331', '1', '25', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('332', '1', '25', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('333', '1', '26', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('334', '1', '26', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('335', '1', '26', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('336', '1', '26', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('337', '1', '27', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('338', '1', '27', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('339', '1', '27', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('340', '1', '27', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('341', '1', '28', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('342', '1', '28', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('343', '1', '28', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('344', '1', '28', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('345', '1', '31', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('346', '1', '31', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('347', '1', '31', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('348', '1', '31', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('349', '1', '32', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('350', '1', '32', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('351', '1', '32', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('352', '1', '32', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('353', '1', '33', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('354', '1', '33', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('355', '1', '33', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('356', '1', '33', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('357', '1', '34', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('358', '1', '34', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('359', '1', '34', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('360', '1', '34', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('361', '1', '35', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('362', '1', '35', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('363', '1', '35', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('364', '1', '35', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('365', '1', '36', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('366', '1', '36', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('367', '1', '36', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('368', '1', '36', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('369', '1', '37', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('370', '1', '37', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('371', '1', '37', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('372', '1', '37', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('373', '1', '38', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('374', '1', '38', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('375', '1', '38', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('376', '1', '38', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('377', '1', '41', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('378', '1', '41', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('379', '1', '41', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('380', '1', '41', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('381', '1', '42', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('382', '1', '42', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('383', '1', '42', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('384', '1', '42', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('385', '1', '43', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('386', '1', '43', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('387', '1', '43', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('388', '1', '43', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('389', '1', '44', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('390', '1', '44', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('391', '1', '44', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('392', '1', '44', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('393', '1', '45', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('394', '1', '45', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('395', '1', '45', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('396', '1', '45', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('397', '1', '46', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('398', '1', '46', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('399', '1', '46', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('400', '1', '46', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('401', '1', '47', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('402', '1', '47', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('403', '1', '47', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('404', '1', '47', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('405', '1', '48', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('406', '1', '48', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('407', '1', '48', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('408', '1', '48', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('409', '1', '51', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('410', '1', '51', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('411', '1', '51', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('412', '1', '51', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('413', '1', '52', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('414', '1', '52', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('415', '1', '52', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('416', '1', '52', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('417', '1', '53', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('418', '1', '53', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('419', '1', '53', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('420', '1', '53', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('421', '1', '54', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('422', '1', '54', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('423', '1', '54', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('424', '1', '54', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('425', '1', '55', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('426', '1', '55', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('427', '1', '55', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('428', '1', '55', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('429', '1', '56', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('430', '1', '56', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('431', '1', '56', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('432', '1', '56', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('433', '1', '57', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('434', '1', '57', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('435', '1', '57', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('436', '1', '57', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('437', '1', '58', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('438', '1', '58', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('439', '1', '58', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('440', '1', '58', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('441', '1', '61', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('442', '1', '61', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('443', '1', '61', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('444', '1', '61', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('445', '1', '62', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('446', '1', '62', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('447', '1', '62', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('448', '1', '62', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('449', '1', '63', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('450', '1', '63', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('451', '1', '63', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('452', '1', '63', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('453', '1', '64', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('454', '1', '64', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('455', '1', '64', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('456', '1', '64', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('457', '1', '65', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('458', '1', '65', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('459', '1', '65', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('460', '1', '65', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('461', '1', '66', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('462', '1', '66', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('463', '1', '66', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('464', '1', '66', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('465', '1', '67', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('466', '1', '67', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('467', '1', '67', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('468', '1', '67', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('469', '1', '68', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('470', '1', '68', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('471', '1', '68', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('472', '1', '68', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('473', '1', '71', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('474', '1', '71', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('475', '1', '71', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('476', '1', '71', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('477', '1', '72', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('478', '1', '72', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('479', '1', '72', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('480', '1', '72', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('481', '1', '73', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('482', '1', '73', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('483', '1', '73', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('484', '1', '73', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('485', '1', '74', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('486', '1', '74', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('487', '1', '74', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('488', '1', '74', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('489', '1', '75', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('490', '1', '75', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('491', '1', '75', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('492', '1', '75', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('493', '1', '76', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('494', '1', '76', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('495', '1', '76', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('496', '1', '76', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('497', '1', '77', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('498', '1', '77', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('499', '1', '77', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('500', '1', '77', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('501', '1', '78', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('502', '1', '78', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('503', '1', '78', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('504', '1', '78', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('505', '2', '1', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('506', '2', '1', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('507', '2', '1', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('508', '2', '1', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('509', '2', '2', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('510', '2', '2', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('511', '2', '2', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('512', '2', '2', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('513', '2', '3', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('514', '2', '3', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('515', '2', '3', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('516', '2', '3', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('517', '2', '4', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('518', '2', '4', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('519', '2', '4', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('520', '2', '4', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('521', '2', '5', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('522', '2', '5', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('523', '2', '5', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('524', '2', '5', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('525', '2', '6', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('526', '2', '6', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('527', '2', '6', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('528', '2', '6', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('529', '2', '7', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('530', '2', '7', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('531', '2', '7', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('532', '2', '7', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('533', '2', '8', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('534', '2', '8', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('535', '2', '8', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('536', '2', '8', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('537', '2', '9', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('538', '2', '9', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('539', '2', '9', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('540', '2', '9', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('541', '2', '10', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('542', '2', '10', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('543', '2', '10', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('544', '2', '10', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('545', '2', '11', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('546', '2', '11', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('547', '2', '11', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('548', '2', '11', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('549', '2', '12', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('550', '2', '12', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('551', '2', '12', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('552', '2', '12', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('553', '2', '13', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('554', '2', '13', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('555', '2', '13', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('556', '2', '13', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('557', '2', '14', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('558', '2', '14', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('559', '2', '14', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('560', '2', '14', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('561', '2', '15', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('562', '2', '15', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('563', '2', '15', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('564', '2', '15', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('565', '2', '16', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('566', '2', '16', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('567', '2', '16', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('568', '2', '16', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('569', '2', '17', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('570', '2', '17', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('571', '2', '17', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('572', '2', '17', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('573', '2', '18', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('574', '2', '18', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('575', '2', '18', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('576', '2', '18', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('577', '2', '19', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('578', '2', '19', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('579', '2', '19', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('580', '2', '19', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('581', '2', '20', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('582', '2', '20', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('583', '2', '20', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('584', '2', '20', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('585', '2', '21', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('586', '2', '21', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('587', '2', '21', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('588', '2', '21', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('589', '2', '22', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('590', '2', '22', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('591', '2', '22', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('592', '2', '22', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('593', '2', '23', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('594', '2', '23', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('595', '2', '23', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('596', '2', '23', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('597', '2', '24', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('598', '2', '24', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('599', '2', '24', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('600', '2', '24', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('601', '2', '25', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('602', '2', '25', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('603', '2', '25', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('604', '2', '25', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('605', '2', '26', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('606', '2', '26', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('607', '2', '26', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('608', '2', '26', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('609', '2', '27', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('610', '2', '27', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('611', '2', '27', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('612', '2', '27', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('613', '2', '28', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('614', '2', '28', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('615', '2', '28', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('616', '2', '28', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('617', '2', '29', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('618', '2', '29', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('619', '2', '29', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('620', '2', '29', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('621', '2', '30', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('622', '2', '30', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('623', '2', '30', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('624', '2', '30', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('625', '2', '31', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('626', '2', '31', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('627', '2', '31', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('628', '2', '31', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('629', '2', '32', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('630', '2', '32', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('631', '2', '32', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('632', '2', '32', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('633', '2', '33', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('634', '2', '33', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('635', '2', '33', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('636', '2', '33', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('637', '2', '34', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('638', '2', '34', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('639', '2', '34', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('640', '2', '34', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('641', '2', '35', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('642', '2', '35', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('643', '2', '35', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('644', '2', '35', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('645', '2', '36', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('646', '2', '36', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('647', '2', '36', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('648', '2', '36', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('649', '2', '37', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('650', '2', '37', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('651', '2', '37', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('652', '2', '37', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('653', '2', '38', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('654', '2', '38', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('655', '2', '38', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('656', '2', '38', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('657', '2', '39', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('658', '2', '39', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('659', '2', '39', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('660', '2', '39', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('661', '2', '40', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('662', '2', '40', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('663', '2', '40', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('664', '2', '40', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('665', '2', '41', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('666', '2', '41', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('667', '2', '41', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('668', '2', '41', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('669', '2', '42', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('670', '2', '42', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('671', '2', '42', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('672', '2', '42', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('673', '2', '43', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('674', '2', '43', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('675', '2', '43', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('676', '2', '43', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('677', '2', '44', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('678', '2', '44', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('679', '2', '44', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('680', '2', '44', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('681', '2', '45', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('682', '2', '45', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('683', '2', '45', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('684', '2', '45', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('685', '2', '46', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('686', '2', '46', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('687', '2', '46', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('688', '2', '46', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('689', '2', '47', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('690', '2', '47', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('691', '2', '47', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('692', '2', '47', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('693', '2', '48', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('694', '2', '48', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('695', '2', '48', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('696', '2', '48', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('697', '2', '49', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('698', '2', '49', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('699', '2', '49', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('700', '2', '49', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('701', '2', '50', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('702', '2', '50', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('703', '2', '50', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('704', '2', '50', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('705', '2', '51', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('706', '2', '51', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('707', '2', '51', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('708', '2', '51', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('709', '2', '52', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('710', '2', '52', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('711', '2', '52', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('712', '2', '52', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('713', '2', '53', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('714', '2', '53', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('715', '2', '53', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('716', '2', '53', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('717', '2', '54', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('718', '2', '54', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('719', '2', '54', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('720', '2', '54', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('721', '2', '55', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('722', '2', '55', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('723', '2', '55', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('724', '2', '55', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('725', '2', '56', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('726', '2', '56', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('727', '2', '56', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('728', '2', '56', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('729', '2', '57', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('730', '2', '57', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('731', '2', '57', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('732', '2', '57', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('733', '2', '58', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('734', '2', '58', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('735', '2', '58', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('736', '2', '58', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('737', '2', '59', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('738', '2', '59', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('739', '2', '59', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('740', '2', '59', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('741', '2', '60', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('742', '2', '60', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('743', '2', '60', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('744', '2', '60', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('745', '2', '61', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('746', '2', '61', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('747', '2', '61', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('748', '2', '61', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('749', '2', '62', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('750', '2', '62', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('751', '2', '62', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('752', '2', '62', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('753', '2', '63', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('754', '2', '63', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('755', '2', '63', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('756', '2', '63', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('757', '2', '64', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('758', '2', '64', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('759', '2', '64', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('760', '2', '64', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('761', '2', '65', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('762', '2', '65', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('763', '2', '65', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('764', '2', '65', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('765', '2', '66', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('766', '2', '66', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('767', '2', '66', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('768', '2', '66', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('769', '2', '67', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('770', '2', '67', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('771', '2', '67', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('772', '2', '67', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('773', '2', '68', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('774', '2', '68', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('775', '2', '68', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('776', '2', '68', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('777', '2', '69', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('778', '2', '69', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('779', '2', '69', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('780', '2', '69', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('781', '2', '70', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('782', '2', '70', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('783', '2', '70', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('784', '2', '70', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('785', '2', '71', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('786', '2', '71', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('787', '2', '71', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('788', '2', '71', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('789', '2', '72', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('790', '2', '72', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('791', '2', '72', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('792', '2', '72', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('793', '2', '73', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('794', '2', '73', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('795', '2', '73', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('796', '2', '73', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('797', '2', '74', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('798', '2', '74', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('799', '2', '74', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('800', '2', '74', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('801', '2', '75', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('802', '2', '75', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('803', '2', '75', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('804', '2', '75', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('805', '2', '76', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('806', '2', '76', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('807', '2', '76', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('808', '2', '76', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('809', '2', '77', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('810', '2', '77', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('811', '2', '77', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('812', '2', '77', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('813', '2', '78', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('814', '2', '78', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('815', '2', '78', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('816', '2', '78', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('817', '2', '79', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('818', '2', '79', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('819', '2', '79', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('820', '2', '79', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('821', '2', '80', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('822', '2', '80', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('823', '2', '80', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('824', '2', '80', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('825', '2', '81', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('826', '2', '81', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('827', '2', '81', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('828', '2', '81', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('829', '2', '82', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('830', '2', '82', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('831', '2', '82', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('832', '2', '82', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('833', '2', '83', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('834', '2', '83', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('835', '2', '83', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('836', '2', '83', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('837', '2', '84', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('838', '2', '84', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('839', '2', '84', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('840', '2', '84', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('841', '2', '85', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('842', '2', '85', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('843', '2', '85', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('844', '2', '85', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('845', '2', '86', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('846', '2', '86', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('847', '2', '86', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('848', '2', '86', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('849', '2', '87', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('850', '2', '87', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('851', '2', '87', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('852', '2', '87', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('853', '2', '88', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('854', '2', '88', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('855', '2', '88', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('856', '2', '88', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('857', '2', '89', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('858', '2', '89', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('859', '2', '89', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('860', '2', '89', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('861', '2', '90', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('862', '2', '90', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('863', '2', '90', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('864', '2', '90', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('865', '2', '91', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('866', '2', '91', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('867', '2', '91', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('868', '2', '91', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('869', '2', '92', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('870', '2', '92', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('871', '2', '92', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('872', '2', '92', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('873', '2', '93', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('874', '2', '93', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('875', '2', '93', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('876', '2', '93', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('877', '2', '94', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('878', '2', '94', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('879', '2', '94', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('880', '2', '94', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('881', '2', '95', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('882', '2', '95', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('883', '2', '95', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('884', '2', '95', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('885', '2', '96', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('886', '2', '96', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('887', '2', '96', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('888', '2', '96', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('889', '2', '97', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('890', '2', '97', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('891', '2', '97', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('892', '2', '97', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('893', '2', '98', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('894', '2', '98', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('895', '2', '98', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('896', '2', '98', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('897', '2', '99', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('898', '2', '99', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('899', '2', '99', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('900', '2', '99', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('901', '2', '100', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('902', '2', '100', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('903', '2', '100', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('904', '2', '100', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('905', '3', '1', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('906', '3', '1', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('907', '3', '1', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('908', '3', '1', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('909', '3', '2', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('910', '3', '2', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('911', '3', '2', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('912', '3', '2', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('913', '3', '3', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('914', '3', '3', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('915', '3', '3', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('916', '3', '3', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('917', '3', '4', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('918', '3', '4', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('919', '3', '4', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('920', '3', '4', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('921', '3', '5', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('922', '3', '5', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('923', '3', '5', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('924', '3', '5', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('925', '3', '6', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('926', '3', '6', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('927', '3', '6', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('928', '3', '6', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('929', '3', '11', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('930', '3', '11', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('931', '3', '11', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('932', '3', '11', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('933', '3', '12', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('934', '3', '12', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('935', '3', '12', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('936', '3', '12', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('937', '3', '13', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('938', '3', '13', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('939', '3', '13', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('940', '3', '13', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('941', '3', '14', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('942', '3', '14', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('943', '3', '14', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('944', '3', '14', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('945', '3', '15', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('946', '3', '15', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('947', '3', '15', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('948', '3', '15', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('949', '3', '16', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('950', '3', '16', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('951', '3', '16', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('952', '3', '16', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('953', '3', '21', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('954', '3', '21', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('955', '3', '21', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('956', '3', '21', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('957', '3', '22', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('958', '3', '22', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('959', '3', '22', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('960', '3', '22', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('961', '3', '23', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('962', '3', '23', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('963', '3', '23', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('964', '3', '23', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('965', '3', '24', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('966', '3', '24', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('967', '3', '24', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('968', '3', '24', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('969', '3', '25', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('970', '3', '25', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('971', '3', '25', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('972', '3', '25', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('973', '3', '26', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('974', '3', '26', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('975', '3', '26', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('976', '3', '26', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('977', '3', '27', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('978', '3', '27', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('979', '3', '27', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('980', '3', '27', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('981', '3', '28', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('982', '3', '28', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('983', '3', '28', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('984', '3', '28', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('985', '3', '29', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('986', '3', '29', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('987', '3', '29', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('988', '3', '29', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('989', '3', '31', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('990', '3', '31', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('991', '3', '31', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('992', '3', '31', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('993', '3', '32', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('994', '3', '32', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('995', '3', '32', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('996', '3', '32', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('997', '3', '33', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('998', '3', '33', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('999', '3', '33', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1000', '3', '33', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1001', '3', '34', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1002', '3', '34', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1003', '3', '34', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1004', '3', '34', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1005', '3', '35', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1006', '3', '35', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1007', '3', '35', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1008', '3', '35', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1009', '3', '36', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1010', '3', '36', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1011', '3', '36', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1012', '3', '36', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1013', '3', '37', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1014', '3', '37', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1015', '3', '37', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1016', '3', '37', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1017', '3', '38', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1018', '3', '38', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1019', '3', '38', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1020', '3', '38', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1021', '3', '39', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1022', '3', '39', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1023', '3', '39', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1024', '3', '39', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1025', '3', '41', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1026', '3', '41', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1027', '3', '41', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1028', '3', '41', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1029', '3', '42', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1030', '3', '42', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1031', '3', '42', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1032', '3', '42', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1033', '3', '43', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1034', '3', '43', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1035', '3', '43', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1036', '3', '43', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1037', '3', '44', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1038', '3', '44', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1039', '3', '44', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1040', '3', '44', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1041', '3', '45', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1042', '3', '45', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1043', '3', '45', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1044', '3', '45', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1045', '3', '46', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1046', '3', '46', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1047', '3', '46', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1048', '3', '46', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1049', '3', '47', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1050', '3', '47', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1051', '3', '47', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1052', '3', '47', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1053', '3', '48', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1054', '3', '48', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1055', '3', '48', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1056', '3', '48', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1057', '3', '49', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1058', '3', '49', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1059', '3', '49', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1060', '3', '49', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1061', '3', '51', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1062', '3', '51', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1063', '3', '51', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1064', '3', '51', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1065', '3', '52', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1066', '3', '52', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1067', '3', '52', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1068', '3', '52', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1069', '3', '53', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1070', '3', '53', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1071', '3', '53', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1072', '3', '53', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1073', '3', '54', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1074', '3', '54', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1075', '3', '54', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1076', '3', '54', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1077', '3', '55', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1078', '3', '55', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1079', '3', '55', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1080', '3', '55', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1081', '3', '56', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1082', '3', '56', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1083', '3', '56', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1084', '3', '56', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1085', '3', '57', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1086', '3', '57', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1087', '3', '57', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1088', '3', '57', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1089', '3', '58', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1090', '3', '58', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1091', '3', '58', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1092', '3', '58', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1093', '3', '59', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1094', '3', '59', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1095', '3', '59', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1096', '3', '59', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1097', '3', '61', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1098', '3', '61', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1099', '3', '61', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1100', '3', '61', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1101', '3', '62', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1102', '3', '62', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1103', '3', '62', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1104', '3', '62', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1105', '3', '63', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1106', '3', '63', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1107', '3', '63', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1108', '3', '63', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1109', '3', '64', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1110', '3', '64', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1111', '3', '64', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1112', '3', '64', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1113', '3', '65', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1114', '3', '65', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1115', '3', '65', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1116', '3', '65', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1117', '3', '66', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1118', '3', '66', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1119', '3', '66', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1120', '3', '66', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1121', '3', '67', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1122', '3', '67', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1123', '3', '67', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1124', '3', '67', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1125', '3', '68', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1126', '3', '68', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1127', '3', '68', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1128', '3', '68', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1129', '3', '69', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1130', '3', '69', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1131', '3', '69', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1132', '3', '69', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1133', '3', '71', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1134', '3', '71', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1135', '3', '71', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1136', '3', '71', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1137', '3', '72', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1138', '3', '72', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1139', '3', '72', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1140', '3', '72', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1141', '3', '73', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1142', '3', '73', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1143', '3', '73', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1144', '3', '73', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1145', '3', '74', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1146', '3', '74', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1147', '3', '74', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1148', '3', '74', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1149', '3', '75', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1150', '3', '75', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1151', '3', '75', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1152', '3', '75', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1153', '3', '76', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1154', '3', '76', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1155', '3', '76', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1156', '3', '76', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1157', '3', '77', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1158', '3', '77', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1159', '3', '77', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1160', '3', '77', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1161', '3', '78', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1162', '3', '78', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1163', '3', '78', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1164', '3', '78', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1165', '3', '79', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1166', '3', '79', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1167', '3', '79', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1168', '3', '79', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1169', '3', '81', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1170', '3', '81', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1171', '3', '81', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1172', '3', '81', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1173', '3', '82', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1174', '3', '82', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1175', '3', '82', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1176', '3', '82', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1177', '3', '83', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1178', '3', '83', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1179', '3', '83', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1180', '3', '83', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1181', '3', '84', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1182', '3', '84', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1183', '3', '84', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1184', '3', '84', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1185', '3', '85', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1186', '3', '85', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1187', '3', '85', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1188', '3', '85', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1189', '3', '86', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1190', '3', '86', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1191', '3', '86', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1192', '3', '86', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1193', '3', '87', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1194', '3', '87', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1195', '3', '87', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1196', '3', '87', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1197', '3', '88', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1198', '3', '88', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1199', '3', '88', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1200', '3', '88', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1201', '3', '89', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1202', '3', '89', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1203', '3', '89', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1204', '3', '89', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1205', '3', '91', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1206', '3', '91', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1207', '3', '91', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1208', '3', '91', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1209', '3', '92', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1210', '3', '92', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1211', '3', '92', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1212', '3', '92', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1213', '3', '93', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1214', '3', '93', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1215', '3', '93', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1216', '3', '93', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1217', '3', '94', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1218', '3', '94', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1219', '3', '94', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1220', '3', '94', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1221', '3', '95', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1222', '3', '95', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1223', '3', '95', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1224', '3', '95', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1225', '3', '96', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1226', '3', '96', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1227', '3', '96', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1228', '3', '96', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1229', '3', '97', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1230', '3', '97', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1231', '3', '97', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1232', '3', '97', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1233', '3', '98', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1234', '3', '98', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1235', '3', '98', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1236', '3', '98', '0', '5');
INSERT INTO `t_moviehall_seat` VALUES ('1237', '3', '99', '0', '2');
INSERT INTO `t_moviehall_seat` VALUES ('1238', '3', '99', '0', '3');
INSERT INTO `t_moviehall_seat` VALUES ('1239', '3', '99', '0', '4');
INSERT INTO `t_moviehall_seat` VALUES ('1240', '3', '99', '0', '5');

-- ----------------------------
-- Table structure for t_movietotal
-- ----------------------------
DROP TABLE IF EXISTS `t_movietotal`;
CREATE TABLE `t_movietotal` (
  `mcid` int(11) NOT NULL AUTO_INCREMENT,
  `mtime` varchar(255) NOT NULL,
  `mtotal` double(11,2) NOT NULL,
  `mtname` varchar(255) NOT NULL,
  PRIMARY KEY (`mcid`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_movietotal
-- ----------------------------
INSERT INTO `t_movietotal` VALUES ('41', '2018-01-18', '23590.00', '解忧杂货店');
INSERT INTO `t_movietotal` VALUES ('42', '2018-01-18', '49280.00', '前任3:再见前任');
INSERT INTO `t_movietotal` VALUES ('43', '2018-01-18', '111545.00', '勇敢者的游戏');
INSERT INTO `t_movietotal` VALUES ('44', '2018-01-18', '22127.00', '妖妖铃');
INSERT INTO `t_movietotal` VALUES ('45', '2018-01-18', '99972.00', '芳华');
INSERT INTO `t_movietotal` VALUES ('46', '2018-01-18', '24248.00', '二代妖精');
INSERT INTO `t_movietotal` VALUES ('47', '2018-01-18', '44692.00', '星球大战:最后的绝地武士');
INSERT INTO `t_movietotal` VALUES ('48', '2018-01-18', '27258.00', '卧底巨星');
INSERT INTO `t_movietotal` VALUES ('49', '2018-01-18', '22099.00', '公牛历险记');
INSERT INTO `t_movietotal` VALUES ('50', '2018-01-18', '27192.00', '迷镇凶案');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(20) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '超级管理员');
INSERT INTO `t_role` VALUES ('2', '普通管理员');

-- ----------------------------
-- Table structure for t_role_limit
-- ----------------------------
DROP TABLE IF EXISTS `t_role_limit`;
CREATE TABLE `t_role_limit` (
  `r_l_id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  PRIMARY KEY (`r_l_id`),
  KEY `fk_rid` (`rid`),
  KEY `fk_lid` (`lid`),
  CONSTRAINT `fk_lid` FOREIGN KEY (`lid`) REFERENCES `t_limit` (`lid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rid` FOREIGN KEY (`rid`) REFERENCES `t_role` (`rid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_limit
-- ----------------------------
INSERT INTO `t_role_limit` VALUES ('1', '1', '1');
INSERT INTO `t_role_limit` VALUES ('2', '1', '2');
INSERT INTO `t_role_limit` VALUES ('3', '1', '3');
INSERT INTO `t_role_limit` VALUES ('4', '1', '4');
INSERT INTO `t_role_limit` VALUES ('5', '1', '5');
INSERT INTO `t_role_limit` VALUES ('6', '1', '6');
INSERT INTO `t_role_limit` VALUES ('7', '2', '1');
INSERT INTO `t_role_limit` VALUES ('8', '2', '2');
INSERT INTO `t_role_limit` VALUES ('9', '2', '3');
INSERT INTO `t_role_limit` VALUES ('10', '2', '4');
INSERT INTO `t_role_limit` VALUES ('11', '2', '5');

-- ----------------------------
-- Table structure for t_seat
-- ----------------------------
DROP TABLE IF EXISTS `t_seat`;
CREATE TABLE `t_seat` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `srow` int(2) NOT NULL,
  `sline` int(2) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_seat
-- ----------------------------
INSERT INTO `t_seat` VALUES ('1', '1', '1');
INSERT INTO `t_seat` VALUES ('2', '1', '2');
INSERT INTO `t_seat` VALUES ('3', '1', '3');
INSERT INTO `t_seat` VALUES ('4', '1', '4');
INSERT INTO `t_seat` VALUES ('5', '1', '5');
INSERT INTO `t_seat` VALUES ('6', '1', '6');
INSERT INTO `t_seat` VALUES ('7', '1', '7');
INSERT INTO `t_seat` VALUES ('8', '1', '8');
INSERT INTO `t_seat` VALUES ('9', '1', '9');
INSERT INTO `t_seat` VALUES ('10', '1', '10');
INSERT INTO `t_seat` VALUES ('11', '2', '1');
INSERT INTO `t_seat` VALUES ('12', '2', '2');
INSERT INTO `t_seat` VALUES ('13', '2', '3');
INSERT INTO `t_seat` VALUES ('14', '2', '4');
INSERT INTO `t_seat` VALUES ('15', '2', '5');
INSERT INTO `t_seat` VALUES ('16', '2', '6');
INSERT INTO `t_seat` VALUES ('17', '2', '7');
INSERT INTO `t_seat` VALUES ('18', '2', '8');
INSERT INTO `t_seat` VALUES ('19', '2', '9');
INSERT INTO `t_seat` VALUES ('20', '2', '10');
INSERT INTO `t_seat` VALUES ('21', '3', '1');
INSERT INTO `t_seat` VALUES ('22', '3', '2');
INSERT INTO `t_seat` VALUES ('23', '3', '3');
INSERT INTO `t_seat` VALUES ('24', '3', '4');
INSERT INTO `t_seat` VALUES ('25', '3', '5');
INSERT INTO `t_seat` VALUES ('26', '3', '6');
INSERT INTO `t_seat` VALUES ('27', '3', '7');
INSERT INTO `t_seat` VALUES ('28', '3', '8');
INSERT INTO `t_seat` VALUES ('29', '3', '9');
INSERT INTO `t_seat` VALUES ('30', '3', '10');
INSERT INTO `t_seat` VALUES ('31', '4', '1');
INSERT INTO `t_seat` VALUES ('32', '4', '2');
INSERT INTO `t_seat` VALUES ('33', '4', '3');
INSERT INTO `t_seat` VALUES ('34', '4', '4');
INSERT INTO `t_seat` VALUES ('35', '4', '5');
INSERT INTO `t_seat` VALUES ('36', '4', '6');
INSERT INTO `t_seat` VALUES ('37', '4', '7');
INSERT INTO `t_seat` VALUES ('38', '4', '8');
INSERT INTO `t_seat` VALUES ('39', '4', '9');
INSERT INTO `t_seat` VALUES ('40', '4', '10');
INSERT INTO `t_seat` VALUES ('41', '5', '1');
INSERT INTO `t_seat` VALUES ('42', '5', '2');
INSERT INTO `t_seat` VALUES ('43', '5', '3');
INSERT INTO `t_seat` VALUES ('44', '5', '4');
INSERT INTO `t_seat` VALUES ('45', '5', '5');
INSERT INTO `t_seat` VALUES ('46', '5', '6');
INSERT INTO `t_seat` VALUES ('47', '5', '7');
INSERT INTO `t_seat` VALUES ('48', '5', '8');
INSERT INTO `t_seat` VALUES ('49', '5', '9');
INSERT INTO `t_seat` VALUES ('50', '5', '10');
INSERT INTO `t_seat` VALUES ('51', '6', '1');
INSERT INTO `t_seat` VALUES ('52', '6', '2');
INSERT INTO `t_seat` VALUES ('53', '6', '3');
INSERT INTO `t_seat` VALUES ('54', '6', '4');
INSERT INTO `t_seat` VALUES ('55', '6', '5');
INSERT INTO `t_seat` VALUES ('56', '6', '6');
INSERT INTO `t_seat` VALUES ('57', '6', '7');
INSERT INTO `t_seat` VALUES ('58', '6', '8');
INSERT INTO `t_seat` VALUES ('59', '6', '9');
INSERT INTO `t_seat` VALUES ('60', '6', '10');
INSERT INTO `t_seat` VALUES ('61', '7', '1');
INSERT INTO `t_seat` VALUES ('62', '7', '2');
INSERT INTO `t_seat` VALUES ('63', '7', '3');
INSERT INTO `t_seat` VALUES ('64', '7', '4');
INSERT INTO `t_seat` VALUES ('65', '7', '5');
INSERT INTO `t_seat` VALUES ('66', '7', '6');
INSERT INTO `t_seat` VALUES ('67', '7', '7');
INSERT INTO `t_seat` VALUES ('68', '7', '8');
INSERT INTO `t_seat` VALUES ('69', '7', '9');
INSERT INTO `t_seat` VALUES ('70', '7', '10');
INSERT INTO `t_seat` VALUES ('71', '8', '1');
INSERT INTO `t_seat` VALUES ('72', '8', '2');
INSERT INTO `t_seat` VALUES ('73', '8', '3');
INSERT INTO `t_seat` VALUES ('74', '8', '4');
INSERT INTO `t_seat` VALUES ('75', '8', '5');
INSERT INTO `t_seat` VALUES ('76', '8', '6');
INSERT INTO `t_seat` VALUES ('77', '8', '7');
INSERT INTO `t_seat` VALUES ('78', '8', '8');
INSERT INTO `t_seat` VALUES ('79', '8', '9');
INSERT INTO `t_seat` VALUES ('80', '8', '10');
INSERT INTO `t_seat` VALUES ('81', '9', '1');
INSERT INTO `t_seat` VALUES ('82', '9', '2');
INSERT INTO `t_seat` VALUES ('83', '9', '3');
INSERT INTO `t_seat` VALUES ('84', '9', '4');
INSERT INTO `t_seat` VALUES ('85', '9', '5');
INSERT INTO `t_seat` VALUES ('86', '9', '6');
INSERT INTO `t_seat` VALUES ('87', '9', '7');
INSERT INTO `t_seat` VALUES ('88', '9', '8');
INSERT INTO `t_seat` VALUES ('89', '9', '9');
INSERT INTO `t_seat` VALUES ('90', '9', '10');
INSERT INTO `t_seat` VALUES ('91', '10', '1');
INSERT INTO `t_seat` VALUES ('92', '10', '2');
INSERT INTO `t_seat` VALUES ('93', '10', '3');
INSERT INTO `t_seat` VALUES ('94', '10', '4');
INSERT INTO `t_seat` VALUES ('95', '10', '5');
INSERT INTO `t_seat` VALUES ('96', '10', '6');
INSERT INTO `t_seat` VALUES ('97', '10', '7');
INSERT INTO `t_seat` VALUES ('98', '10', '8');
INSERT INTO `t_seat` VALUES ('99', '10', '9');
INSERT INTO `t_seat` VALUES ('100', '10', '10');

-- ----------------------------
-- Table structure for t_time
-- ----------------------------
DROP TABLE IF EXISTS `t_time`;
CREATE TABLE `t_time` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `timespace` varchar(255) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_time
-- ----------------------------
INSERT INTO `t_time` VALUES ('1', '9:00-11:00');
INSERT INTO `t_time` VALUES ('2', '12:30-14:30');
INSERT INTO `t_time` VALUES ('3', '15:00-17:00');
INSERT INTO `t_time` VALUES ('4', '17:30-19:30');
INSERT INTO `t_time` VALUES ('5', '20:00-22:00');

-- ----------------------------
-- Table structure for t_time2
-- ----------------------------
DROP TABLE IF EXISTS `t_time2`;
CREATE TABLE `t_time2` (
  `tid2` int(11) NOT NULL AUTO_INCREMENT,
  `timespace2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid2`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_time2
-- ----------------------------
INSERT INTO `t_time2` VALUES ('1', '9:00-11:00');
INSERT INTO `t_time2` VALUES ('2', '12:30-14:30');
INSERT INTO `t_time2` VALUES ('3', '15:00-17:00');
INSERT INTO `t_time2` VALUES ('4', '17:30-19:30');
INSERT INTO `t_time2` VALUES ('5', '20:00-22:00');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) NOT NULL,
  `upsw` varchar(20) NOT NULL,
  `realname` varchar(255) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uk_uname` (`uname`),
  KEY `fk_rid_uid` (`rid`),
  CONSTRAINT `fk_rid_uid` FOREIGN KEY (`rid`) REFERENCES `t_role` (`rid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '123456', '超管', '女', '18735467123', '879375903@qq.com', '1');
INSERT INTO `t_user` VALUES ('2', 'zhangsan', '123456', '张三', '男', '18735838469', '123489056@qq.com', '1');
INSERT INTO `t_user` VALUES ('3', 'lisi', '123456', '李四', '女', '1875678435', '879375902@qq.com', '2');
INSERT INTO `t_user` VALUES ('4', 'wangwu', '123456', '王五', '女', '1875678435', '1184472756@qq.com', '2');
INSERT INTO `t_user` VALUES ('5', '12', '12', '12', '男', '12', '12', '2');
INSERT INTO `t_user` VALUES ('6', '13', '123456', '13', '女', '13243354654', '1635038224@qq.com', '2');

-- ----------------------------
-- Table structure for t_vip
-- ----------------------------
DROP TABLE IF EXISTS `t_vip`;
CREATE TABLE `t_vip` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `vname` varchar(255) NOT NULL,
  `vtel` varchar(255) NOT NULL,
  `vcard` varchar(255) NOT NULL,
  `vstate` varchar(255) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_vip
-- ----------------------------
INSERT INTO `t_vip` VALUES ('1', '张三', '18335460623', '100001', '激活');
INSERT INTO `t_vip` VALUES ('2', '李四', '18335460623', '100002', '激活');
INSERT INTO `t_vip` VALUES ('3', '王五', '18335460623', '100003', '激活');
INSERT INTO `t_vip` VALUES ('4', '赵六', '18335460623', '100004', '激活');
INSERT INTO `t_vip` VALUES ('5', '孙七', '18335460623', '100005', '激活');
INSERT INTO `t_vip` VALUES ('6', '小黑', '18335460623', '100006', '已过期');
INSERT INTO `t_vip` VALUES ('7', '小何', '18335460623', '100007', '激活');
INSERT INTO `t_vip` VALUES ('8', '小白', '18335460623', '100008', '激活');
INSERT INTO `t_vip` VALUES ('9', '小小', '18335460623', '100009', '激活');
INSERT INTO `t_vip` VALUES ('10', '小狗', '18335460623', '1000011', '已过期');
INSERT INTO `t_vip` VALUES ('11', '小王', '18346474852', '1000012', '激活');
INSERT INTO `t_vip` VALUES ('12', '13', '13', '13', '激活');
