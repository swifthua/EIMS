/*
Navicat MySQL Data Transfer

Source Server         : zxc
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : eims

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-09-18 22:28:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `admin_id` varchar(64) NOT NULL,
  `admin_name` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL COMMENT '����',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `ext1` varchar(32) DEFAULT NULL,
  `ext2` varchar(32) DEFAULT NULL,
  `ext3` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='user_info';

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES ('1', 'luoyubin', '123456', null, null, '管理员', '', null);
INSERT INTO `admin_info` VALUES ('2', 'yanguanghui', '123456', null, null, 'admin', null, null);
INSERT INTO `admin_info` VALUES ('3', 'lilin', '123', null, null, '管理员', null, null);
INSERT INTO `admin_info` VALUES ('4', 'zhouhua', '123456', null, null, '超级管理员', null, null);

-- ----------------------------
-- Table structure for area_info
-- ----------------------------
DROP TABLE IF EXISTS `area_info`;
CREATE TABLE `area_info` (
  `area_id` varchar(32) NOT NULL COMMENT '主键',
  `area_name` varchar(32) DEFAULT NULL COMMENT '区域名称',
  `priamry_number` int(11) DEFAULT NULL COMMENT '小学数量',
  `secondary_number` int(11) DEFAULT NULL COMMENT '中学数量',
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area_info
-- ----------------------------
INSERT INTO `area_info` VALUES ('1', '平昌县', '200', '300');
INSERT INTO `area_info` VALUES ('2', '汶川县', '250', '400');
INSERT INTO `area_info` VALUES ('3', '九寨沟县', '400', '500');
INSERT INTO `area_info` VALUES ('4', '小金县', '250', '100');
INSERT INTO `area_info` VALUES ('5', '黑水县', '500', '400');
INSERT INTO `area_info` VALUES ('6', '理县', '350', '550');
INSERT INTO `area_info` VALUES ('7', '阿坝县', '500', '500');
INSERT INTO `area_info` VALUES ('8', '丹巴县', '300', '350');

-- ----------------------------
-- Table structure for examine
-- ----------------------------
DROP TABLE IF EXISTS `examine`;
CREATE TABLE `examine` (
  `project_id` varchar(64) NOT NULL COMMENT '项目id',
  `approve_id` varchar(64) DEFAULT NULL COMMENT '审批人',
  `approval_opinions` varchar(64) DEFAULT NULL COMMENT '审批意见',
  `ext1` varchar(64) DEFAULT NULL COMMENT 'ext1',
  `ext2` varchar(64) DEFAULT NULL COMMENT 'ext2',
  `ext3` varchar(64) DEFAULT NULL COMMENT 'ext3',
  `money_source` varchar(20) DEFAULT NULL COMMENT '经费来源',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目审批表';

-- ----------------------------
-- Records of examine
-- ----------------------------
INSERT INTO `examine` VALUES ('11', '4', '無', null, null, null, '教育基金');
INSERT INTO `examine` VALUES ('116', '4', '五', null, null, null, '教育基金');
INSERT INTO `examine` VALUES ('121', '4', 'zxc', null, null, null, '教育基金');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `project_id` varchar(64) NOT NULL COMMENT '项目id',
  `project_name` varchar(64) DEFAULT NULL COMMENT '项目名称',
  `project_status` varchar(10) DEFAULT NULL COMMENT '项目状态',
  `proposer` varchar(64) DEFAULT NULL COMMENT '申请人',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `update_date` date DEFAULT NULL COMMENT '更改时间',
  `project_money` varchar(10) DEFAULT NULL COMMENT '项目金额',
  `project_desc` varchar(255) DEFAULT NULL COMMENT '项目描述',
  `area` varchar(10) DEFAULT NULL COMMENT '项目区域',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `ext1` varchar(64) DEFAULT NULL COMMENT 'ext1',
  `ext2` varchar(64) DEFAULT NULL COMMENT 'ext2',
  PRIMARY KEY (`project_id`),
  KEY `area` (`area`),
  CONSTRAINT `project_ibfk_1` FOREIGN KEY (`area`) REFERENCES `area_info` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1', '招聘教师', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '4453', null, '3', '国家助学', null, null);
INSERT INTO `project` VALUES ('10', '创建两间教室', '审核通过', 'zq', '2017-09-18', '2017-09-19', '5239', null, '6', ' ', null, null);
INSERT INTO `project` VALUES ('100', '安排课程表', '未审核', 'zq', '2017-09-18', '2017-09-19', '4144', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('101', '招聘教师', '正在审核', 'ljd', '2017-09-18', '2017-09-19', '5442', null, '4', '教育基金', null, null);
INSERT INTO `project` VALUES ('102', '安排课程表', '审核通过', 'ljd', '2017-09-18', '2017-09-19', '1589', null, '7', '投资', null, null);
INSERT INTO `project` VALUES ('103', '安排课程表', '未审核', 'lyb', '2017-09-18', '2017-09-19', '1210', null, '2', ' ', null, null);
INSERT INTO `project` VALUES ('104', '新建教学楼', '正在审核', 'zh', '2017-09-18', '2017-09-19', '1278', null, '2', '投资', null, null);
INSERT INTO `project` VALUES ('105', '安排课程表', '未审核', 'jsy', '2017-09-18', '2017-09-19', '5314', null, '8', ' ', null, null);
INSERT INTO `project` VALUES ('106', '安排课程表', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '3424', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('107', '安排课程表', '未审核', 'zh', '2017-09-18', '2017-09-19', '1761', null, '8', '投资', null, null);
INSERT INTO `project` VALUES ('108', '清理厕所', '正在审核', 'ygh', '2017-09-18', '2017-09-19', '4090', null, '8', '国家助学', null, null);
INSERT INTO `project` VALUES ('109', '安排课程表', '未审核', 'ljd', '2017-09-18', '2017-09-19', '4427', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('110', '安排课程表', '审核通过', 'zq', '2017-09-18', '2017-09-19', '5321', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('111', '招聘教师', '审核通过', 'jsy', '2017-09-18', '2017-09-19', '5077', null, '8', '国家助学', null, null);
INSERT INTO `project` VALUES ('112', '安排课程表', '正在审核', 'zq', '2017-09-18', '2017-09-19', '4093', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('113', '创建两间教室', '审核通过', 'zq', '2017-09-18', '2017-09-19', '3863', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('114', '招聘教师', '审核通过', 'zq', '2017-09-18', '2017-09-19', '4243', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('115', '安排课程表', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '3037', null, '8', '国家助学', null, null);
INSERT INTO `project` VALUES ('117', '创建两间教室', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '3102', null, '6', '投资', null, null);
INSERT INTO `project` VALUES ('118', '清理厕所', '正在审核', 'ygh', '2017-09-18', '2017-09-19', '1021', null, '1', '国家助学', null, null);
INSERT INTO `project` VALUES ('119', '招聘教师', '未审核', 'zq', '2017-09-18', '2017-09-19', '3593', null, '1', '投资', null, null);
INSERT INTO `project` VALUES ('12', '新建教学楼', '审核通过', 'ljd', '2017-09-18', '2017-09-19', '2023', null, '8', ' ', null, null);
INSERT INTO `project` VALUES ('120', '新建教学楼', '正在审核', 'lyb', '2017-09-18', '2017-09-19', '3242', null, '1', ' ', null, null);
INSERT INTO `project` VALUES ('122', '招聘教师', '审核通过', 'zq', '2017-09-18', '2017-09-19', '1902', null, '7', '投资', null, null);
INSERT INTO `project` VALUES ('123', '清理厕所', '正在审核', 'jsy', '2017-09-18', '2017-09-19', '1202', null, '5', '教育基金', null, null);
INSERT INTO `project` VALUES ('123456', '什么鬼', '待审核', '罗于斌', '2017-09-09', null, '5000', null, '1', '没什么备注', null, null);
INSERT INTO `project` VALUES ('124', '清理厕所', '待审核', 'zq', '2017-09-18', '2017-09-19', '1333', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('125', '招聘教师', '待审核', 'zh', '2017-09-18', '2017-09-19', '3003', null, '1', ' ', null, null);
INSERT INTO `project` VALUES ('126', '新建教学楼', '未审核', 'lyb', '2017-09-18', '2017-09-19', '2217', null, '3', '教育基金', null, null);
INSERT INTO `project` VALUES ('127', '新建教学楼', '未审核', 'jsy', '2017-09-18', '2017-09-19', '5243', null, '6', '投资', null, null);
INSERT INTO `project` VALUES ('128', '安排课程表', '正在审核', 'lyb', '2017-09-18', '2017-09-19', '4554', null, '2', '投资', null, null);
INSERT INTO `project` VALUES ('129', '安排课程表', '正在审核', 'ygh', '2017-09-18', '2017-09-19', '4624', null, '6', '教育基金', null, null);
INSERT INTO `project` VALUES ('13', '清理厕所', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '1996', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('130', '安排课程表', '未审核', 'zh', '2017-09-18', '2017-09-19', '3040', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('131', '新建教学楼', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '1383', null, '7', '投资', null, null);
INSERT INTO `project` VALUES ('132', '招聘教师', '未审核', 'jsy', '2017-09-18', '2017-09-19', '2255', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('133', '招聘教师', '待审核', 'zh', '2017-09-18', '2017-09-19', '2231', null, '8', '教育基金', null, null);
INSERT INTO `project` VALUES ('134', '招聘教师', '待审核', 'lyb', '2017-09-18', '2017-09-19', '2959', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('135', '招聘教师', '待审核', 'zh', '2017-09-18', '2017-09-19', '2061', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('136', '招聘教师', '待审核', 'ljd', '2017-09-18', '2017-09-19', '1634', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('137', '清理厕所', '正在审核', 'zq', '2017-09-18', '2017-09-19', '2484', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('138', '创建两间教室', '正在审核', 'zq', '2017-09-18', '2017-09-19', '3352', null, '6', '投资', null, null);
INSERT INTO `project` VALUES ('139', '清理厕所', '待审核', 'zh', '2017-09-18', '2017-09-19', '3540', null, '8', '投资', null, null);
INSERT INTO `project` VALUES ('14', '安排课程表', '待审核', 'lyb', '2017-09-18', '2017-09-19', '5466', null, '5', '国家助学', null, null);
INSERT INTO `project` VALUES ('140', '安排课程表', '未审核', 'jsy', '2017-09-18', '2017-09-19', '2989', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('141', '安排课程表', '审核通过', 'jsy', '2017-09-18', '2017-09-19', '2771', null, '5', '投资', null, null);
INSERT INTO `project` VALUES ('142', '安排课程表', '正在审核', 'zh', '2017-09-18', '2017-09-19', '1782', null, '6', ' ', null, null);
INSERT INTO `project` VALUES ('143', '清理厕所', '审核通过', 'ljd', '2017-09-18', '2017-09-19', '3230', null, '5', '投资', null, null);
INSERT INTO `project` VALUES ('144', '清理厕所', '审核通过', 'jsy', '2017-09-18', '2017-09-19', '5233', null, '6', '投资', null, null);
INSERT INTO `project` VALUES ('145', '清理厕所', '待审核', 'ljd', '2017-09-18', '2017-09-19', '3866', null, '1', '国家助学', null, null);
INSERT INTO `project` VALUES ('146', '新建教学楼', '正在审核', 'jsy', '2017-09-18', '2017-09-19', '4403', null, '4', '投资', null, null);
INSERT INTO `project` VALUES ('147', '创建两间教室', '未审核', 'lyb', '2017-09-18', '2017-09-19', '2199', null, '4', '投资', null, null);
INSERT INTO `project` VALUES ('148', '新建教学楼', '未审核', 'zh', '2017-09-18', '2017-09-19', '5717', null, '6', '投资', null, null);
INSERT INTO `project` VALUES ('149', '招聘教师', '正在审核', 'ygh', '2017-09-18', '2017-09-19', '5104', null, '2', ' ', null, null);
INSERT INTO `project` VALUES ('15', '安排课程表', '审核通过', 'lyb', '2017-09-18', '2017-09-19', '1442', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('150', '清理厕所', '正在审核', 'zq', '2017-09-18', '2017-09-19', '4500', null, '4', '国家助学', null, null);
INSERT INTO `project` VALUES ('151', '新建教学楼', '待审核', 'ygh', '2017-09-18', '2017-09-19', '4087', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('152', '新建教学楼', '审核通过', 'jsy', '2017-09-18', '2017-09-19', '4586', null, '3', '投资', null, null);
INSERT INTO `project` VALUES ('153', '清理厕所', '审核通过', 'ljd', '2017-09-18', '2017-09-19', '1387', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('154', '创建两间教室', '待审核', 'zh', '2017-09-18', '2017-09-19', '5540', null, '8', ' ', null, null);
INSERT INTO `project` VALUES ('155', '新建教学楼', '审核通过', 'jsy', '2017-09-18', '2017-09-19', '2852', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('156', '招聘教师', '待审核', 'lyb', '2017-09-18', '2017-09-19', '5179', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('157', '安排课程表', '未审核', 'lyb', '2017-09-18', '2017-09-19', '2592', null, '1', '投资', null, null);
INSERT INTO `project` VALUES ('158', '招聘教师', '待审核', 'ygh', '2017-09-18', '2017-09-19', '3364', null, '2', ' ', null, null);
INSERT INTO `project` VALUES ('159', '清理厕所', '待审核', 'jsy', '2017-09-18', '2017-09-19', '3039', null, '8', '国家助学', null, null);
INSERT INTO `project` VALUES ('16', '清理厕所', '审核通过', 'zh', '2017-09-18', '2017-09-19', '4215', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('160', '招聘教师', '审核通过', 'ljd', '2017-09-18', '2017-09-19', '3236', null, '2', ' ', null, null);
INSERT INTO `project` VALUES ('161', '安排课程表', '未审核', 'ljd', '2017-09-18', '2017-09-19', '2193', null, '8', '投资', null, null);
INSERT INTO `project` VALUES ('162', '安排课程表', '未审核', 'jsy', '2017-09-18', '2017-09-19', '3406', null, '5', '教育基金', null, null);
INSERT INTO `project` VALUES ('163', '招聘教师', '正在审核', 'zh', '2017-09-18', '2017-09-19', '2519', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('164', '招聘教师', '正在审核', 'zq', '2017-09-18', '2017-09-19', '3905', null, '5', '教育基金', null, null);
INSERT INTO `project` VALUES ('165', '清理厕所', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '3160', null, '7', '教育基金', null, null);
INSERT INTO `project` VALUES ('166', '新建教学楼', '待审核', 'jsy', '2017-09-18', '2017-09-19', '5054', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('167', '清理厕所', '正在审核', 'lyb', '2017-09-18', '2017-09-19', '3888', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('168', '新建教学楼', '审核通过', 'ljd', '2017-09-18', '2017-09-19', '1811', null, '8', '国家助学', null, null);
INSERT INTO `project` VALUES ('169', '新建教学楼', '未审核', 'ygh', '2017-09-18', '2017-09-19', '5468', null, '5', '国家助学', null, null);
INSERT INTO `project` VALUES ('17', '新建教学楼', '正在审核', 'jsy', '2017-09-18', '2017-09-19', '4509', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('170', '招聘教师', '正在审核', 'lyb', '2017-09-18', '2017-09-19', '1548', null, '6', ' ', null, null);
INSERT INTO `project` VALUES ('171', '创建两间教室', '审核通过', 'zq', '2017-09-18', '2017-09-19', '1961', null, '6', '投资', null, null);
INSERT INTO `project` VALUES ('172', '清理厕所', '未审核', 'zq', '2017-09-18', '2017-09-19', '5681', null, '4', '国家助学', null, null);
INSERT INTO `project` VALUES ('173', '安排课程表', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '5756', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('174', '安排课程表', '未审核', 'lyb', '2017-09-18', '2017-09-19', '5027', null, '6', ' ', null, null);
INSERT INTO `project` VALUES ('175', '招聘教师', '未审核', 'ygh', '2017-09-18', '2017-09-19', '1068', null, '4', '投资', null, null);
INSERT INTO `project` VALUES ('176', '清理厕所', '未审核', 'ljd', '2017-09-18', '2017-09-19', '5292', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('177', '招聘教师', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '5978', null, '2', ' ', null, null);
INSERT INTO `project` VALUES ('178', '创建两间教室', '未审核', 'ljd', '2017-09-18', '2017-09-19', '2622', null, '6', '投资', null, null);
INSERT INTO `project` VALUES ('179', '招聘教师', '待审核', 'ygh', '2017-09-18', '2017-09-19', '2065', null, '2', '投资', null, null);
INSERT INTO `project` VALUES ('18', '招聘教师', '审核通过', 'zh', '2017-09-18', '2017-09-19', '3479', null, '5', '教育基金', null, null);
INSERT INTO `project` VALUES ('180', '招聘教师', '未审核', 'ljd', '2017-09-18', '2017-09-19', '4732', null, '5', '投资', null, null);
INSERT INTO `project` VALUES ('181', '安排课程表', '待审核', 'zq', '2017-09-18', '2017-09-19', '4097', null, '3', '国家助学', null, null);
INSERT INTO `project` VALUES ('182', '新建教学楼', '审核通过', 'zh', '2017-09-18', '2017-09-19', '5708', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('183', '清理厕所', '待审核', 'jsy', '2017-09-18', '2017-09-19', '5293', null, '5', '投资', null, null);
INSERT INTO `project` VALUES ('184', '招聘教师', '审核通过', 'jsy', '2017-09-18', '2017-09-19', '2242', null, '7', '投资', null, null);
INSERT INTO `project` VALUES ('185', '招聘教师', '审核通过', 'ljd', '2017-09-18', '2017-09-19', '1144', null, '1', '国家助学', null, null);
INSERT INTO `project` VALUES ('186', '招聘教师', '审核通过', 'jsy', '2017-09-18', '2017-09-19', '5700', null, '7', '投资', null, null);
INSERT INTO `project` VALUES ('187', '安排课程表', '正在审核', 'jsy', '2017-09-18', '2017-09-19', '1878', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('188', '清理厕所', '正在审核', 'lyb', '2017-09-18', '2017-09-19', '3129', null, '5', '投资', null, null);
INSERT INTO `project` VALUES ('189', '清理厕所', '审核通过', 'lyb', '2017-09-18', '2017-09-19', '5204', null, '2', '国家助学', null, null);
INSERT INTO `project` VALUES ('19', '安排课程表', '待审核', 'zq', '2017-09-18', '2017-09-19', '5700', null, '1', '国家助学', null, null);
INSERT INTO `project` VALUES ('190', '招聘教师', '未审核', 'lyb', '2017-09-18', '2017-09-19', '1031', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('191', '新建教学楼', '未审核', 'ljd', '2017-09-18', '2017-09-19', '2111', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('192', '清理厕所', '审核通过', 'lyb', '2017-09-18', '2017-09-19', '3514', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('193', '招聘教师', '未审核', 'lyb', '2017-09-18', '2017-09-19', '4155', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('194', '清理厕所', '审核通过', 'ljd', '2017-09-18', '2017-09-19', '1170', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('195', '新建教学楼', '正在审核', 'zh', '2017-09-18', '2017-09-19', '5809', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('196', '清理厕所', '正在审核', 'ygh', '2017-09-18', '2017-09-19', '3917', null, '6', '投资', null, null);
INSERT INTO `project` VALUES ('197', '新建教学楼', '待审核', 'ljd', '2017-09-18', '2017-09-19', '5215', null, '8', '国家助学', null, null);
INSERT INTO `project` VALUES ('198', '安排课程表', '审核通过', 'jsy', '2017-09-18', '2017-09-19', '4831', null, '4', '国家助学', null, null);
INSERT INTO `project` VALUES ('199', '新建教学楼', '待审核', 'lyb', '2017-09-18', '2017-09-19', '5875', null, '7', '投资', null, null);
INSERT INTO `project` VALUES ('2', '创建两间教室', '待审核', 'ljd', '2017-09-18', '2017-09-19', '2908', null, '2', '教育基金', null, null);
INSERT INTO `project` VALUES ('20', '安排课程表', '正在审核', 'jsy', '2017-09-18', '2017-09-19', '5881', null, '8', '国家助学', null, null);
INSERT INTO `project` VALUES ('200', '新建教学楼', '正在审核', 'zq', '2017-09-18', '2017-09-19', '2927', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('21', '安排课程表', '未审核', 'zq', '2017-09-18', '2017-09-19', '4511', null, '2', ' ', null, null);
INSERT INTO `project` VALUES ('22', '招聘教师', '未审核', 'lyb', '2017-09-18', '2017-09-19', '3729', null, '5', '教育基金', null, null);
INSERT INTO `project` VALUES ('23', '安排课程表', '待审核', 'zh', '2017-09-18', '2017-09-19', '5813', null, '4', '国家助学', null, null);
INSERT INTO `project` VALUES ('24', '创建两间教室', '未审核', 'zq', '2017-09-18', '2017-09-19', '3481', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('25', '招聘教师', '待审核', 'zq', '2017-09-18', '2017-09-19', '2668', null, '6', '投资', null, null);
INSERT INTO `project` VALUES ('26', '安排课程表', '未审核', 'lyb', '2017-09-18', '2017-09-19', '2383', null, '8', '教育基金', null, null);
INSERT INTO `project` VALUES ('27', '新建教学楼', '待审核', 'jsy', '2017-09-18', '2017-09-19', '5940', null, '1', ' ', null, null);
INSERT INTO `project` VALUES ('28', '清理厕所', '未审核', 'ljd', '2017-09-18', '2017-09-19', '3410', null, '2', ' ', null, null);
INSERT INTO `project` VALUES ('29', '安排课程表', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '4147', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('3', '创建两间教室', '未审核', 'jsy', '2017-09-18', '2017-09-19', '2398', null, '1', '国家助学', null, null);
INSERT INTO `project` VALUES ('30', '安排课程表', '待审核', 'jsy', '2017-09-18', '2017-09-19', '2905', null, '1', '教育基金', null, null);
INSERT INTO `project` VALUES ('31', '新建教学楼', '待审核', 'ljd', '2017-09-18', '2017-09-19', '5637', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('32', '新建教学楼', '审核通过', 'zh', '2017-09-18', '2017-09-19', '5540', null, '5', '投资', null, null);
INSERT INTO `project` VALUES ('33', '清理厕所', '待审核', 'zh', '2017-09-18', '2017-09-19', '3278', null, '6', '教育基金', null, null);
INSERT INTO `project` VALUES ('34', '招聘教师', '未审核', 'ygh', '2017-09-18', '2017-09-19', '3539', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('35', '新建教学楼', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '4586', null, '1', ' ', null, null);
INSERT INTO `project` VALUES ('36', '新建教学楼', '未审核', 'zh', '2017-09-18', '2017-09-19', '1416', null, '3', '教育基金', null, null);
INSERT INTO `project` VALUES ('37', '创建两间教室', '待审核', 'zh', '2017-09-18', '2017-09-19', '2381', null, '5', '国家助学', null, null);
INSERT INTO `project` VALUES ('38', '清理厕所', '正在审核', 'zh', '2017-09-18', '2017-09-19', '3807', null, '3', '教育基金', null, null);
INSERT INTO `project` VALUES ('39', '新建教学楼', '待审核', 'ygh', '2017-09-18', '2017-09-19', '2840', null, '1', ' ', null, null);
INSERT INTO `project` VALUES ('4', '招聘教师', '未审核', 'lyb', '2017-09-18', '2017-09-19', '5722', null, '8', ' ', null, null);
INSERT INTO `project` VALUES ('40', '招聘教师', '待审核', 'ljd', '2017-09-18', '2017-09-19', '2410', null, '4', '教育基金', null, null);
INSERT INTO `project` VALUES ('41', '安排课程表', '正在审核', 'lyb', '2017-09-18', '2017-09-19', '4058', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('42', '创建两间教室', '未审核', 'zq', '2017-09-18', '2017-09-19', '3418', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('43', '创建两间教室', '审核通过', 'jsy', '2017-09-18', '2017-09-19', '4061', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('44', '招聘教师', '未审核', 'ljd', '2017-09-18', '2017-09-19', '4294', null, '7', '投资', null, null);
INSERT INTO `project` VALUES ('45', '清理厕所', '待审核', 'zh', '2017-09-18', '2017-09-19', '2536', null, '4', '国家助学', null, null);
INSERT INTO `project` VALUES ('46', '创建两间教室', '审核通过', 'jsy', '2017-09-18', '2017-09-19', '3214', null, '2', '教育基金', null, null);
INSERT INTO `project` VALUES ('47', '创建两间教室', '未审核', 'jsy', '2017-09-18', '2017-09-19', '5414', null, '2', '教育基金', null, null);
INSERT INTO `project` VALUES ('48', '创建两间教室', '正在审核', 'ljd', '2017-09-18', '2017-09-19', '1014', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('49', '招聘教师', '正在审核', 'zh', '2017-09-18', '2017-09-19', '5853', null, '3', '教育基金', null, null);
INSERT INTO `project` VALUES ('5', '安排课程表', '正在审核', 'zh', '2017-09-18', '2017-09-19', '2079', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('50', '新建教学楼', '待审核', 'zh', '2017-09-18', '2017-09-19', '4013', null, '2', ' ', null, null);
INSERT INTO `project` VALUES ('51', '招聘教师', '正在审核', 'jsy', '2017-09-18', '2017-09-19', '4069', null, '7', '投资', null, null);
INSERT INTO `project` VALUES ('52', '清理厕所', '未审核', 'zh', '2017-09-18', '2017-09-19', '1653', null, '3', '教育基金', null, null);
INSERT INTO `project` VALUES ('53', '新建教学楼', '未审核', 'lyb', '2017-09-18', '2017-09-19', '1974', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('54', '创建两间教室', '正在审核', 'zh', '2017-09-18', '2017-09-19', '5509', null, '7', '国家助学', null, null);
INSERT INTO `project` VALUES ('55', '安排课程表', '未审核', 'lyb', '2017-09-18', '2017-09-19', '1508', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('56', '招聘教师', '正在审核', 'zq', '2017-09-18', '2017-09-19', '5848', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('57', '新建教学楼', '正在审核', 'zq', '2017-09-18', '2017-09-19', '3148', null, '4', '投资', null, null);
INSERT INTO `project` VALUES ('58', '新建教学楼', '正在审核', 'zq', '2017-09-18', '2017-09-19', '3581', null, '2', '国家助学', null, null);
INSERT INTO `project` VALUES ('59', '创建两间教室', '正在审核', 'jsy', '2017-09-18', '2017-09-19', '3068', null, '3', '教育基金', null, null);
INSERT INTO `project` VALUES ('6', '清理厕所', '未审核', 'zh', '2017-09-18', '2017-09-19', '5496', null, '6', ' ', null, null);
INSERT INTO `project` VALUES ('60', '招聘教师', '正在审核', 'zq', '2017-09-18', '2017-09-19', '4156', null, '2', '国家助学', null, null);
INSERT INTO `project` VALUES ('61', '创建两间教室', '正在审核', 'lyb', '2017-09-18', '2017-09-19', '4061', null, '8', '国家助学', null, null);
INSERT INTO `project` VALUES ('62', '新建教学楼', '未审核', 'ygh', '2017-09-18', '2017-09-19', '5654', null, '6', ' ', null, null);
INSERT INTO `project` VALUES ('63', '创建两间教室', '未审核', 'zh', '2017-09-18', '2017-09-19', '1417', null, '8', '国家助学', null, null);
INSERT INTO `project` VALUES ('64', '招聘教师', '待审核', 'lyb', '2017-09-18', '2017-09-19', '1127', null, '6', '投资', null, null);
INSERT INTO `project` VALUES ('65', '招聘教师', '正在审核', 'ljd', '2017-09-18', '2017-09-19', '5620', null, '4', '投资', null, null);
INSERT INTO `project` VALUES ('66', '新建教学楼', '待审核', 'jsy', '2017-09-18', '2017-09-19', '4987', null, '2', '国家助学', null, null);
INSERT INTO `project` VALUES ('67', '创建两间教室', '未审核', 'ygh', '2017-09-18', '2017-09-19', '3906', null, '8', ' ', null, null);
INSERT INTO `project` VALUES ('68', '创建两间教室', '未审核', 'zh', '2017-09-18', '2017-09-19', '5090', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('69', '新建教学楼', '未审核', 'jsy', '2017-09-18', '2017-09-19', '2422', null, '1', '国家助学', null, null);
INSERT INTO `project` VALUES ('7', '新建教学楼', '未审核', 'zq', '2017-09-18', '2017-09-19', '2995', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('70', '创建两间教室', '未审核', 'zh', '2017-09-18', '2017-09-19', '1016', null, '2', ' ', null, null);
INSERT INTO `project` VALUES ('71', '招聘教师', '未审核', 'zh', '2017-09-18', '2017-09-19', '4986', null, '7', '教育基金', null, null);
INSERT INTO `project` VALUES ('72', '创建两间教室', '待审核', 'ygh', '2017-09-18', '2017-09-19', '4900', null, '6', ' ', null, null);
INSERT INTO `project` VALUES ('73', '安排课程表', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '3222', null, '6', '投资', null, null);
INSERT INTO `project` VALUES ('74', '招聘教师', '正在审核', 'ljd', '2017-09-18', '2017-09-19', '4135', null, '3', '教育基金', null, null);
INSERT INTO `project` VALUES ('75', '安排课程表', '审核通过', 'ljd', '2017-09-18', '2017-09-19', '1124', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('76', '安排课程表', '待审核', 'ygh', '2017-09-18', '2017-09-19', '5156', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('77', '创建两间教室', '待审核', 'ygh', '2017-09-18', '2017-09-19', '4982', null, '1', '投资', null, null);
INSERT INTO `project` VALUES ('78', '清理厕所', '待审核', 'zq', '2017-09-18', '2017-09-19', '4540', null, '1', '投资', null, null);
INSERT INTO `project` VALUES ('79', '新建教学楼', '审核通过', 'zh', '2017-09-18', '2017-09-19', '1929', null, '8', ' ', null, null);
INSERT INTO `project` VALUES ('8', '安排课程表', '待审核', 'zh', '2017-09-18', '2017-09-19', '4933', null, '3', ' ', null, null);
INSERT INTO `project` VALUES ('80', '清理厕所', '审核通过', 'ljd', '2017-09-18', '2017-09-19', '2639', null, '8', '投资', null, null);
INSERT INTO `project` VALUES ('81', '招聘教师', '待审核', 'zq', '2017-09-18', '2017-09-19', '2300', null, '7', '国家助学', null, null);
INSERT INTO `project` VALUES ('82', '招聘教师', '未审核', 'zh', '2017-09-18', '2017-09-19', '1010', null, '8', ' ', null, null);
INSERT INTO `project` VALUES ('83', '招聘教师', '待审核', 'ygh', '2017-09-18', '2017-09-19', '2406', null, '3', '投资', null, null);
INSERT INTO `project` VALUES ('84', '安排课程表', '正在审核', 'zh', '2017-09-18', '2017-09-19', '2978', null, '6', ' ', null, null);
INSERT INTO `project` VALUES ('85', '创建两间教室', '未审核', 'jsy', '2017-09-18', '2017-09-19', '5293', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('86', '创建两间教室', '未审核', 'zq', '2017-09-18', '2017-09-19', '1770', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('87', '创建两间教室', '审核通过', 'zh', '2017-09-18', '2017-09-19', '2549', null, '1', ' ', null, null);
INSERT INTO `project` VALUES ('88', '新建教学楼', '待审核', 'lyb', '2017-09-18', '2017-09-19', '2796', null, '2', ' ', null, null);
INSERT INTO `project` VALUES ('89', '安排课程表', '正在审核', 'zh', '2017-09-18', '2017-09-19', '5253', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('9', '招聘教师', '未审核', 'ygh', '2017-09-18', '2017-09-19', '2227', null, '5', ' ', null, null);
INSERT INTO `project` VALUES ('90', '安排课程表', '待审核', 'zq', '2017-09-18', '2017-09-19', '5801', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('91', '招聘教师', '未审核', 'zq', '2017-09-18', '2017-09-19', '1700', null, '5', '投资', null, null);
INSERT INTO `project` VALUES ('92', '安排课程表', '审核通过', 'ygh', '2017-09-18', '2017-09-19', '3840', null, '2', ' ', null, null);
INSERT INTO `project` VALUES ('93', '创建两间教室', '正在审核', 'ygh', '2017-09-18', '2017-09-19', '3640', null, '5', '国家助学', null, null);
INSERT INTO `project` VALUES ('94', '新建教学楼', '待审核', 'zq', '2017-09-18', '2017-09-19', '4221', null, '5', '投资', null, null);
INSERT INTO `project` VALUES ('95', '创建两间教室', '待审核', 'lyb', '2017-09-18', '2017-09-19', '1376', null, '4', ' ', null, null);
INSERT INTO `project` VALUES ('96', '清理厕所', '未审核', 'lyb', '2017-09-18', '2017-09-19', '1844', null, '7', ' ', null, null);
INSERT INTO `project` VALUES ('97', '清理厕所', '正在审核', 'zh', '2017-09-18', '2017-09-19', '1222', null, '5', '教育基金', null, null);
INSERT INTO `project` VALUES ('98', '招聘教师', '未审核', 'zh', '2017-09-18', '2017-09-19', '2640', null, '6', ' ', null, null);
INSERT INTO `project` VALUES ('99', '清理厕所', '待审核', 'jsy', '2017-09-18', '2017-09-19', '1496', null, '6', ' ', null, null);

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(96) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(3) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `nation` varchar(96) DEFAULT NULL,
  `team` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES ('3', '仲长逸权', '5', '男', '5', '2017', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('4', '钟离神', '2', '女', '7', '2011', '壮族', '2');
INSERT INTO `student_info` VALUES ('5', '黄泽俺', '7', '男', '6', '2009', '蒙古族', '7');
INSERT INTO `student_info` VALUES ('6', '史昊壁', '15', '女', '8', '2009', '回族', '8');
INSERT INTO `student_info` VALUES ('7', '容募', '15', '男', '5', '2001', '彝族', '8');
INSERT INTO `student_info` VALUES ('8', '全眶蹼', '16', '男', '1', '2006', '壮族', '3');
INSERT INTO `student_info` VALUES ('9', '司寇靓犄', '5', '女', '3', '2014', '白族', '5');
INSERT INTO `student_info` VALUES ('10', '后殛', '15', '女', '4', '2002', '维吾尔族', '7');
INSERT INTO `student_info` VALUES ('11', '甘娣', '6', '男', '6', '2010', '回族', '5');
INSERT INTO `student_info` VALUES ('12', '哈苫', '6', '男', '3', '2011', '回族', '6');
INSERT INTO `student_info` VALUES ('13', '是瞿蒜', '15', '女', '4', '2012', '壮族', '3');
INSERT INTO `student_info` VALUES ('14', '归蚬脬', '10', '女', '6', '2012', '维吾尔族', '7');
INSERT INTO `student_info` VALUES ('15', '冯芒瞽', '7', '女', '1', '2000', '回族', '1');
INSERT INTO `student_info` VALUES ('16', '荆镫', '4', '女', '2', '2014', '壮族', '7');
INSERT INTO `student_info` VALUES ('17', '陈莞', '16', '男', '7', '2001', '彝族', '8');
INSERT INTO `student_info` VALUES ('18', '高础', '5', '男', '2', '2014', '蒙古族', '7');
INSERT INTO `student_info` VALUES ('19', '吴政', '5', '女', '7', '2011', '维吾尔族', '4');
INSERT INTO `student_info` VALUES ('20', '侯司蜕', '5', '女', '0', '2001', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('21', '段干猛', '8', '男', '1', '2010', '其他族', '5');
INSERT INTO `student_info` VALUES ('22', '廖谌', '11', '男', '2', '2000', '回族', '2');
INSERT INTO `student_info` VALUES ('23', '娄圪', '13', '男', '0', '2009', '彝族', '4');
INSERT INTO `student_info` VALUES ('24', '杜陌缫', '4', '女', '4', '2010', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('25', '京胨堰', '0', '女', '1', '2011', '彝族', '8');
INSERT INTO `student_info` VALUES ('26', '姚嫫', '1', '男', '5', '2009', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('27', '熊砻仨', '6', '男', '7', '2011', '壮族', '3');
INSERT INTO `student_info` VALUES ('28', '梅踪阏', '13', '男', '0', '2004', '回族', '3');
INSERT INTO `student_info` VALUES ('29', '臧惑恍', '10', '男', '7', '2013', '维吾尔族', '2');
INSERT INTO `student_info` VALUES ('30', '包揍', '15', '女', '4', '2002', '白族', '3');
INSERT INTO `student_info` VALUES ('31', '屠夥', '8', '男', '6', '2009', '白族', '6');
INSERT INTO `student_info` VALUES ('32', '詹腼', '2', '女', '2', '2001', '其他族', '4');
INSERT INTO `student_info` VALUES ('33', '屋庐还', '5', '男', '5', '2013', '其他族', '7');
INSERT INTO `student_info` VALUES ('34', '任捞', '14', '男', '6', '2004', '回族', '7');
INSERT INTO `student_info` VALUES ('35', '折莺', '11', '女', '2', '2003', '壮族', '5');
INSERT INTO `student_info` VALUES ('36', '丁檑儇', '3', '男', '3', '2013', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('37', '东方畜', '8', '男', '1', '2009', '回族', '3');
INSERT INTO `student_info` VALUES ('38', '缑湔', '13', '女', '3', '2007', '白族', '7');
INSERT INTO `student_info` VALUES ('39', '秘论', '11', '男', '2', '2014', '其他族', '0');
INSERT INTO `student_info` VALUES ('40', '姜傲', '10', '男', '5', '2012', '维吾尔族', '1');
INSERT INTO `student_info` VALUES ('41', '家掎绂', '13', '男', '0', '2014', '维吾尔族', '2');
INSERT INTO `student_info` VALUES ('42', '钮肴搭', '5', '男', '0', '2006', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('43', '盖氵', '2', '女', '8', '2014', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('44', '浦毯斯', '5', '女', '0', '2012', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('45', '仓唁訾', '9', '男', '2', '2008', '白族', '1');
INSERT INTO `student_info` VALUES ('46', '真逄焓', '9', '男', '7', '2001', '回族', '6');
INSERT INTO `student_info` VALUES ('47', '易蛭', '15', '女', '4', '2012', '白族', '0');
INSERT INTO `student_info` VALUES ('48', '娄编衄', '1', '女', '4', '2006', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('49', '子车橐', '15', '男', '8', '2003', '白族', '2');
INSERT INTO `student_info` VALUES ('50', '郈鞋格', '0', '女', '3', '2014', '回族', '6');
INSERT INTO `student_info` VALUES ('51', '公冶柽后', '7', '女', '1', '2002', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('52', '衡猾杆', '4', '男', '7', '2006', '壮族', '7');
INSERT INTO `student_info` VALUES ('53', '糜膺', '1', '男', '2', '2013', '回族', '8');
INSERT INTO `student_info` VALUES ('54', '井屎', '16', '女', '7', '2000', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('55', '敖墓附', '6', '女', '0', '2003', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('56', '仲长鸥检', '12', '女', '6', '2005', '其他族', '8');
INSERT INTO `student_info` VALUES ('57', '魏讦闼', '4', '男', '8', '2009', '维吾尔族', '4');
INSERT INTO `student_info` VALUES ('58', '符埝堑', '13', '女', '5', '2006', '壮族', '3');
INSERT INTO `student_info` VALUES ('59', '计寥', '5', '女', '1', '2004', '壮族', '6');
INSERT INTO `student_info` VALUES ('60', '钦蜣', '2', '女', '8', '2011', '其他族', '6');
INSERT INTO `student_info` VALUES ('61', '屈削韦', '2', '女', '4', '2006', '回族', '8');
INSERT INTO `student_info` VALUES ('62', '督蠕', '3', '男', '4', '2007', '维吾尔族', '0');
INSERT INTO `student_info` VALUES ('63', '温十', '7', '女', '4', '2010', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('64', '溥厄洞', '3', '男', '8', '2006', '壮族', '8');
INSERT INTO `student_info` VALUES ('65', '冼嘲釉', '11', '男', '1', '2004', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('66', '郈嵛', '15', '女', '5', '2002', '回族', '1');
INSERT INTO `student_info` VALUES ('67', '王蛰惘', '1', '女', '8', '2013', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('68', '胥妗嗾', '3', '女', '6', '2011', '回族', '5');
INSERT INTO `student_info` VALUES ('69', '柯噘憬', '6', '男', '3', '2013', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('70', '陶废席', '1', '女', '7', '2007', '白族', '5');
INSERT INTO `student_info` VALUES ('71', '鲁谣', '15', '男', '0', '2008', '维吾尔族', '4');
INSERT INTO `student_info` VALUES ('72', '庾埤娠', '14', '女', '8', '2003', '维吾尔族', '7');
INSERT INTO `student_info` VALUES ('73', '支垂曳', '8', '女', '4', '2013', '其他族', '1');
INSERT INTO `student_info` VALUES ('74', '枚熨剂', '6', '女', '3', '2000', '彝族', '5');
INSERT INTO `student_info` VALUES ('75', '莘委荜', '10', '女', '1', '2010', '其他族', '6');
INSERT INTO `student_info` VALUES ('76', '穆箍罂', '1', '女', '3', '2002', '维吾尔族', '2');
INSERT INTO `student_info` VALUES ('77', '夏镝', '13', '男', '5', '2002', '其他族', '6');
INSERT INTO `student_info` VALUES ('78', '勾蛩', '3', '男', '4', '2003', '维吾尔族', '6');
INSERT INTO `student_info` VALUES ('79', '岑蠼嗬', '11', '男', '3', '2013', '壮族', '4');
INSERT INTO `student_info` VALUES ('80', '墨摺', '4', '男', '0', '2001', '回族', '8');
INSERT INTO `student_info` VALUES ('81', '曾择', '13', '女', '3', '2011', '白族', '3');
INSERT INTO `student_info` VALUES ('82', '桂犹', '6', '女', '5', '2005', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('83', '耿稆腻', '15', '男', '3', '2002', '彝族', '8');
INSERT INTO `student_info` VALUES ('84', '蓟恍刻', '7', '男', '7', '2004', '回族', '5');
INSERT INTO `student_info` VALUES ('85', '佟轨柏', '0', '男', '7', '2007', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('86', '祝菀', '11', '男', '6', '2008', '回族', '0');
INSERT INTO `student_info` VALUES ('87', '林非', '0', '男', '8', '2004', '维吾尔族', '7');
INSERT INTO `student_info` VALUES ('88', '凌绞疝', '14', '男', '0', '2014', '回族', '2');
INSERT INTO `student_info` VALUES ('89', '汪锏', '8', '男', '4', '2009', '维吾尔族', '7');
INSERT INTO `student_info` VALUES ('90', '胥燠', '2', '男', '3', '2012', '壮族', '1');
INSERT INTO `student_info` VALUES ('91', '乔玛卞', '1', '女', '3', '2013', '壮族', '3');
INSERT INTO `student_info` VALUES ('92', '宗正顺', '11', '女', '1', '2003', '蒙古族', '8');
INSERT INTO `student_info` VALUES ('93', '董赏歃', '3', '男', '1', '2008', '其他族', '0');
INSERT INTO `student_info` VALUES ('94', '单于庭镎', '4', '男', '7', '2011', '回族', '4');
INSERT INTO `student_info` VALUES ('95', '关锲庄', '12', '女', '5', '2007', '回族', '4');
INSERT INTO `student_info` VALUES ('96', '福垧播', '14', '男', '1', '2011', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('97', '刘吖邃', '16', '女', '1', '2006', '回族', '7');
INSERT INTO `student_info` VALUES ('98', '曹鼓', '11', '男', '6', '2002', '壮族', '4');
INSERT INTO `student_info` VALUES ('99', '向末跄', '3', '女', '8', '2011', '蒙古族', '1');
INSERT INTO `student_info` VALUES ('100', '胡僦', '2', '女', '0', '2007', '回族', '3');
INSERT INTO `student_info` VALUES ('101', '公羊米阂', '5', '男', '0', '2001', '壮族', '0');
INSERT INTO `student_info` VALUES ('102', '余缑', '1', '男', '4', '2007', '回族', '6');
INSERT INTO `student_info` VALUES ('103', '京砍挢', '2', '男', '3', '2008', '壮族', '4');
INSERT INTO `student_info` VALUES ('104', '洪旺', '8', '女', '3', '2000', '其他族', '7');
INSERT INTO `student_info` VALUES ('105', '费士', '7', '男', '4', '2004', '其他族', '5');
INSERT INTO `student_info` VALUES ('106', '巴�', '7', '女', '2', '2006', '维吾尔族', '0');
INSERT INTO `student_info` VALUES ('107', '农铬溆', '11', '女', '8', '2000', '白族', '4');
INSERT INTO `student_info` VALUES ('108', '沙韩男', '7', '女', '2', '2006', '彝族', '4');
INSERT INTO `student_info` VALUES ('109', '谯虔靥', '5', '女', '6', '2002', '白族', '5');
INSERT INTO `student_info` VALUES ('110', '鞠梧眄', '4', '女', '0', '2001', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('111', '云蹁傅', '14', '女', '5', '2013', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('112', '印氆港', '10', '女', '6', '2010', '白族', '2');
INSERT INTO `student_info` VALUES ('113', '澹台聆', '8', '男', '2', '2014', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('114', '枚挞', '8', '男', '4', '2002', '回族', '3');
INSERT INTO `student_info` VALUES ('115', '仲长遣嵴', '11', '女', '2', '2007', '壮族', '2');
INSERT INTO `student_info` VALUES ('116', '茹綮渝', '13', '男', '8', '2002', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('117', '戎邾凹', '14', '女', '1', '2014', '回族', '4');
INSERT INTO `student_info` VALUES ('118', '罗锴', '10', '女', '4', '2014', '壮族', '0');
INSERT INTO `student_info` VALUES ('119', '风潜昂', '0', '男', '2', '2000', '彝族', '6');
INSERT INTO `student_info` VALUES ('120', '宾玢', '16', '男', '4', '2000', '其他族', '3');
INSERT INTO `student_info` VALUES ('121', '公乘棣蒋', '14', '男', '4', '2008', '维吾尔族', '3');
INSERT INTO `student_info` VALUES ('122', '易窄玑', '8', '男', '0', '2004', '彝族', '7');
INSERT INTO `student_info` VALUES ('123', '米龌', '0', '女', '4', '2009', '壮族', '2');
INSERT INTO `student_info` VALUES ('124', '鲁甭', '4', '女', '6', '2014', '维吾尔族', '1');
INSERT INTO `student_info` VALUES ('125', '傅绾澈', '0', '女', '2', '2000', '彝族', '5');
INSERT INTO `student_info` VALUES ('126', '宇文裒', '4', '男', '3', '2006', '回族', '8');
INSERT INTO `student_info` VALUES ('127', '权钷', '7', '男', '4', '2005', '彝族', '8');
INSERT INTO `student_info` VALUES ('128', '谈眩', '10', '男', '6', '2001', '其他族', '3');
INSERT INTO `student_info` VALUES ('129', '密醢', '0', '女', '7', '2014', '回族', '3');
INSERT INTO `student_info` VALUES ('130', '强许敞', '6', '男', '1', '2008', '壮族', '0');
INSERT INTO `student_info` VALUES ('131', '竹揽', '7', '男', '5', '2012', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('132', '微生犁', '6', '女', '2', '2009', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('133', '颛孙断', '9', '女', '5', '2007', '彝族', '0');
INSERT INTO `student_info` VALUES ('134', '司城唷', '1', '男', '6', '2008', '其他族', '7');
INSERT INTO `student_info` VALUES ('135', '霍屈评', '11', '女', '4', '2014', '回族', '3');
INSERT INTO `student_info` VALUES ('136', '芮溅', '14', '女', '0', '2002', '回族', '8');
INSERT INTO `student_info` VALUES ('137', '溥闸', '0', '女', '8', '2005', '壮族', '1');
INSERT INTO `student_info` VALUES ('138', '钦濮', '3', '男', '7', '2004', '壮族', '4');
INSERT INTO `student_info` VALUES ('139', '霍悍鲲', '4', '女', '6', '2004', '其他族', '3');
INSERT INTO `student_info` VALUES ('140', '仇什及', '11', '男', '6', '2013', '蒙古族', '1');
INSERT INTO `student_info` VALUES ('141', '颛孙衔拱', '2', '男', '3', '2005', '彝族', '4');
INSERT INTO `student_info` VALUES ('142', '能陆', '13', '男', '8', '2013', '维吾尔族', '8');
INSERT INTO `student_info` VALUES ('143', '召靠儇', '10', '女', '3', '2001', '白族', '8');
INSERT INTO `student_info` VALUES ('144', '邢揪', '11', '男', '8', '2010', '白族', '7');
INSERT INTO `student_info` VALUES ('145', '冯傩氓', '6', '女', '1', '2004', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('146', '公西蝗', '16', '女', '6', '2000', '回族', '7');
INSERT INTO `student_info` VALUES ('147', '王孙蚂', '11', '女', '5', '2010', '维吾尔族', '8');
INSERT INTO `student_info` VALUES ('148', '甘遵舁', '7', '男', '3', '2011', '其他族', '2');
INSERT INTO `student_info` VALUES ('149', '东程', '0', '女', '1', '2011', '壮族', '3');
INSERT INTO `student_info` VALUES ('150', '居螵挟', '15', '男', '1', '2001', '白族', '1');
INSERT INTO `student_info` VALUES ('151', '贾倮葬', '16', '女', '1', '2009', '彝族', '7');
INSERT INTO `student_info` VALUES ('152', '闻人硎', '10', '男', '2', '2002', '彝族', '1');
INSERT INTO `student_info` VALUES ('153', '能诀', '4', '男', '1', '2007', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('154', '挚盍', '15', '女', '3', '2012', '其他族', '8');
INSERT INTO `student_info` VALUES ('155', '阳扁蒋', '15', '女', '7', '2007', '回族', '7');
INSERT INTO `student_info` VALUES ('156', '嵇彻', '1', '男', '8', '2007', '白族', '7');
INSERT INTO `student_info` VALUES ('157', '司徒器', '15', '男', '5', '2011', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('158', '司马缅', '4', '男', '4', '2008', '白族', '6');
INSERT INTO `student_info` VALUES ('159', '楚突', '2', '男', '1', '2011', '其他族', '3');
INSERT INTO `student_info` VALUES ('160', '瞿苤', '8', '男', '5', '2010', '壮族', '0');
INSERT INTO `student_info` VALUES ('161', '召喂', '1', '女', '1', '2004', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('162', '骆蛲坎', '2', '女', '7', '2008', '白族', '1');
INSERT INTO `student_info` VALUES ('163', '苍泷止', '12', '女', '6', '2004', '彝族', '8');
INSERT INTO `student_info` VALUES ('164', '墨瞰', '11', '女', '8', '2000', '白族', '0');
INSERT INTO `student_info` VALUES ('165', '严栽敉', '14', '女', '1', '2004', '白族', '5');
INSERT INTO `student_info` VALUES ('166', '真喘', '8', '女', '1', '2011', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('167', '仲孙栓', '10', '男', '3', '2002', '回族', '1');
INSERT INTO `student_info` VALUES ('168', '暨览', '13', '女', '7', '2002', '回族', '7');
INSERT INTO `student_info` VALUES ('169', '董貌穷', '0', '男', '6', '2005', '白族', '7');
INSERT INTO `student_info` VALUES ('170', '公冶纯瑛', '5', '女', '8', '2005', '白族', '6');
INSERT INTO `student_info` VALUES ('171', '祁玲贶', '5', '女', '1', '2006', '壮族', '6');
INSERT INTO `student_info` VALUES ('172', '林缭', '0', '女', '7', '2007', '彝族', '3');
INSERT INTO `student_info` VALUES ('173', '真枞针', '15', '女', '1', '2006', '蒙古族', '7');
INSERT INTO `student_info` VALUES ('174', '淳于佶', '1', '女', '7', '2014', '维吾尔族', '7');
INSERT INTO `student_info` VALUES ('175', '老倌', '3', '女', '0', '2005', '回族', '1');
INSERT INTO `student_info` VALUES ('176', '卢蜿愈', '0', '男', '6', '2006', '白族', '3');
INSERT INTO `student_info` VALUES ('177', '支纛', '8', '女', '7', '2004', '蒙古族', '8');
INSERT INTO `student_info` VALUES ('178', '法舍', '11', '女', '5', '2014', '彝族', '0');
INSERT INTO `student_info` VALUES ('179', '昌郅聍', '4', '女', '6', '2013', '其他族', '5');
INSERT INTO `student_info` VALUES ('180', '巨问姹', '3', '女', '3', '2010', '蒙古族', '1');
INSERT INTO `student_info` VALUES ('181', '曲辩', '11', '男', '6', '2011', '维吾尔族', '1');
INSERT INTO `student_info` VALUES ('182', '艾诨怏', '6', '女', '0', '2005', '维吾尔族', '5');
INSERT INTO `student_info` VALUES ('183', '火毽', '12', '男', '8', '2011', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('184', '钱銎', '6', '男', '4', '2002', '蒙古族', '1');
INSERT INTO `student_info` VALUES ('185', '繁售', '9', '女', '1', '2013', '彝族', '0');
INSERT INTO `student_info` VALUES ('186', '伍电坭', '1', '男', '7', '2004', '回族', '0');
INSERT INTO `student_info` VALUES ('187', '娄垩竣', '15', '男', '4', '2008', '白族', '8');
INSERT INTO `student_info` VALUES ('188', '种淫', '8', '女', '6', '2008', '维吾尔族', '7');
INSERT INTO `student_info` VALUES ('189', '韦郁', '15', '男', '8', '2004', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('190', '许暑峥', '1', '女', '3', '2002', '彝族', '7');
INSERT INTO `student_info` VALUES ('191', '吉晨', '16', '女', '5', '2000', '彝族', '3');
INSERT INTO `student_info` VALUES ('192', '怀浼为', '12', '女', '7', '2003', '蒙古族', '7');
INSERT INTO `student_info` VALUES ('193', '毕祀哐', '4', '女', '8', '2006', '壮族', '7');
INSERT INTO `student_info` VALUES ('194', '随槲昵', '0', '女', '2', '2001', '壮族', '2');
INSERT INTO `student_info` VALUES ('195', '贾滋', '13', '女', '2', '2007', '回族', '4');
INSERT INTO `student_info` VALUES ('196', '枚卖', '8', '女', '5', '2002', '其他族', '8');
INSERT INTO `student_info` VALUES ('197', '亢岍', '15', '男', '0', '2002', '回族', '2');
INSERT INTO `student_info` VALUES ('198', '葛郏', '11', '女', '0', '2000', '其他族', '5');
INSERT INTO `student_info` VALUES ('199', '郎臼凤', '15', '女', '3', '2012', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('200', '亓皲漳', '15', '男', '6', '2002', '其他族', '1');
INSERT INTO `student_info` VALUES ('201', '卓佴', '11', '男', '5', '2003', '其他族', '0');
INSERT INTO `student_info` VALUES ('202', '南宫爿', '12', '男', '3', '2008', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('203', '端叨', '9', '男', '7', '2010', '壮族', '8');
INSERT INTO `student_info` VALUES ('204', '伏砭嗓', '4', '女', '6', '2000', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('205', '海蓰鹞', '11', '男', '7', '2013', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('206', '岳阄噢', '11', '女', '3', '2001', '维吾尔族', '2');
INSERT INTO `student_info` VALUES ('207', '时矫剌', '14', '女', '8', '2014', '回族', '1');
INSERT INTO `student_info` VALUES ('208', '宦冤', '16', '男', '1', '2001', '回族', '2');
INSERT INTO `student_info` VALUES ('209', '黎沈', '7', '女', '2', '2008', '回族', '3');
INSERT INTO `student_info` VALUES ('210', '阚搭', '16', '女', '3', '2003', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('211', '言呱驿', '13', '女', '2', '2012', '彝族', '1');
INSERT INTO `student_info` VALUES ('212', '壤驷蒲骚', '1', '男', '0', '2005', '维吾尔族', '1');
INSERT INTO `student_info` VALUES ('213', '裘犍', '10', '男', '3', '2000', '白族', '2');
INSERT INTO `student_info` VALUES ('214', '韶酩', '4', '女', '7', '2011', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('215', '平栌', '9', '男', '6', '2002', '回族', '3');
INSERT INTO `student_info` VALUES ('216', '上官咫捌', '16', '男', '2', '2010', '维吾尔族', '5');
INSERT INTO `student_info` VALUES ('217', '贡柽', '8', '女', '7', '2009', '壮族', '5');
INSERT INTO `student_info` VALUES ('218', '华覆', '6', '男', '1', '2013', '壮族', '5');
INSERT INTO `student_info` VALUES ('219', '臧谌氲', '11', '男', '8', '2008', '彝族', '8');
INSERT INTO `student_info` VALUES ('220', '湛趿', '1', '女', '5', '2000', '彝族', '7');
INSERT INTO `student_info` VALUES ('221', '葛锥赶', '6', '男', '3', '2011', '白族', '7');
INSERT INTO `student_info` VALUES ('222', '詹琅', '3', '男', '4', '2013', '维吾尔族', '5');
INSERT INTO `student_info` VALUES ('223', '宰硎', '11', '女', '8', '2011', '回族', '7');
INSERT INTO `student_info` VALUES ('224', '褚趑陵', '16', '女', '7', '2008', '其他族', '1');
INSERT INTO `student_info` VALUES ('225', '钟蓁线', '16', '女', '5', '2014', '回族', '7');
INSERT INTO `student_info` VALUES ('226', '宁伪人', '14', '女', '6', '2002', '回族', '7');
INSERT INTO `student_info` VALUES ('227', '卫歃炎', '1', '男', '5', '2014', '彝族', '1');
INSERT INTO `student_info` VALUES ('228', '篁鹦', '8', '男', '6', '2013', '白族', '4');
INSERT INTO `student_info` VALUES ('229', '北宫滠', '16', '男', '1', '2011', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('230', '荀舅檠', '0', '女', '8', '2007', '蒙古族', '8');
INSERT INTO `student_info` VALUES ('231', '申屠疱', '4', '男', '1', '2011', '其他族', '8');
INSERT INTO `student_info` VALUES ('232', '师妮带', '4', '女', '5', '2011', '回族', '3');
INSERT INTO `student_info` VALUES ('233', '谯佟', '7', '男', '3', '2014', '彝族', '2');
INSERT INTO `student_info` VALUES ('234', '巢脯', '9', '女', '3', '2014', '壮族', '2');
INSERT INTO `student_info` VALUES ('235', '夏狭', '12', '女', '4', '2011', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('236', '阮振', '16', '女', '4', '2012', '蒙古族', '7');
INSERT INTO `student_info` VALUES ('237', '富芗', '0', '女', '1', '2007', '回族', '7');
INSERT INTO `student_info` VALUES ('238', '伍丹', '5', '男', '6', '2003', '回族', '7');
INSERT INTO `student_info` VALUES ('239', '恽杂饨', '16', '女', '7', '2012', '其他族', '8');
INSERT INTO `student_info` VALUES ('240', '姬堞', '9', '男', '4', '2009', '其他族', '1');
INSERT INTO `student_info` VALUES ('241', '游栾', '10', '男', '6', '2014', '彝族', '2');
INSERT INTO `student_info` VALUES ('242', '芮骋', '11', '男', '6', '2009', '白族', '7');
INSERT INTO `student_info` VALUES ('243', '包陆', '16', '男', '7', '2000', '白族', '3');
INSERT INTO `student_info` VALUES ('244', '西门昨', '15', '女', '3', '2005', '壮族', '6');
INSERT INTO `student_info` VALUES ('245', '闻驿', '8', '男', '7', '2012', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('246', '梅邂', '6', '女', '4', '2010', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('247', '南岑崂', '15', '男', '5', '2004', '彝族', '0');
INSERT INTO `student_info` VALUES ('248', '盛海钜', '1', '男', '3', '2009', '回族', '6');
INSERT INTO `student_info` VALUES ('249', '宰父并啪', '11', '女', '5', '2013', '其他族', '0');
INSERT INTO `student_info` VALUES ('250', '骆望劓', '14', '女', '6', '2011', '彝族', '7');
INSERT INTO `student_info` VALUES ('251', '殳河徙', '5', '女', '1', '2006', '壮族', '2');
INSERT INTO `student_info` VALUES ('252', '荣践磺', '10', '女', '8', '2000', '回族', '1');
INSERT INTO `student_info` VALUES ('253', '第五镰', '8', '女', '6', '2008', '维吾尔族', '1');
INSERT INTO `student_info` VALUES ('254', '皇甫镢屹', '1', '男', '4', '2004', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('255', '鲜越', '7', '女', '4', '2008', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('256', '充嚓瘟', '2', '女', '7', '2001', '回族', '3');
INSERT INTO `student_info` VALUES ('257', '邹鸟锼', '10', '男', '2', '2000', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('258', '冉徵裢', '9', '男', '4', '2008', '回族', '5');
INSERT INTO `student_info` VALUES ('259', '金吨', '11', '女', '2', '2004', '回族', '0');
INSERT INTO `student_info` VALUES ('260', '井债针', '1', '女', '3', '2009', '白族', '6');
INSERT INTO `student_info` VALUES ('261', '师蒡遣', '6', '男', '3', '2004', '壮族', '2');
INSERT INTO `student_info` VALUES ('262', '归耨鲫', '2', '女', '4', '2002', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('263', '元宀铮', '4', '女', '7', '2003', '其他族', '6');
INSERT INTO `student_info` VALUES ('264', '滕汐', '8', '女', '2', '2006', '彝族', '2');
INSERT INTO `student_info` VALUES ('265', '鄂绱', '4', '男', '7', '2004', '蒙古族', '7');
INSERT INTO `student_info` VALUES ('266', '边瘕蛇', '16', '男', '6', '2012', '壮族', '5');
INSERT INTO `student_info` VALUES ('267', '赫连廾窿', '8', '男', '6', '2013', '其他族', '3');
INSERT INTO `student_info` VALUES ('268', '后烊', '7', '女', '5', '2000', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('269', '佟杀', '0', '男', '2', '2012', '回族', '3');
INSERT INTO `student_info` VALUES ('270', '巴骢', '4', '女', '6', '2008', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('271', '庞刍', '16', '男', '3', '2006', '壮族', '7');
INSERT INTO `student_info` VALUES ('272', '姬猾杩', '15', '男', '1', '2013', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('273', '古颦勃', '13', '男', '3', '2004', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('274', '兀官逻', '15', '男', '3', '2005', '彝族', '0');
INSERT INTO `student_info` VALUES ('275', '颛孙沅', '8', '女', '7', '2009', '维吾尔族', '3');
INSERT INTO `student_info` VALUES ('276', '王斜', '11', '男', '8', '2001', '回族', '5');
INSERT INTO `student_info` VALUES ('277', '沃岵疙', '11', '男', '3', '2010', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('278', '漆匹珑', '1', '女', '5', '2000', '蒙古族', '7');
INSERT INTO `student_info` VALUES ('279', '储湘', '12', '男', '4', '2005', '白族', '4');
INSERT INTO `student_info` VALUES ('280', '揭捌', '11', '女', '1', '2014', '白族', '3');
INSERT INTO `student_info` VALUES ('281', '宓喜瘾', '9', '男', '7', '2003', '壮族', '5');
INSERT INTO `student_info` VALUES ('282', '能喙', '2', '女', '2', '2006', '其他族', '8');
INSERT INTO `student_info` VALUES ('283', '虞歧顾', '4', '男', '7', '2012', '彝族', '1');
INSERT INTO `student_info` VALUES ('284', '长孙蜀蠕', '2', '男', '1', '2013', '壮族', '4');
INSERT INTO `student_info` VALUES ('285', '郜患', '7', '女', '2', '2010', '回族', '7');
INSERT INTO `student_info` VALUES ('286', '终力', '13', '男', '0', '2008', '维吾尔族', '1');
INSERT INTO `student_info` VALUES ('287', '暨雨', '2', '男', '7', '2013', '其他族', '7');
INSERT INTO `student_info` VALUES ('288', '盖脲', '8', '女', '8', '2006', '其他族', '3');
INSERT INTO `student_info` VALUES ('289', '浦偻荔', '14', '女', '8', '2007', '维吾尔族', '8');
INSERT INTO `student_info` VALUES ('290', '充译瞩', '14', '女', '3', '2000', '壮族', '2');
INSERT INTO `student_info` VALUES ('291', '孟随离', '5', '男', '2', '2007', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('292', '邰亠', '13', '女', '5', '2000', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('293', '茹瞩吐', '12', '男', '3', '2011', '维吾尔族', '3');
INSERT INTO `student_info` VALUES ('294', '胥办', '6', '男', '3', '2002', '彝族', '0');
INSERT INTO `student_info` VALUES ('295', '百里汲', '4', '男', '1', '2011', '维吾尔族', '0');
INSERT INTO `student_info` VALUES ('296', '单于挝鸫', '0', '女', '5', '2012', '其他族', '3');
INSERT INTO `student_info` VALUES ('297', '元孵', '6', '女', '6', '2011', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('298', '缑康', '6', '男', '3', '2005', '回族', '2');
INSERT INTO `student_info` VALUES ('299', '卞疣', '8', '女', '3', '2008', '维吾尔族', '8');
INSERT INTO `student_info` VALUES ('300', '阳穿', '11', '女', '2', '2005', '彝族', '3');
INSERT INTO `student_info` VALUES ('301', '庆额', '5', '男', '1', '2007', '白族', '2');
INSERT INTO `student_info` VALUES ('302', '尉迟毳', '15', '女', '5', '2008', '回族', '8');
INSERT INTO `student_info` VALUES ('303', '权业统', '5', '女', '4', '2011', '其他族', '7');
INSERT INTO `student_info` VALUES ('304', '水殂涉', '14', '女', '0', '2008', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('305', '靳蜴', '10', '女', '1', '2008', '回族', '0');
INSERT INTO `student_info` VALUES ('306', '许毳笔', '4', '男', '5', '2012', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('307', '巴倌', '8', '女', '3', '2007', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('308', '广慌', '1', '女', '2', '2014', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('309', '茹槿', '4', '女', '4', '2006', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('310', '简畦椠', '5', '男', '0', '2004', '维吾尔族', '6');
INSERT INTO `student_info` VALUES ('311', '王嘈底', '2', '男', '4', '2006', '维吾尔族', '2');
INSERT INTO `student_info` VALUES ('312', '居呤夙', '11', '女', '0', '2010', '回族', '3');
INSERT INTO `student_info` VALUES ('313', '门饶', '8', '女', '0', '2009', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('314', '宾蚀', '10', '男', '2', '2004', '其他族', '7');
INSERT INTO `student_info` VALUES ('315', '弓旱卢', '9', '女', '1', '2005', '壮族', '7');
INSERT INTO `student_info` VALUES ('316', '东郭芘', '14', '女', '5', '2003', '其他族', '2');
INSERT INTO `student_info` VALUES ('317', '山舱贻', '8', '男', '1', '2009', '白族', '4');
INSERT INTO `student_info` VALUES ('318', '杭趣', '5', '男', '0', '2009', '维吾尔族', '2');
INSERT INTO `student_info` VALUES ('319', '冯舞', '2', '男', '3', '2006', '彝族', '8');
INSERT INTO `student_info` VALUES ('320', '逄雌', '13', '女', '6', '2005', '回族', '3');
INSERT INTO `student_info` VALUES ('321', '衡荷', '7', '男', '1', '2010', '壮族', '6');
INSERT INTO `student_info` VALUES ('322', '文跪冯', '6', '女', '0', '2002', '壮族', '6');
INSERT INTO `student_info` VALUES ('323', '南门鲥攻', '8', '男', '6', '2006', '彝族', '5');
INSERT INTO `student_info` VALUES ('324', '杭迓广', '0', '女', '1', '2007', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('325', '许磁', '15', '男', '5', '2014', '壮族', '5');
INSERT INTO `student_info` VALUES ('326', '诸葛回', '5', '女', '8', '2008', '回族', '8');
INSERT INTO `student_info` VALUES ('327', '褚婴既', '8', '女', '8', '2002', '维吾尔族', '5');
INSERT INTO `student_info` VALUES ('328', '庆亳鲒', '10', '男', '2', '2006', '回族', '8');
INSERT INTO `student_info` VALUES ('329', '车町', '9', '男', '6', '2014', '维吾尔族', '7');
INSERT INTO `student_info` VALUES ('330', '司徒颦', '4', '男', '3', '2001', '彝族', '1');
INSERT INTO `student_info` VALUES ('331', '方辗', '4', '女', '2', '2012', '其他族', '0');
INSERT INTO `student_info` VALUES ('332', '施丛士', '6', '女', '8', '2006', '回族', '6');
INSERT INTO `student_info` VALUES ('333', '欧阳昴', '0', '男', '8', '2001', '回族', '6');
INSERT INTO `student_info` VALUES ('334', '都抬', '14', '男', '6', '2001', '壮族', '1');
INSERT INTO `student_info` VALUES ('335', '贡净杩', '9', '男', '4', '2005', '其他族', '2');
INSERT INTO `student_info` VALUES ('336', '岑虫鼻', '1', '男', '7', '2000', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('337', '潘帜仪', '3', '女', '6', '2013', '其他族', '3');
INSERT INTO `student_info` VALUES ('338', '陶嘣疙', '12', '女', '6', '2001', '回族', '8');
INSERT INTO `student_info` VALUES ('339', '慎彭', '1', '男', '3', '2000', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('340', '闾挑饱', '1', '女', '5', '2003', '其他族', '4');
INSERT INTO `student_info` VALUES ('341', '迟槊', '3', '女', '7', '2013', '彝族', '1');
INSERT INTO `student_info` VALUES ('342', '陈筻疮', '8', '男', '0', '2006', '彝族', '1');
INSERT INTO `student_info` VALUES ('343', '池岂枋', '9', '男', '0', '2004', '彝族', '7');
INSERT INTO `student_info` VALUES ('344', '施鲽滇', '2', '女', '1', '2012', '回族', '2');
INSERT INTO `student_info` VALUES ('345', '包潴些', '11', '女', '2', '2004', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('346', '漆雕踏', '4', '女', '5', '2003', '回族', '5');
INSERT INTO `student_info` VALUES ('347', '慕容砒倒', '8', '男', '6', '2010', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('348', '屈嗅', '4', '女', '1', '2010', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('349', '任邱郁', '13', '男', '8', '2005', '壮族', '2');
INSERT INTO `student_info` VALUES ('350', '芮蕺', '5', '女', '4', '2005', '白族', '6');
INSERT INTO `student_info` VALUES ('351', '牟廑', '7', '男', '2', '2014', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('352', '褚理', '15', '男', '4', '2005', '回族', '3');
INSERT INTO `student_info` VALUES ('353', '弥岢逐', '1', '男', '3', '2011', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('354', '况攘', '12', '男', '7', '2006', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('355', '姚邑', '7', '女', '0', '2007', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('356', '计乖', '4', '女', '6', '2008', '蒙古族', '1');
INSERT INTO `student_info` VALUES ('357', '容叙', '0', '女', '6', '2006', '蒙古族', '7');
INSERT INTO `student_info` VALUES ('358', '鲜僵甩', '8', '女', '4', '2007', '回族', '1');
INSERT INTO `student_info` VALUES ('359', '熊猓揪', '16', '男', '5', '2008', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('360', '巫马推', '14', '男', '0', '2004', '维吾尔族', '7');
INSERT INTO `student_info` VALUES ('361', '闻镅', '12', '男', '4', '2001', '其他族', '8');
INSERT INTO `student_info` VALUES ('362', '申屠萁', '7', '男', '6', '2011', '白族', '5');
INSERT INTO `student_info` VALUES ('363', '于刀', '4', '男', '0', '2014', '壮族', '5');
INSERT INTO `student_info` VALUES ('364', '郗长', '0', '男', '1', '2005', '彝族', '2');
INSERT INTO `student_info` VALUES ('365', '蒯繁', '10', '男', '8', '2003', '白族', '1');
INSERT INTO `student_info` VALUES ('366', '谷启', '2', '男', '3', '2000', '壮族', '6');
INSERT INTO `student_info` VALUES ('367', '巫马亳', '6', '女', '4', '2005', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('368', '广普', '1', '女', '5', '2010', '彝族', '7');
INSERT INTO `student_info` VALUES ('369', '葛繇胨', '6', '女', '2', '2006', '白族', '1');
INSERT INTO `student_info` VALUES ('370', '瞿泗', '11', '女', '4', '2005', '其他族', '8');
INSERT INTO `student_info` VALUES ('371', '丰仕茚', '10', '男', '7', '2007', '壮族', '6');
INSERT INTO `student_info` VALUES ('372', '郑馒', '5', '男', '4', '2004', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('373', '贺兰兕', '0', '女', '7', '2006', '蒙古族', '1');
INSERT INTO `student_info` VALUES ('374', '苌烛摁', '8', '女', '1', '2000', '蒙古族', '8');
INSERT INTO `student_info` VALUES ('375', '红秧崔', '14', '男', '2', '2009', '白族', '0');
INSERT INTO `student_info` VALUES ('376', '樊兮', '3', '女', '0', '2010', '白族', '2');
INSERT INTO `student_info` VALUES ('377', '孙溻', '5', '女', '0', '2013', '白族', '5');
INSERT INTO `student_info` VALUES ('378', '劳螫', '12', '男', '4', '2012', '壮族', '7');
INSERT INTO `student_info` VALUES ('379', '祝锂', '0', '男', '7', '2004', '回族', '6');
INSERT INTO `student_info` VALUES ('380', '南宫叫式', '0', '男', '1', '2003', '壮族', '1');
INSERT INTO `student_info` VALUES ('381', '门勉旺', '10', '女', '6', '2005', '彝族', '0');
INSERT INTO `student_info` VALUES ('382', '郁啐', '5', '女', '4', '2004', '蒙古族', '8');
INSERT INTO `student_info` VALUES ('383', '贺灏交', '8', '男', '1', '2002', '其他族', '6');
INSERT INTO `student_info` VALUES ('384', '段干谛瀵', '4', '男', '3', '2013', '彝族', '7');
INSERT INTO `student_info` VALUES ('385', '湛岬', '15', '男', '5', '2004', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('386', '昌宛', '6', '男', '8', '2004', '回族', '2');
INSERT INTO `student_info` VALUES ('387', '衡轵', '15', '女', '0', '2013', '其他族', '3');
INSERT INTO `student_info` VALUES ('388', '明么', '13', '男', '6', '2007', '壮族', '7');
INSERT INTO `student_info` VALUES ('389', '舜票', '9', '男', '6', '2004', '彝族', '2');
INSERT INTO `student_info` VALUES ('390', '仪龀', '8', '女', '1', '2001', '白族', '1');
INSERT INTO `student_info` VALUES ('391', '查勹窬', '7', '女', '8', '2004', '蒙古族', '7');
INSERT INTO `student_info` VALUES ('392', '林咤酊', '12', '女', '3', '2000', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('393', '宣氨', '5', '男', '7', '2007', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('394', '尉迟肄', '10', '女', '3', '2014', '蒙古族', '0');
INSERT INTO `student_info` VALUES ('395', '索扁踩', '16', '男', '7', '2014', '其他族', '4');
INSERT INTO `student_info` VALUES ('396', '顾盲硬', '12', '男', '4', '2002', '壮族', '1');
INSERT INTO `student_info` VALUES ('397', '乐片鹤', '4', '男', '4', '2005', '白族', '6');
INSERT INTO `student_info` VALUES ('398', '姬拆', '0', '女', '1', '2012', '回族', '7');
INSERT INTO `student_info` VALUES ('399', '公韭', '5', '女', '8', '2005', '维吾尔族', '0');
INSERT INTO `student_info` VALUES ('400', '益笛', '4', '男', '6', '2010', '维吾尔族', '1');
INSERT INTO `student_info` VALUES ('401', '滑劢', '8', '女', '1', '2009', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('402', '倪咴吟', '16', '女', '5', '2006', '壮族', '1');
INSERT INTO `student_info` VALUES ('403', '葛烦匠', '12', '女', '8', '2009', '其他族', '8');
INSERT INTO `student_info` VALUES ('404', '越涯', '10', '男', '3', '2005', '彝族', '5');
INSERT INTO `student_info` VALUES ('405', '章茚优', '2', '女', '8', '2007', '其他族', '2');
INSERT INTO `student_info` VALUES ('406', '南门考', '13', '女', '4', '2000', '其他族', '5');
INSERT INTO `student_info` VALUES ('407', '老骢', '0', '男', '4', '2013', '壮族', '1');
INSERT INTO `student_info` VALUES ('408', '是淦', '3', '女', '6', '2006', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('409', '骆件笸', '4', '女', '5', '2006', '回族', '3');
INSERT INTO `student_info` VALUES ('410', '章姹镝', '4', '男', '8', '2004', '回族', '1');
INSERT INTO `student_info` VALUES ('411', '漆邾钩', '5', '女', '0', '2008', '回族', '6');
INSERT INTO `student_info` VALUES ('412', '卓量汁', '16', '女', '5', '2000', '彝族', '6');
INSERT INTO `student_info` VALUES ('413', '闾丘讼癞', '2', '女', '4', '2006', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('414', '莘寐喋', '10', '男', '3', '2009', '回族', '8');
INSERT INTO `student_info` VALUES ('415', '耿度睿', '6', '女', '4', '2012', '回族', '1');
INSERT INTO `student_info` VALUES ('416', '铁夙', '8', '男', '0', '2013', '其他族', '5');
INSERT INTO `student_info` VALUES ('417', '毋鲳奚', '16', '女', '6', '2007', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('418', '邴佃', '11', '女', '2', '2013', '彝族', '5');
INSERT INTO `student_info` VALUES ('419', '皇甫彐', '7', '男', '8', '2004', '维吾尔族', '4');
INSERT INTO `student_info` VALUES ('420', '介镆', '2', '女', '3', '2012', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('421', '卜氲吸', '16', '男', '7', '2008', '其他族', '3');
INSERT INTO `student_info` VALUES ('422', '那变', '0', '男', '1', '2007', '回族', '7');
INSERT INTO `student_info` VALUES ('423', '呼延含', '9', '女', '2', '2003', '维吾尔族', '1');
INSERT INTO `student_info` VALUES ('424', '哈钡', '16', '男', '8', '2011', '维吾尔族', '6');
INSERT INTO `student_info` VALUES ('425', '齐搐闭', '3', '女', '3', '2002', '白族', '4');
INSERT INTO `student_info` VALUES ('426', '戎拟迥', '14', '女', '3', '2011', '白族', '3');
INSERT INTO `student_info` VALUES ('427', '夹谷旌蒿', '11', '女', '2', '2014', '其他族', '3');
INSERT INTO `student_info` VALUES ('428', '管珊综', '6', '女', '4', '2006', '白族', '7');
INSERT INTO `student_info` VALUES ('429', '胡母褂辰', '10', '女', '0', '2002', '维吾尔族', '5');
INSERT INTO `student_info` VALUES ('430', '汪怆鳅', '0', '男', '8', '2013', '回族', '7');
INSERT INTO `student_info` VALUES ('431', '单于示筋', '4', '女', '3', '2007', '回族', '0');
INSERT INTO `student_info` VALUES ('432', '海乔', '15', '男', '4', '2014', '其他族', '2');
INSERT INTO `student_info` VALUES ('433', '楚逗著', '11', '女', '7', '2011', '回族', '7');
INSERT INTO `student_info` VALUES ('434', '邵楸', '12', '男', '4', '2005', '回族', '3');
INSERT INTO `student_info` VALUES ('435', '聂�', '2', '男', '2', '2001', '回族', '6');
INSERT INTO `student_info` VALUES ('436', '米件垠', '10', '女', '5', '2008', '其他族', '5');
INSERT INTO `student_info` VALUES ('437', '湛埋', '12', '女', '8', '2011', '其他族', '4');
INSERT INTO `student_info` VALUES ('438', '白帏渲', '8', '男', '3', '2014', '其他族', '4');
INSERT INTO `student_info` VALUES ('439', '巫马童诵', '9', '女', '5', '2004', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('440', '穆钪择', '6', '女', '5', '2005', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('441', '须蚜', '6', '女', '2', '2004', '维吾尔族', '3');
INSERT INTO `student_info` VALUES ('442', '恽柘', '14', '女', '1', '2007', '壮族', '0');
INSERT INTO `student_info` VALUES ('443', '巫马性', '2', '女', '8', '2012', '回族', '2');
INSERT INTO `student_info` VALUES ('444', '暴煌峻', '5', '男', '0', '2006', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('445', '卞恭', '10', '男', '3', '2002', '回族', '8');
INSERT INTO `student_info` VALUES ('446', '太叔镂柿', '2', '女', '3', '2008', '维吾尔族', '8');
INSERT INTO `student_info` VALUES ('447', '和峰', '14', '女', '3', '2012', '白族', '5');
INSERT INTO `student_info` VALUES ('448', '周弛冻', '10', '男', '8', '2010', '维吾尔族', '4');
INSERT INTO `student_info` VALUES ('449', '轩辕汉', '8', '男', '1', '2004', '回族', '1');
INSERT INTO `student_info` VALUES ('450', '宾抹', '15', '女', '4', '2008', '其他族', '5');
INSERT INTO `student_info` VALUES ('451', '狐仰悌', '4', '男', '6', '2006', '其他族', '8');
INSERT INTO `student_info` VALUES ('452', '贺兰席', '7', '男', '8', '2009', '回族', '4');
INSERT INTO `student_info` VALUES ('453', '巫鹨', '4', '男', '8', '2014', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('454', '宇文抚', '11', '男', '4', '2012', '回族', '1');
INSERT INTO `student_info` VALUES ('455', '太史铵', '13', '男', '0', '2003', '蒙古族', '7');
INSERT INTO `student_info` VALUES ('456', '雍门延伥', '14', '男', '2', '2002', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('457', '杜囗唛', '7', '男', '6', '2014', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('458', '谢邗', '6', '男', '6', '2001', '维吾尔族', '8');
INSERT INTO `student_info` VALUES ('459', '戴得溪', '12', '男', '4', '2009', '回族', '7');
INSERT INTO `student_info` VALUES ('460', '巴邬蔸', '10', '女', '8', '2006', '回族', '2');
INSERT INTO `student_info` VALUES ('461', '覃灯靴', '11', '男', '3', '2001', '蒙古族', '1');
INSERT INTO `student_info` VALUES ('462', '查沿', '16', '男', '3', '2002', '维吾尔族', '6');
INSERT INTO `student_info` VALUES ('463', '水朐庾', '15', '女', '7', '2009', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('464', '步潺鲶', '0', '男', '7', '2004', '壮族', '8');
INSERT INTO `student_info` VALUES ('465', '全米泖', '8', '女', '1', '2006', '白族', '0');
INSERT INTO `student_info` VALUES ('466', '商钩', '9', '男', '3', '2009', '蒙古族', '6');
INSERT INTO `student_info` VALUES ('467', '臧萋', '13', '男', '6', '2014', '蒙古族', '8');
INSERT INTO `student_info` VALUES ('468', '厉垠', '2', '女', '3', '2003', '彝族', '7');
INSERT INTO `student_info` VALUES ('469', '邝岔职', '10', '女', '3', '2002', '回族', '7');
INSERT INTO `student_info` VALUES ('470', '徐芬', '1', '女', '5', '2013', '壮族', '6');
INSERT INTO `student_info` VALUES ('471', '宓葵', '2', '女', '5', '2012', '回族', '8');
INSERT INTO `student_info` VALUES ('472', '武蹁', '4', '女', '4', '2000', '维吾尔族', '3');
INSERT INTO `student_info` VALUES ('473', '迟烊', '8', '男', '1', '2002', '壮族', '6');
INSERT INTO `student_info` VALUES ('474', '佟牝', '3', '男', '3', '2013', '回族', '8');
INSERT INTO `student_info` VALUES ('475', '太叔苜', '10', '女', '2', '2005', '回族', '8');
INSERT INTO `student_info` VALUES ('476', '乌豳', '6', '女', '5', '2014', '回族', '0');
INSERT INTO `student_info` VALUES ('477', '冼尼', '4', '男', '5', '2004', '回族', '7');
INSERT INTO `student_info` VALUES ('478', '明橥忒', '14', '男', '2', '2011', '回族', '0');
INSERT INTO `student_info` VALUES ('479', '司锺', '0', '男', '4', '2014', '蒙古族', '2');
INSERT INTO `student_info` VALUES ('480', '邰啐', '1', '女', '2', '2012', '维吾尔族', '4');
INSERT INTO `student_info` VALUES ('481', '姬噪葫', '14', '男', '3', '2001', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('482', '韶楹磔', '4', '女', '8', '2004', '回族', '5');
INSERT INTO `student_info` VALUES ('483', '庄郄', '6', '男', '3', '2002', '其他族', '5');
INSERT INTO `student_info` VALUES ('484', '关崮劓', '2', '男', '1', '2007', '壮族', '5');
INSERT INTO `student_info` VALUES ('485', '伊隶支', '8', '男', '8', '2012', '维吾尔族', '0');
INSERT INTO `student_info` VALUES ('486', '汲鸿', '1', '男', '6', '2005', '蒙古族', '5');
INSERT INTO `student_info` VALUES ('487', '厍戴', '6', '男', '5', '2009', '白族', '5');
INSERT INTO `student_info` VALUES ('488', '蓝栅', '4', '女', '7', '2010', '其他族', '5');
INSERT INTO `student_info` VALUES ('489', '宋塌', '11', '男', '4', '2011', '回族', '2');
INSERT INTO `student_info` VALUES ('490', '南门躅泓', '7', '男', '4', '2002', '蒙古族', '4');
INSERT INTO `student_info` VALUES ('491', '袁旨', '6', '男', '3', '2002', '蒙古族', '3');
INSERT INTO `student_info` VALUES ('492', '索岸', '12', '男', '4', '2004', '其他族', '0');
INSERT INTO `student_info` VALUES ('493', '璩息', '1', '男', '7', '2010', '回族', '4');
INSERT INTO `student_info` VALUES ('494', '虎伶伸', '16', '女', '5', '2010', '回族', '2');
INSERT INTO `student_info` VALUES ('495', '戚秒', '2', '女', '8', '2014', '维吾尔族', '2');
INSERT INTO `student_info` VALUES ('496', '舒诏敬', '9', '男', '3', '2005', '回族', '4');
INSERT INTO `student_info` VALUES ('497', '汝褚糠', '5', '男', '1', '2003', '回族', '8');
INSERT INTO `student_info` VALUES ('498', '能荐', '10', '男', '0', '2001', '壮族', '1');
INSERT INTO `student_info` VALUES ('499', '全霓者', '13', '女', '4', '2002', '蒙古族', '8');
INSERT INTO `student_info` VALUES ('500', '祭秋在', '12', '男', '4', '2005', '回族', '6');

-- ----------------------------
-- Table structure for teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE `teacher_info` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `birthday` varchar(10) DEFAULT NULL COMMENT '出生日期',
  `address` varchar(32) DEFAULT NULL COMMENT '籍贯',
  `nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `diploma` varchar(10) DEFAULT NULL COMMENT '学历',
  `post` varchar(32) DEFAULT NULL COMMENT '职务',
  `job_title` varchar(32) DEFAULT NULL COMMENT '职称',
  `party` varchar(10) DEFAULT NULL COMMENT '党派',
  `remarks` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_info
-- ----------------------------
INSERT INTO `teacher_info` VALUES ('2', '海卢星', '女', '1902.3', '内江', '苗族', '本科', '教师', '', '', '');
INSERT INTO `teacher_info` VALUES ('3', '堂云', '男', '1903.3', '内江', '土家族', '本科', '', '', '党员', '');
INSERT INTO `teacher_info` VALUES ('5', '宏堂', '男', '1903.3', '德阳', '回族', '本科', '教师', '高级教师', '党员', '');
INSERT INTO `teacher_info` VALUES ('6', '卢刘', '女', '1902.3', '自贡', '汉族', '本科', '', '', '', '');
INSERT INTO `teacher_info` VALUES ('7', '云堂', '男', '1903.3', '内江', '白族', '本科', '', '', '党员', '');
INSERT INTO `teacher_info` VALUES ('8', '王是', '女', '1902.3', '重庆', '蒙古族', '专科', '教师', '', '', '');
INSERT INTO `teacher_info` VALUES ('9', '国为', '男', '1903.3', '内江', '白族', '本科', '教授', '', '党员', '');
INSERT INTO `teacher_info` VALUES ('10', '兵隆', '女', '1902.3', '资阳', '回族', '本科', '', '', '', '');
INSERT INTO `teacher_info` VALUES ('11', '云卢', '男', '1903.3', '重庆', '汉族', '本科', '教师', '高级教师', '党员', '');
INSERT INTO `teacher_info` VALUES ('12', '林强', '女', '1902.3', '德阳', '回族', '本科', '', '', '', '');
INSERT INTO `teacher_info` VALUES ('13', '华海', '男', '1903.3', '重庆', '彝族', '本科', '', '', '党员', '');
INSERT INTO `teacher_info` VALUES ('14', '正石', '女', '1902.3', '资阳', '汉族', '专科', '教授', '高级教师', '', '');
INSERT INTO `teacher_info` VALUES ('15', '华田', '男', '1903.3', '内江', '回族', '本科', '', '', '党员', '');
INSERT INTO `teacher_info` VALUES ('16', '文堂', '女', '1902.3', '德阳', '汉族', '本科', '', '', '', '');
INSERT INTO `teacher_info` VALUES ('17', '国田', '男', '1903.3', '资阳', '回族', '本科', '教师', '高级教师', '党员', '');
INSERT INTO `teacher_info` VALUES ('18', '知宏', '女', '1902.3', '成都', '汉族', '本科', '', '', '', '');
INSERT INTO `teacher_info` VALUES ('19', '林华', '男', '1903.3', '广元', '回族', '本科', '教授', '', '党员', '');
INSERT INTO `teacher_info` VALUES ('20', '辉田', '女', '1902.3', '成都', '其他', '专科', '教师', '高级教师', '', '');
INSERT INTO `teacher_info` VALUES ('21', '国田', '男', '1903.3', '重庆', '土家族', '本科', '', '', '党员', '');
INSERT INTO `teacher_info` VALUES ('23', '海刘', '男', '1903.3', '资阳', '彝族', '本科', '教师', '高级教师', '党员', '');
INSERT INTO `teacher_info` VALUES ('24', '云强', '女', '1902.3', '成都', '汉族', '本科', '教授', '', '', '');
INSERT INTO `teacher_info` VALUES ('25', '文正', '男', '1903.3', '资阳', '维吾尔族', '本科', '', '', '党员', '');
INSERT INTO `teacher_info` VALUES ('26', '高强', '女', '1902.3', '自贡', '土家族', '专科', '教师', '高级教师', '', '');
INSERT INTO `teacher_info` VALUES ('27', '隆正', '男', '1903.3', '资阳', '苗族', '本科', '', '', '党员', '');
INSERT INTO `teacher_info` VALUES ('28', '卢林', '女', '1902.3', '重庆', '其他', '本科', '', '', '', '');
INSERT INTO `teacher_info` VALUES ('29', '华强', '男', '1903.3', '成都', '彝族', '本科', '教授', '高级教师', '党员', '');
INSERT INTO `teacher_info` VALUES ('30', '石王', '男', '1903.3', '资阳', '其他', '本科', '', '', '党员', '');
INSERT INTO `teacher_info` VALUES ('32', '周華', '女', '1993.4', '成都', '白族', '', '', '', '武當派', '');
INSERT INTO `teacher_info` VALUES ('35', '诸葛亮', '女', '', '', '', '', '', '', '', '');
INSERT INTO `teacher_info` VALUES ('36', '诸恶', '女', '', '', '', '', '', '', '', '');
INSERT INTO `teacher_info` VALUES ('37', '李森', '男', '1993.4', '四川', '汉', '本科', '无', '无', '无', '无');
