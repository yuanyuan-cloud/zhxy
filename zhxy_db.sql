/*
 Navicat Premium Data Transfer

 Source Server         : conn
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : zhxy_db

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 07/01/2023 10:19:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `portrait_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 169 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES (101, 'admin', '女', '21232f297a57a5a743894a0e4a801fc3', '111111@qq.com', '13260161111', '昌平', 'upload/default.jpg');
INSERT INTO `tb_admin` VALUES (102, 'admin1', '男', '21232f297a57a5a743894a0e4a801fc3', '512111559@qq.com', '13260166090', '北京', 'upload/default.jpg');
INSERT INTO `tb_admin` VALUES (103, 'admin2', '男', '21232f297a57a5a743894a0e4a801fc3', '512111559@qq.com', '13260166090', '北京', 'upload/default.jpg');
INSERT INTO `tb_admin` VALUES (104, 'admin3', '男', '21232f297a57a5a743894a0e4a801fc3', '123456@qq.com', '13666666666', '宏福苑', 'upload/default.jpg');
INSERT INTO `tb_admin` VALUES (159, '张三', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123');
INSERT INTO `tb_admin` VALUES (160, '李四', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123');
INSERT INTO `tb_admin` VALUES (161, '是', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123');
INSERT INTO `tb_admin` VALUES (162, 'g', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123');
INSERT INTO `tb_admin` VALUES (163, 's', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123');
INSERT INTO `tb_admin` VALUES (164, 'g', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123');
INSERT INTO `tb_admin` VALUES (165, 'G', '女', '1234', '123@yy.com', '123456', '碎玉轩', '123');
INSERT INTO `tb_admin` VALUES (166, 'd', '女', '1234', '123@yy.com', '123456', '碎玉轩', '123');
INSERT INTO `tb_admin` VALUES (167, 'E', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123');
INSERT INTO `tb_admin` VALUES (168, '狗蛋', '女', '1234', '', '', '', '123');
INSERT INTO `tb_admin` VALUES (169, 'd', '女', '81dc9bdb52d04dc20036dbd8313ed055', 's', 'a', 'f', '123');

-- ----------------------------
-- Table structure for tb_card
-- ----------------------------
DROP TABLE IF EXISTS `tb_card`;
CREATE TABLE `tb_card`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `money` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '消费金额',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '消费时间',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '消费商户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_card
-- ----------------------------
INSERT INTO `tb_card` VALUES (1, '100', '2021-12-24', '充卡机');
INSERT INTO `tb_card` VALUES (2, '210', '2022-1-5', '充电费');
INSERT INTO `tb_card` VALUES (3, '302', '2022-4-1', '日用超市');
INSERT INTO `tb_card` VALUES (4, '10', '2022-3-14', '小吃摊');
INSERT INTO `tb_card` VALUES (5, '20', '2022-5-1', '小吃摊');
INSERT INTO `tb_card` VALUES (6, '10', '2023-1-1', '小吃摊');
INSERT INTO `tb_card` VALUES (7, '10', '2023-1-1', '6');
INSERT INTO `tb_card` VALUES (8, '10', '2023-1-1', '5');
INSERT INTO `tb_card` VALUES (9, '10', '2023-1-1', '2');
INSERT INTO `tb_card` VALUES (10, '10', '2023-1-1', '1');
INSERT INTO `tb_card` VALUES (11, '10', '2023-1-1', '2');
INSERT INTO `tb_card` VALUES (12, '10', '2023-1-1', '1');
INSERT INTO `tb_card` VALUES (13, '10', '2023-1-1', '4');
INSERT INTO `tb_card` VALUES (14, '10', '2023-1-1', '2');
INSERT INTO `tb_card` VALUES (18, '10', '2023-1-1', '2');
INSERT INTO `tb_card` VALUES (19, '10', '2023-1-1', '1');
INSERT INTO `tb_card` VALUES (20, '10', '2023-1-1', 'g');

-- ----------------------------
-- Table structure for tb_clazz
-- ----------------------------
DROP TABLE IF EXISTS `tb_clazz`;
CREATE TABLE `tb_clazz`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` int(0) NULL DEFAULT NULL,
  `introducation` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headmaster` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_clazz
-- ----------------------------
INSERT INTO `tb_clazz` VALUES (1, '一年一班', 30, '大圣的一年一班好', '大圣', 'dasheng@163.com', '13260166090', '一年级');
INSERT INTO `tb_clazz` VALUES (2, '一年二班', 28, '小张的一年二班好', '小张', 'xiaozhang@163.com', '13260166090', '一年级');
INSERT INTO `tb_clazz` VALUES (3, '二年一班', 35, '小韩的二年一班好', '小韩', 'xiaohan@163.com', '13260166090', '二年级');
INSERT INTO `tb_clazz` VALUES (4, '二年二班', 30, '小强的二年二班好', '小强', 'xiaoqiang@163.com', '13260166090', '二年级');
INSERT INTO `tb_clazz` VALUES (5, '三年一班', 30, '小花的三年一班好', '小花', 'xiaohua@163.com', '13260166090', '三年级');
INSERT INTO `tb_clazz` VALUES (12, '王五', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (13, 'g', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (14, 'a', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (15, 't', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (17, 'f', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (18, '给', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (19, 's', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (20, 'f', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (21, 's', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (22, 'h', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (23, 'f', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (24, 'h', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (25, 'g', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (26, 'a', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (27, 'c', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (28, 's', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (29, 'g', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (30, 'w', 0, '这是一条新数据', '阿巴', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (31, 'gf', 0, '这是一条新数据', 's', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (32, '二班', 0, '这是一条新数据', 's', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (33, 'd', 0, '这是一条新数据', '', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (34, '一班', 0, '这是一条新数据', 's', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (35, '一班', 0, '这是一条新数据', '', '123@yy.com', '18125329212', '阿巴');
INSERT INTO `tb_clazz` VALUES (36, '四班', 0, '这是一条新数据', '', '123@yy.com', '18125329212', '阿巴');

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `cno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `class_id` int(0) NULL DEFAULT NULL,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `c_date` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_course
-- ----------------------------
INSERT INTO `tb_course` VALUES (1, '1', '数学', 1, '一年一班', 1);
INSERT INTO `tb_course` VALUES (2, '2', '语文', 1, '一年一班', 1);
INSERT INTO `tb_course` VALUES (3, '3', '英语', 1, '一年一班', 1);
INSERT INTO `tb_course` VALUES (4, '4', '体育', 1, '一年一班', 1);
INSERT INTO `tb_course` VALUES (5, '1', '数学', 1, '一年一班', 2);
INSERT INTO `tb_course` VALUES (6, '2', '语文', 1, '一年一班', 2);
INSERT INTO `tb_course` VALUES (7, '3', '英语', 1, '一年一班', 2);
INSERT INTO `tb_course` VALUES (8, '4', '体育', 1, '一年一班', 2);
INSERT INTO `tb_course` VALUES (9, '1', '数学', 1, '一年一班', 3);
INSERT INTO `tb_course` VALUES (10, '2', '语文', 1, '一年一班', 3);
INSERT INTO `tb_course` VALUES (11, '3', '英语', 1, '一年一班', 3);
INSERT INTO `tb_course` VALUES (12, '4', '体育', 1, '一年一班', 6);
INSERT INTO `tb_course` VALUES (13, '1', '数学', 1, '一年一班', 4);
INSERT INTO `tb_course` VALUES (14, '2', '语文', 1, '一年一班', 4);
INSERT INTO `tb_course` VALUES (15, '3', '英语', 1, '一年一班', 4);
INSERT INTO `tb_course` VALUES (16, '4', '体育', 1, '一年一班', 4);
INSERT INTO `tb_course` VALUES (17, '1', '数学', 1, '一年一班', 5);
INSERT INTO `tb_course` VALUES (18, '2', '语文', 1, '一年一班', 5);
INSERT INTO `tb_course` VALUES (19, '3', '英语', 1, '一年一班', 5);
INSERT INTO `tb_course` VALUES (20, '4', '体育', 1, '一年一班', 5);
INSERT INTO `tb_course` VALUES (21, '1', '数学', 2, '一年二班', 1);
INSERT INTO `tb_course` VALUES (22, '2', '语文', 2, '一年二班', 1);
INSERT INTO `tb_course` VALUES (23, '3', '英语', 2, '一年二班', 1);
INSERT INTO `tb_course` VALUES (24, '4', '体育', 2, '一年二班', 1);
INSERT INTO `tb_course` VALUES (25, '1', '数学', 2, '一年二班', 2);
INSERT INTO `tb_course` VALUES (26, '2', '语文', 2, '一年二班', 2);
INSERT INTO `tb_course` VALUES (27, '3', '英语', 2, '一年二班', 2);
INSERT INTO `tb_course` VALUES (28, '4', '体育', 2, '一年二班', 2);
INSERT INTO `tb_course` VALUES (29, '1', '数学', 2, '一年二班', 3);
INSERT INTO `tb_course` VALUES (30, '2', '语文', 2, '一年二班', 3);
INSERT INTO `tb_course` VALUES (31, '3', '英语', 2, '一年二班', 3);
INSERT INTO `tb_course` VALUES (32, '4', '体育', 2, '一年二班', 3);
INSERT INTO `tb_course` VALUES (33, '1', '数学', 2, '一年二班', 4);
INSERT INTO `tb_course` VALUES (34, '2', '语文', 2, '一年二班', 4);
INSERT INTO `tb_course` VALUES (35, '3', '英语', 2, '一年二班', 4);
INSERT INTO `tb_course` VALUES (36, '4', '体育', 2, '一年二班', 4);
INSERT INTO `tb_course` VALUES (37, '1', '数学', 2, '一年二班', 5);
INSERT INTO `tb_course` VALUES (38, '2', '语文', 2, '一年二班', 5);
INSERT INTO `tb_course` VALUES (39, '3', '英语', 2, '一年二班', 5);
INSERT INTO `tb_course` VALUES (40, '4', '体育', 2, '一年二班', 5);
INSERT INTO `tb_course` VALUES (41, '1', '数学', 3, '二年一班', 1);
INSERT INTO `tb_course` VALUES (42, '2', '语文', 3, '二年一班', 1);
INSERT INTO `tb_course` VALUES (43, '3', '英语', 3, '二年一班', 1);
INSERT INTO `tb_course` VALUES (44, '4', '体育', 3, '二年一班', 1);
INSERT INTO `tb_course` VALUES (45, '1', '数学', 3, '二年一班', 2);
INSERT INTO `tb_course` VALUES (46, '2', '语文', 3, '二年一班', 2);
INSERT INTO `tb_course` VALUES (47, '3', '英语', 3, '二年一班', 2);
INSERT INTO `tb_course` VALUES (48, '4', '体育', 3, '二年一班', 2);
INSERT INTO `tb_course` VALUES (49, '1', '数学', 3, '二年一班', 3);
INSERT INTO `tb_course` VALUES (50, '2', '语文', 3, '二年一班', 3);
INSERT INTO `tb_course` VALUES (51, '3', '英语', 3, '二年一班', 3);
INSERT INTO `tb_course` VALUES (52, '4', '体育', 3, '二年一班', 3);
INSERT INTO `tb_course` VALUES (53, '1', '数学', 3, '二年一班', 4);
INSERT INTO `tb_course` VALUES (54, '2', '语文', 3, '二年一班', 4);
INSERT INTO `tb_course` VALUES (55, '3', '英语', 3, '二年一班', 4);
INSERT INTO `tb_course` VALUES (56, '4', '体育', 3, '二年一班', 4);
INSERT INTO `tb_course` VALUES (57, '1', '数学', 3, '二年一班', 5);
INSERT INTO `tb_course` VALUES (58, '2', '语文', 3, '二年一班', 5);
INSERT INTO `tb_course` VALUES (59, '3', '英语', 3, '二年一班', 5);
INSERT INTO `tb_course` VALUES (60, '4', '体育', 3, '二年一班', 5);
INSERT INTO `tb_course` VALUES (61, '1', '数学', 4, '二年二班', 1);
INSERT INTO `tb_course` VALUES (62, '2', '语文', 4, '二年二班', 1);
INSERT INTO `tb_course` VALUES (63, '3', '英语', 4, '二年二班', 1);
INSERT INTO `tb_course` VALUES (64, '4', '体育', 4, '二年二班', 1);
INSERT INTO `tb_course` VALUES (65, '1', '数学', 4, '二年二班', 2);
INSERT INTO `tb_course` VALUES (66, '2', '语文', 4, '二年二班', 2);
INSERT INTO `tb_course` VALUES (67, '3', '英语', 4, '二年二班', 2);
INSERT INTO `tb_course` VALUES (68, '4', '体育', 4, '二年二班', 2);
INSERT INTO `tb_course` VALUES (69, '1', '数学', 4, '二年二班', 3);
INSERT INTO `tb_course` VALUES (70, '2', '语文', 4, '二年二班', 3);
INSERT INTO `tb_course` VALUES (71, '3', '英语', 4, '二年二班', 3);
INSERT INTO `tb_course` VALUES (72, '4', '体育', 4, '二年二班', 3);
INSERT INTO `tb_course` VALUES (73, '1', '数学', 4, '二年二班', 4);
INSERT INTO `tb_course` VALUES (74, '2', '语文', 4, '二年二班', 4);
INSERT INTO `tb_course` VALUES (75, '3', '英语', 4, '二年二班', 4);
INSERT INTO `tb_course` VALUES (76, '4', '体育', 4, '二年二班', 4);
INSERT INTO `tb_course` VALUES (77, '1', '数学', 4, '二年二班', 5);
INSERT INTO `tb_course` VALUES (78, '2', '语文', 4, '二年二班', 5);
INSERT INTO `tb_course` VALUES (79, '3', '英语', 4, '二年二班', 5);
INSERT INTO `tb_course` VALUES (80, '4', '体育', 4, '二年二班', 5);
INSERT INTO `tb_course` VALUES (81, '1', '数学', 4, '三年一班', 1);
INSERT INTO `tb_course` VALUES (82, '2', '语文', 4, '三年一班', 1);
INSERT INTO `tb_course` VALUES (83, '3', '英语', 4, '三年一班', 1);
INSERT INTO `tb_course` VALUES (84, '4', '体育', 4, '三年一班', 1);
INSERT INTO `tb_course` VALUES (85, '1', '数学', 4, '三年一班', 2);
INSERT INTO `tb_course` VALUES (86, '2', '语文', 4, '三年一班', 2);
INSERT INTO `tb_course` VALUES (87, '3', '英语', 4, '三年一班', 2);
INSERT INTO `tb_course` VALUES (88, '4', '体育', 4, '三年一班', 2);
INSERT INTO `tb_course` VALUES (89, '1', '数学', 4, '三年一班', 3);
INSERT INTO `tb_course` VALUES (90, '2', '语文', 4, '三年一班', 3);
INSERT INTO `tb_course` VALUES (91, '3', '英语', 4, '三年一班', 3);
INSERT INTO `tb_course` VALUES (92, '4', '体育', 4, '三年一班', 3);
INSERT INTO `tb_course` VALUES (93, '1', '数学', 4, '三年一班', 4);
INSERT INTO `tb_course` VALUES (94, '2', '语文', 4, '三年一班', 4);
INSERT INTO `tb_course` VALUES (95, '3', '英语', 4, '三年一班', 4);
INSERT INTO `tb_course` VALUES (96, '4', '体育', 4, '三年一班', 4);
INSERT INTO `tb_course` VALUES (97, '1', '数学', 4, '三年一班', 5);
INSERT INTO `tb_course` VALUES (98, '2', '语文', 4, '三年一班', 5);
INSERT INTO `tb_course` VALUES (99, '3', '英语', 4, '三年一班', 5);
INSERT INTO `tb_course` VALUES (100, '4', '体育', 4, '三年一班', 5);

-- ----------------------------
-- Table structure for tb_grade
-- ----------------------------
DROP TABLE IF EXISTS `tb_grade`;
CREATE TABLE `tb_grade`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `manager` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introducation` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_grade
-- ----------------------------
INSERT INTO `tb_grade` VALUES (2, '二年级', '小魏', 'xiaowei@163.com', '13260166090', '大学二年级');
INSERT INTO `tb_grade` VALUES (3, '三年级', '小李', 'xiaoli@163.com', '13666666666', '三年级,这个班级的孩子们很有才艺');
INSERT INTO `tb_grade` VALUES (4, '五年级', '小丽', 'li@123.com', '13666666666', '这个年级的同学多才多活力');
INSERT INTO `tb_grade` VALUES (5, '六年级', '小明', 'xiaoming@666.com', '13666666666', '这个年级的主任是小明');
INSERT INTO `tb_grade` VALUES (26, '小张', '四年级', '123@yy.com', '18125329212', '这是一条新数据');
INSERT INTO `tb_grade` VALUES (36, '四年级', NULL, '123@yy.com', '18125329212', '这是一条新数据');
INSERT INTO `tb_grade` VALUES (37, '四年级', '啊搜', '123@yy.com', '18125329212', '这是一条新数据');
INSERT INTO `tb_grade` VALUES (42, '四年级', NULL, '123@yy.com', '18125329212', '这是一条新数据');
INSERT INTO `tb_grade` VALUES (46, '四年级', 'g', '123@yy.com', '18125329212', '这是一条新数据');
INSERT INTO `tb_grade` VALUES (47, '四年级', 'd', '123@yy.com', '18125329212', '这是一条新数据');
INSERT INTO `tb_grade` VALUES (48, '四年级', 'x', '123@yy.com', '18125329212', '这是一条新数据');
INSERT INTO `tb_grade` VALUES (49, '一年级', '', '', '18125329212', '这是一条新数据');
INSERT INTO `tb_grade` VALUES (50, '二年级', 'w', 'w', '18125329212', '这是一条新数据');

-- ----------------------------
-- Table structure for tb_jiang
-- ----------------------------
DROP TABLE IF EXISTS `tb_jiang`;
CREATE TABLE `tb_jiang`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '奖学金名',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '获取时间',
  `money` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '奖学金金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_jiang
-- ----------------------------
INSERT INTO `tb_jiang` VALUES (1, '励志奖学金', '2020-4-3', '4000');
INSERT INTO `tb_jiang` VALUES (2, '国家奖学金', '2021-6-21', '6000');
INSERT INTO `tb_jiang` VALUES (3, '学年奖学金', '2021-5-3', '3000');
INSERT INTO `tb_jiang` VALUES (4, '竞赛奖学金', '2022-1-12', '500');
INSERT INTO `tb_jiang` VALUES (5, '学年奖学金', '2022-5-3', '3000');
INSERT INTO `tb_jiang` VALUES (6, '狗蛋', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (11, 'a', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (12, 'g', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (13, 's', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (14, 'g', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (15, 'g', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (16, 'g', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (17, 'gs', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (18, 'ga', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (19, 'g', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (20, 'g', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (21, 's', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (22, 'sa', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (23, 'h', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (24, 'f', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (25, 'g', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (26, 'a', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (27, 'd', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (28, 'g', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (29, 'g', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (30, 's', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (31, 'ew', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (32, 'g', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (33, 'x', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (34, 'e', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (35, 'a', '2020-1-1', '2000');
INSERT INTO `tb_jiang` VALUES (36, 'g', '2020-1-1', '2000');

-- ----------------------------
-- Table structure for tb_score
-- ----------------------------
DROP TABLE IF EXISTS `tb_score`;
CREATE TABLE `tb_score`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学科',
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_score
-- ----------------------------
INSERT INTO `tb_score` VALUES (1, '马克思原理', '90');
INSERT INTO `tb_score` VALUES (2, '大学物理', '85');
INSERT INTO `tb_score` VALUES (3, '大学英语', '80');
INSERT INTO `tb_score` VALUES (4, '大学化学', '90');
INSERT INTO `tb_score` VALUES (5, '艺术欣赏', '85');

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `sno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introducation` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `portrait_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clazz_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES (1, '1001', '张小明', '男', 'e10adc3949ba59abbe56e057f20f883e', 'yinyufei@163.com', '13260166090', '北京天通苑', '这个学生学习好', '@/upload/default.jpg', '一年一班');
INSERT INTO `tb_student` VALUES (2, '1002', '郭建超', '男', 'e10adc3949ba59abbe56e057f20f883e', 'guojianchao@163.com', '13260166090', '北京昌平', '这个学生会功夫', '@/upload/default.jpg', '一年一班');
INSERT INTO `tb_student` VALUES (3, '123', 'g', '女', '1234', '123@yy.com', '123456', '碎玉轩', '这个学生酒量好', '123', '四班');
INSERT INTO `tb_student` VALUES (12, '123', 'we', '女', '1234', '123@yy.com', '123456', '碎玉轩', NULL, '123', '四班');
INSERT INTO `tb_student` VALUES (13, '123', '给', '女', '1234', '123@yy.com', '123456', '碎玉轩', NULL, '123', '四班');
INSERT INTO `tb_student` VALUES (14, '123', 'd', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', NULL, '123', '四班');
INSERT INTO `tb_student` VALUES (15, '123', 'g', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', NULL, '123', '四班');
INSERT INTO `tb_student` VALUES (16, '123', 'w', '女', '1234', '123@yy.com', '123456', '碎玉轩', NULL, '123', '四班');
INSERT INTO `tb_student` VALUES (17, '123', 'aa', '女', '1234', '123@yy.com', '123456', '碎玉轩', NULL, '123', '四班');
INSERT INTO `tb_student` VALUES (18, '123', 'g', '女', '1234', '123@yy.com', '123456', '碎玉轩', NULL, '123', '四班');
INSERT INTO `tb_student` VALUES (19, '123', 'a', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', NULL, '123', '四班');
INSERT INTO `tb_student` VALUES (20, '123', '3', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', NULL, '123', '一班');
INSERT INTO `tb_student` VALUES (21, '123', 'asdf', '女', '1234', '123@yy.com', '123456', '碎玉轩', NULL, '123', '二班');
INSERT INTO `tb_student` VALUES (22, '123', 'gd', '女', '1234', '123@yy.com', '123456', '碎玉轩', NULL, '123', '二班');
INSERT INTO `tb_student` VALUES (23, '123', 's', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', NULL, '123', '二班');
INSERT INTO `tb_student` VALUES (24, '123', 'a', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', NULL, '123', '二班');
INSERT INTO `tb_student` VALUES (25, '123', 'd', '\0', '1234', '123@yy.com', '123456', '碎玉轩', NULL, '123', '二班');
INSERT INTO `tb_student` VALUES (26, '123', '', '\0', '1234', '123@yy.com', '123456', '碎玉轩', NULL, '123', '一班');
INSERT INTO `tb_student` VALUES (27, '123', 'd', '女', '1234', '123@yy.com', '123456', '碎玉轩', NULL, '123', '一班');
INSERT INTO `tb_student` VALUES (28, '123', '', '\0', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', NULL, '123', '');
INSERT INTO `tb_student` VALUES (29, '123', 's', '女', '1234', '123@yy.com', '123456', '碎玉轩', NULL, '123', '二班');
INSERT INTO `tb_student` VALUES (30, '123', 's', '\0', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', NULL, '123', '二班');

-- ----------------------------
-- Table structure for tb_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `tno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `portrait_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clazz_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES (1, '101', '大圣', '女', '123456', 'dasheng@163.com', '13260166090', '北京昌平', 'upload/default.jpg', '一年一班');
INSERT INTO `tb_teacher` VALUES (2, '102', '小张', '男', 'e10adc3949ba59abbe56e057f20f883e', 'xiaozhang@163.com', '13260166090', '北京海淀', 'upload/default.jpg', '一年二班');
INSERT INTO `tb_teacher` VALUES (3, '103', '小韩', '男', 'e10adc3949ba59abbe56e057f20f883e', 'xiaohan@163.com', '13260166090', '北京朝阳', 'upload/default.jpg', '二年一班');
INSERT INTO `tb_teacher` VALUES (4, '104', '小强', '男', 'e10adc3949ba59abbe56e057f20f883e', 'xiaoqiang@163.com', '13260166090', '北京通州', 'upload/default.jpg', '二年二班');
INSERT INTO `tb_teacher` VALUES (5, '105', '小花', '男', 'e10adc3949ba59abbe56e057f20f883e', 'xiaohua@163.com', '13260166090', '北京顺义', 'upload/default.jpg', '三年一班');
INSERT INTO `tb_teacher` VALUES (6, '106', '小赵', '男', 'e10adc3949ba59abbe56e057f20f883e', 'xiaozhao@163.com', '13260166090', '北京东城', 'upload/default.jpg', '三年二班');
INSERT INTO `tb_teacher` VALUES (7, '107', '小飞', '男', 'e10adc3949ba59abbe56e057f20f883e', 'xiaofei@163.com', '13260166090', '北京西城', 'upload/default.jpg', '四年一班');
INSERT INTO `tb_teacher` VALUES (8, '108', '秀秀', '女', 'e10adc3949ba59abbe56e057f20f883e', '123456@123.com', '13855555555', '海淀', 'upload/12fe07bf8b6d493b96294f1ef0552339default.jpg', '一年一班');
INSERT INTO `tb_teacher` VALUES (9, '123', 'r', '女', '1234', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (13, '123', 'w', '女', '1234', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (14, '123', 't', '女', '1234', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (15, '123', 'f', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (16, '123', 'f', '女', '1234', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (17, '123', 'f', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (18, '123', 'g', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (19, '123', 's', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (20, '123', 'g', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (21, '123', 's', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (22, '123', 'g', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (23, '123', 'j', '女', '81dc9bdb52d04dc20036dbd8313ed055', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (24, '123', 'c', '女', '1234', '123@yy.com', '123456', '碎玉轩', '123', '四班');
INSERT INTO `tb_teacher` VALUES (28, '123', 'd', '女', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '123456', '碎玉轩', '123', '二班');
INSERT INTO `tb_teacher` VALUES (29, 'sd', 'sdf', '女', '1234', NULL, '123456', '碎玉轩', '123', '二班');

-- ----------------------------
-- Table structure for tb_zhu
-- ----------------------------
DROP TABLE IF EXISTS `tb_zhu`;
CREATE TABLE `tb_zhu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '助学金名',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '获取时间',
  `money` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '助学金金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_zhu
-- ----------------------------
INSERT INTO `tb_zhu` VALUES (1, '学年助学金', '2020-1-4', '2000');
INSERT INTO `tb_zhu` VALUES (2, '励志助学金', '2020-4-2', '3000');
INSERT INTO `tb_zhu` VALUES (3, '国家助学金', '2020-5-13', '4000');
INSERT INTO `tb_zhu` VALUES (4, '学年助学金', '2021-1-4', '2000');
INSERT INTO `tb_zhu` VALUES (5, '2', '2020-1-1', '2000');
INSERT INTO `tb_zhu` VALUES (9, 's', '2020-1-1', '2000');
INSERT INTO `tb_zhu` VALUES (10, 'g', '2020-1-1', '2000');
INSERT INTO `tb_zhu` VALUES (11, 'd', '2020-1-1', '2000');
INSERT INTO `tb_zhu` VALUES (12, 'a', '2020-1-1', '2000');
INSERT INTO `tb_zhu` VALUES (13, 'z', '2020-1-1', '2000');
INSERT INTO `tb_zhu` VALUES (14, 'adf', '2020-1-1', '2000');
INSERT INTO `tb_zhu` VALUES (15, 'fsd', '2020-1-1', '2000');

SET FOREIGN_KEY_CHECKS = 1;
