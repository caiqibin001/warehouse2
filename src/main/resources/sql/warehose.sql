/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : warehose

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 03/09/2021 12:12:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ck_goods
-- ----------------------------
DROP TABLE IF EXISTS `ck_goods`;
CREATE TABLE `ck_goods` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '仓库名称',
  `goods_no` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '库',
  `goods_row` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '排',
  `goods_cell` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '格',
  `goods_local` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '位',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '位置图',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1431948815375278203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of ck_goods
-- ----------------------------
BEGIN;
INSERT INTO `ck_goods` VALUES (1431948815375278083, '1-01-01-1', '1', '01', '01', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278084, '1-01-01-2', '1', '01', '01', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278085, '1-01-01-3', '1', '01', '01', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278086, '1-01-01-4', '1', '01', '01', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278087, '1-01-02-1', '1', '01', '02', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278088, '1-01-02-2', '1', '01', '02', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278089, '1-01-02-3', '1', '01', '02', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278090, '1-01-02-4', '1', '01', '02', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278091, '1-01-03-1', '1', '01', '03', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278092, '1-01-03-2', '1', '01', '03', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278093, '1-01-03-3', '1', '01', '03', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278094, '1-01-03-4', '1', '01', '03', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278095, '1-01-04-1', '1', '01', '04', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278096, '1-01-04-2', '1', '01', '04', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278097, '1-01-04-3', '1', '01', '04', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278098, '1-01-04-4', '1', '01', '04', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278099, '1-02-01-1', '1', '02', '01', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278100, '1-02-01-2', '1', '02', '01', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278101, '1-02-01-3', '1', '02', '01', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278102, '1-02-01-4', '1', '02', '01', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278103, '1-02-02-1', '1', '02', '02', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278104, '1-02-02-2', '1', '02', '02', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278105, '1-02-02-3', '1', '02', '02', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278106, '1-02-02-4', '1', '02', '02', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278107, '1-03-01-1', '1', '03', '01', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278108, '1-03-01-2', '1', '03', '01', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278109, '1-03-01-3', '1', '03', '01', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278110, '1-03-01-4', '1', '03', '01', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278111, '1-03-02-1', '1', '03', '02', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278112, '1-03-02-2', '1', '03', '02', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278113, '1-03-02-3', '1', '03', '02', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278114, '1-03-02-4', '1', '03', '02', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278115, '1-03-03-1', '1', '03', '03', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278116, '1-03-03-2', '1', '03', '03', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278117, '1-03-03-3', '1', '03', '03', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278118, '1-03-03-4', '1', '03', '03', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278119, '1-03-04-1', '1', '03', '04', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278120, '1-03-04-2', '1', '03', '04', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278121, '1-03-04-3', '1', '03', '04', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278122, '1-03-04-4', '1', '03', '04', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278123, '1-04-01-1', '1', '04', '01', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278124, '1-04-01-2', '1', '04', '01', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278125, '1-04-01-3', '1', '04', '01', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278126, '1-04-01-4', '1', '04', '01', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278127, '1-04-02-1', '1', '04', '02', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278128, '1-04-02-2', '1', '04', '02', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278129, '1-04-02-3', '1', '04', '02', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278130, '1-04-02-4', '1', '04', '02', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278131, '1-04-03-1', '1', '04', '03', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278132, '1-04-03-2', '1', '04', '03', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278133, '1-04-03-3', '1', '04', '03', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278134, '1-04-03-4', '1', '04', '03', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278135, '1-04-04-1', '1', '04', '04', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278136, '1-04-04-2', '1', '04', '04', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278137, '1-04-04-3', '1', '04', '04', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278138, '1-04-04-4', '1', '04', '04', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278139, '1-05-01-1', '1', '05', '01', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278140, '1-05-01-2', '1', '05', '01', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278141, '1-05-01-3', '1', '05', '01', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278142, '1-05-01-4', '1', '05', '01', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278143, '1-05-02-1', '1', '05', '02', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278144, '1-05-02-2', '1', '05', '02', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278145, '1-05-02-3', '1', '05', '02', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278146, '1-05-02-4', '1', '05', '02', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278147, '1-06-01-1', '1', '06', '01', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278148, '1-06-01-2', '1', '06', '01', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278149, '1-06-01-3', '1', '06', '01', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278150, '1-06-01-4', '1', '06', '01', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278151, '1-06-02-1', '1', '06', '02', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278152, '1-06-02-2', '1', '06', '02', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278153, '1-06-02-3', '1', '06', '02', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278154, '1-06-02-4', '1', '06', '02', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278155, '1-06-03-1', '1', '06', '03', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278156, '1-06-03-2', '1', '06', '03', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278157, '1-06-03-3', '1', '06', '03', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278158, '1-06-03-4', '1', '06', '03', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278159, '1-06-04-1', '1', '06', '04', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278160, '1-06-04-2', '1', '06', '04', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278161, '1-06-04-3', '1', '06', '04', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278162, '1-06-04-4', '1', '06', '04', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278163, '1-07-01-1', '1', '07', '01', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278164, '1-07-01-2', '1', '07', '01', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278165, '1-07-01-3', '1', '07', '01', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278166, '1-07-01-4', '1', '07', '01', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278167, '1-07-02-1', '1', '07', '02', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278168, '1-07-02-2', '1', '07', '02', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278169, '1-07-02-3', '1', '07', '02', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278170, '1-07-02-4', '1', '07', '02', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278171, '1-07-03-1', '1', '07', '03', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278172, '1-07-03-2', '1', '07', '03', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278173, '1-07-03-3', '1', '07', '03', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278174, '1-07-03-4', '1', '07', '03', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278175, '1-07-04-1', '1', '07', '04', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278176, '1-07-04-2', '1', '07', '04', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278177, '1-07-04-3', '1', '07', '04', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278178, '1-07-04-4', '1', '07', '04', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278179, '1-08-01-1', '1', '08', '01', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278180, '1-08-01-2', '1', '08', '01', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278181, '1-08-01-3', '1', '08', '01', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278182, '1-08-01-4', '1', '08', '01', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278183, '1-08-02-1', '1', '08', '02', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278184, '1-08-02-2', '1', '08', '02', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278185, '1-08-02-3', '1', '08', '02', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278186, '1-08-02-4', '1', '08', '02', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278187, '1-09-01-1', '1', '09', '01', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278188, '1-09-01-2', '1', '09', '01', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278189, '1-09-01-3', '1', '09', '01', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278190, '1-09-01-4', '1', '09', '01', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278191, '1-09-02-1', '1', '09', '02', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278192, '1-09-02-2', '1', '09', '02', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278193, '1-09-02-3', '1', '09', '02', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278194, '1-09-02-4', '1', '09', '02', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278195, '1-09-03-1', '1', '09', '03', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278196, '1-09-03-2', '1', '09', '03', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278197, '1-09-03-3', '1', '09', '03', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278198, '1-09-03-4', '1', '09', '03', '4', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278199, '1-09-04-1', '1', '09', '04', '1', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278200, '1-09-04-2', '1', '09', '04', '2', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278201, '1-09-04-3', '1', '09', '04', '3', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `ck_goods` VALUES (1431948815375278202, '1-09-04-4', '1', '09', '04', '4', NULL, '', NULL, '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_material
-- ----------------------------
DROP TABLE IF EXISTS `ck_material`;
CREATE TABLE `ck_material` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物料名称',
  `type_id` bigint DEFAULT NULL COMMENT '物料类别',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '单位',
  `visible` int DEFAULT NULL COMMENT '是否可见',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1432348272193536003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of ck_material
-- ----------------------------
BEGIN;
INSERT INTO `ck_material` VALUES (1431924887944699905, '帖子', NULL, '个', NULL, 'admin', '2021-08-29 10:21:12', '', NULL, '帖子', NULL);
INSERT INTO `ck_material` VALUES (1431943077575827458, '而为', 1, '个', NULL, 'admin', '2021-08-29 11:33:29', '', NULL, '而为', NULL);
INSERT INTO `ck_material` VALUES (1432348272193536002, 'test', 1, '个', NULL, 'admin', '2021-08-30 14:23:34', '', NULL, '123', NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_material_type
-- ----------------------------
DROP TABLE IF EXISTS `ck_material_type`;
CREATE TABLE `ck_material_type` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物料类别',
  `order_num` int DEFAULT NULL COMMENT '排序',
  `pid` bigint DEFAULT NULL COMMENT '父级',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1431903980236939267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of ck_material_type
-- ----------------------------
BEGIN;
INSERT INTO `ck_material_type` VALUES (1, '通用器材', 1, 0, NULL, NULL, 'admin', '2021-08-29 09:13:40', '通用器材');
INSERT INTO `ck_material_type` VALUES (2, '铁锤', NULL, 1, '', NULL, '', NULL, NULL);
INSERT INTO `ck_material_type` VALUES (1431903980236939266, '铁勺', 2, 1, 'admin', '2021-08-29 08:58:07', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_order_reserver
-- ----------------------------
DROP TABLE IF EXISTS `ck_order_reserver`;
CREATE TABLE `ck_order_reserver` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_id` int DEFAULT NULL COMMENT '出库单号',
  `reserver_id` int DEFAULT NULL COMMENT '物资ID',
  `rfid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'rfid',
  `box_no` int DEFAULT NULL COMMENT '箱号',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `finish` tinyint DEFAULT NULL COMMENT '是否完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of ck_order_reserver
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ck_out_order
-- ----------------------------
DROP TABLE IF EXISTS `ck_out_order`;
CREATE TABLE `ck_out_order` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_level` int DEFAULT NULL COMMENT '重要程度',
  `out_event` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '出库事件',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `finished` tinyint DEFAULT NULL COMMENT '是否完成',
  `alled` tinyint DEFAULT NULL COMMENT '是否全仓',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of ck_out_order
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ck_police
-- ----------------------------
DROP TABLE IF EXISTS `ck_police`;
CREATE TABLE `ck_police` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '姓名',
  `age` int DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '手机',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '地址',
  `id_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '身份证',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1431883291656232962 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of ck_police
-- ----------------------------
BEGIN;
INSERT INTO `ck_police` VALUES (1431883291656232961, 'ben', 18, '1561237213', '123', '123', 'admin', '2021-08-29 07:35:54', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_reserver
-- ----------------------------
DROP TABLE IF EXISTS `ck_reserver`;
CREATE TABLE `ck_reserver` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rfid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'rfid',
  `box_no` int NOT NULL COMMENT '箱号',
  `material_id` bigint NOT NULL COMMENT '物料关联ID',
  `material_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '物料类别',
  `material_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '物料名称',
  `material_quantity` int NOT NULL COMMENT '数量',
  `out_order_id` bigint DEFAULT NULL COMMENT '出库单号',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '库位',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `box_key` (`box_no`) USING BTREE,
  UNIQUE KEY `rfid_key` (`rfid`(32)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of ck_reserver
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_sys_area
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_area`;
CREATE TABLE `t_sys_area` (
  `id` bigint NOT NULL COMMENT '主键',
  `area_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区代码',
  `city_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父级市代码',
  `area_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市名称',
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简称',
  `lng` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '纬度',
  `sort` int DEFAULT NULL COMMENT '排序',
  `data_state` bigint DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  KEY `Index_1` (`area_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='地区设置';

-- ----------------------------
-- Records of t_sys_area
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_area` VALUES (1975, '500101', '500100', '万州区', '万州', '108.380249', '30.807808', 28, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1976, '500102', '500100', '涪陵区', '涪陵', '107.394905', '29.703651', 11, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1977, '500103', '500100', '渝中区', '渝中', '106.562881', '29.556742', 37, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1978, '500104', '500100', '大渡口区', '大渡口', '106.48613', '29.481003', 6, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1979, '500105', '500100', '江北区', '江北', '106.532845', '29.575352', 13, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1980, '500106', '500100', '沙坪坝区', '沙坪坝', '106.454201', '29.541224', 24, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1981, '500107', '500100', '九龙坡区', '九龙坡', '106.480988', '29.523493', 15, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1982, '500108', '500100', '南岸区', '南岸', '106.560814', '29.523993', 18, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1983, '500109', '500100', '北碚区', '北碚', '106.437866', '29.82543', 2, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1984, '500112', '500100', '渝北区', '渝北', '106.512848', '29.601452', 35, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1985, '500113', '500100', '巴南区', '巴南', '106.519424', '29.38192', 1, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1986, '500114', '500100', '黔江区', '黔江', '108.782578', '29.527548', 21, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1987, '500115', '500100', '长寿区', '长寿', '107.074852', '29.833672', 4, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1988, '500222', '500100', '綦江区', '綦江', '106.651421', '29.028091', 22, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1989, '500223', '500100', '潼南县', '潼南', '105.84182', '30.189554', 27, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1990, '500224', '500100', '铜梁县', '铜梁', '106.054947', '29.839945', 26, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1991, '500225', '500100', '大足区', '大足', '105.715317', '29.700499', 7, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1992, '500226', '500100', '荣昌县', '荣昌', '105.594063', '29.403627', 23, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1993, '500227', '500100', '璧山县', '璧山', '106.231125', '29.59358', 3, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1994, '500228', '500100', '梁平县', '梁平', '107.800034', '30.672169', 17, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1995, '500229', '500100', '城口县', '城口', '108.664902', '31.946293', 5, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1996, '500230', '500100', '丰都县', '丰都', '107.732483', '29.866425', 9, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1997, '500231', '500100', '垫江县', '垫江', '107.348694', '30.330011', 8, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1998, '500232', '500100', '武隆县', '武隆', '107.756554', '29.323759', 29, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (1999, '500233', '500100', '忠县', '忠县', '108.037521', '30.291536', 38, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2000, '500234', '500100', '开县', '开县', '108.413315', '31.167734', 16, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2001, '500235', '500100', '云阳县', '云阳', '108.697701', '30.930529', 36, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2002, '500236', '500100', '奉节县', '奉节', '109.465775', '31.019966', 10, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2003, '500237', '500100', '巫山县', '巫山', '109.878929', '31.074842', 30, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2004, '500238', '500100', '巫溪县', '巫溪', '109.628914', '31.396601', 31, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2005, '500240', '500100', '石柱土家族自治县', '石柱', '108.11245', '29.998529', 25, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2006, '500241', '500100', '秀山土家族苗族自治县', '秀山', '108.99604', '28.444773', 32, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2007, '500242', '500100', '酉阳土家族苗族自治县', '酉阳', '108.767204', '28.839828', 34, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2008, '500243', '500100', '彭水苗族土家族自治县', '彭水', '108.16655', '29.293856', 20, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2009, '500381', '500100', '江津区', '江津', '106.253159', '29.283386', 14, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2010, '500382', '500100', '合川区', '合川', '106.265556', '29.990993', 12, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2011, '500383', '500100', '永川区', '永川', '105.894714', '29.348747', 33, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
INSERT INTO `t_sys_area` VALUES (2012, '500384', '500100', '南川区', '南川', '107.098152', '29.156647', 19, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_city
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_city`;
CREATE TABLE `t_sys_city` (
  `id` bigint NOT NULL COMMENT '主键',
  `city_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市代码',
  `city_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市名称',
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简称',
  `province_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省代码',
  `lng` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '纬度',
  `sort` int DEFAULT NULL COMMENT '排序',
  `data_state` int DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index_1` (`city_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='城市设置';

-- ----------------------------
-- Records of t_sys_city
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_city` VALUES (255, '500100', '重庆市', '重庆', '500000', '106.504959', '29.533155', 1, 0, '', '2019-02-28 17:16:58', '', '2019-02-28 17:17:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_department
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_department`;
CREATE TABLE `t_sys_department` (
  `id` bigint NOT NULL COMMENT '主键',
  `parent_id` bigint DEFAULT NULL COMMENT '父id',
  `dept_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '部门名称',
  `leader` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '部门负责人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` int DEFAULT NULL COMMENT '状态',
  `order_num` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='部门表';

-- ----------------------------
-- Records of t_sys_department
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_department` VALUES (1, 0, '解放军', '解放军', '13012345678', 'v2@qq.com', 1, 1, NULL, NULL, 'admin', '2021-08-29 12:44:08', NULL);
INSERT INTO `t_sys_department` VALUES (2, 1, '技术部门', 'x某某', '13012345678', 'v2@qq.com', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_department` VALUES (3, 1, '人事部门', 'a某某', '13012345678', 'v2@qq.com', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_department` VALUES (4, 2, '开发一小组', 'b某某', '13012345678', 'v2@qq.com', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_department` VALUES (5, 3, '销售部门', 'd某某', '13012345678', 'v2@qq.com', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_department` VALUES (6, 5, '销售一组', 'e某某', '13012345678', 'v2@qq.com', 1, 6, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_data`;
CREATE TABLE `t_sys_dict_data` (
  `id` bigint NOT NULL COMMENT '主键',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

-- ----------------------------
-- Records of t_sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_dict_data` VALUES (331043380933038080, 1, '一般', '1', 'sys_notice_type', '', 'info', 'Y', '0', 'admin', '2019-09-09 22:15:03', 'admin', '2019-09-09 22:15:43', '');
INSERT INTO `t_sys_dict_data` VALUES (331043525137403904, 2, '重要', '2', 'sys_notice_type', '', 'important', 'N', '0', 'admin', '2019-09-09 22:15:37', 'admin', '2020-12-27 13:57:22', '');
INSERT INTO `t_sys_dict_data` VALUES (340080322395901952, 1, '开启', '0', 'sys_province_state', '', 'info', 'Y', '0', 'admin', '2019-10-04 20:44:37', 'admin', '2019-10-04 20:46:41', '');
INSERT INTO `t_sys_dict_data` VALUES (340080779201744896, 2, '关闭', '-1', 'sys_province_state', '', 'important', 'N', '0', 'admin', '2019-10-04 20:46:26', 'admin', '2020-12-27 13:57:46', '');
INSERT INTO `t_sys_dict_data` VALUES (373494384659927040, 0, 'GET请求', '1', 'sys_inter_url_type', '', 'primary', 'Y', '0', 'admin', '2020-01-05 01:40:11', 'admin', '2020-12-27 14:27:28', '');
INSERT INTO `t_sys_dict_data` VALUES (373494483465146368, 1, 'POST请求', '2', 'sys_inter_url_type', '', 'info', 'N', '0', 'admin', '2020-01-05 01:40:34', 'admin', '2020-12-27 14:26:59', '');
INSERT INTO `t_sys_dict_data` VALUES (506431838588375040, 0, 'DELETE请求', '3', 'sys_inter_url_type', '', 'default', 'N', '0', 'admin', '2021-01-05 13:46:10', 'admin', '2021-01-05 13:48:43', '');
INSERT INTO `t_sys_dict_data` VALUES (506432620712824832, 0, 'PUT请求', '4', 'sys_inter_url_type', '', 'default', 'N', '0', 'admin', '2021-01-05 13:49:16', 'admin', '2021-01-05 13:49:20', '');
INSERT INTO `t_sys_dict_data` VALUES (563746747239763968, 0, '微信', '1', 'payment_type', '', 'default', 'Y', '0', 'admin', '2021-06-12 17:35:09', 'admin', '2021-06-12 17:37:14', '');
INSERT INTO `t_sys_dict_data` VALUES (563746783184949248, 0, '支付宝', '2', 'payment_type', '', 'default', 'Y', '0', 'admin', '2021-06-12 17:35:17', 'admin', '2021-06-12 17:37:18', '');
INSERT INTO `t_sys_dict_data` VALUES (563746818496794624, 0, '水滴筹', '3', 'payment_type', '', 'default', 'Y', '0', 'admin', '2021-06-12 17:35:26', 'admin', '2021-06-12 17:37:21', '');
INSERT INTO `t_sys_dict_data` VALUES (563747125104611328, 0, '火锅底料', '1', 'gift_type', '', 'default', 'Y', '0', 'admin', '2021-06-12 17:36:39', 'admin', '2021-06-12 17:36:50', '');
INSERT INTO `t_sys_dict_data` VALUES (563747405598691328, 0, '冒菜底料', '2', 'gift_type', '', 'default', 'Y', '0', 'admin', '2021-06-12 17:37:46', '', '2021-06-12 17:37:46', '');
INSERT INTO `t_sys_dict_data` VALUES (563747459235450880, 0, '重庆小面佐料', '3', 'gift_type', '', 'default', 'Y', '0', 'admin', '2021-06-12 17:37:58', '', '2021-06-12 17:37:58', '');
INSERT INTO `t_sys_dict_data` VALUES (563747480336994304, 0, '其他', '4', 'gift_type', '', 'default', 'Y', '0', 'admin', '2021-06-12 17:38:03', '', '2021-06-12 17:38:03', '');
INSERT INTO `t_sys_dict_data` VALUES (571366029360500736, 0, '是', '1', 'yes_or_no', '', 'default', 'Y', '0', 'admin', '2021-07-03 18:11:27', '', '2021-07-03 18:11:27', '');
INSERT INTO `t_sys_dict_data` VALUES (571366105029939200, 0, '否', '-1', 'yes_or_no', '', 'info', 'Y', '0', 'admin', '2021-07-03 18:11:45', '', '2021-07-03 18:11:45', '');
COMMIT;

-- ----------------------------
-- Table structure for t_sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_type`;
CREATE TABLE `t_sys_dict_type` (
  `id` bigint NOT NULL COMMENT '主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- ----------------------------
-- Records of t_sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_dict_type` VALUES (6, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-12-27 14:26:42', '通知类型列表');
INSERT INTO `t_sys_dict_type` VALUES (340079827459641344, '省份状态', 'sys_province_state', '0', 'admin', '2019-10-04 20:42:39', '', '2019-10-04 20:42:39', '省份状态');
INSERT INTO `t_sys_dict_type` VALUES (373493952487231488, '拦截器类型', 'sys_inter_url_type', '0', 'admin', '2020-01-05 01:38:28', 'admin', '2020-03-29 23:23:43', '拦截器类型');
INSERT INTO `t_sys_dict_type` VALUES (563746635880992768, '捐款类型', 'payment_type', '0', 'admin', '2021-06-12 17:34:42', '', '2021-06-12 17:34:42', '');
INSERT INTO `t_sys_dict_type` VALUES (563747016396640256, '礼物类型', 'gift_type', '0', 'admin', '2021-06-12 17:36:13', '', '2021-06-12 17:36:13', '');
INSERT INTO `t_sys_dict_type` VALUES (571365854613213184, '是与否', 'yes_or_no', '0', 'admin', '2021-07-03 18:10:45', '', '2021-07-03 18:10:45', '用于select');
COMMIT;

-- ----------------------------
-- Table structure for t_sys_email
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_email`;
CREATE TABLE `t_sys_email` (
  `id` bigint NOT NULL COMMENT '主键',
  `receivers_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '接收人电子邮件',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '邮件标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '内容',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='电子邮件';

-- ----------------------------
-- Records of t_sys_email
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_email` VALUES (503928650819833856, '87766867@qq.com', '87766867@qq.com', 'fffffff<img src=\"http://localhost:8080/demo/static/component/layui/images/face/22.gif\" alt=\"[委屈]\">', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_email` VALUES (503928914918379520, '87766867@qq.com', '87766867@qq.com', 'ssssssfsdfsdfsdf<img src=\"http://localhost:8080/demo/static/component/layui/images/face/42.gif\" alt=\"[抓狂]\"><img src=\"http://localhost:8080/demo/static/component/layui/images/face/71.gif\" alt=\"[蛋糕]\">', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_email` VALUES (595001021625794560, '87766867@qq.com', 'springbootv2测试邮件', '<p>测试测测测</p>', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_file
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_file`;
CREATE TABLE `t_sys_file` (
  `id` bigint NOT NULL COMMENT '主键',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '文件名字',
  `bucket_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '桶名',
  `file_size` bigint DEFAULT NULL COMMENT '文件大小',
  `file_suffix` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '后缀',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='文件信息表';

-- ----------------------------
-- Records of t_sys_file
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_file` VALUES (503885495013609472, '503895116063313920.png', 'v2-cloud', 48831, 'image/png', 'admin', '2021-08-07 23:59:24', 'admin', '2021-08-06 23:46:29', NULL);
INSERT INTO `t_sys_file` VALUES (503885528857448448, '503895039806672896.png', 'v2-cloud', 71460, 'image/png', 'admin', '2021-08-07 23:59:24', 'admin', '2021-08-06 23:46:29', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_inter_url
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_inter_url`;
CREATE TABLE `t_sys_inter_url` (
  `id` bigint NOT NULL COMMENT '主键',
  `inter_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '拦截名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '拦截url',
  `type` bigint DEFAULT NULL COMMENT '类型',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='拦截url表';

-- ----------------------------
-- Records of t_sys_inter_url
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_inter_url` VALUES (411495038321823744, '字典表新增', '/DictDataController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506433268967673856, '字典表修改', '/DictDataController/edit', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506434978159136768, '字典表删除', '/DictDataController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506435565655298048, '字典表状态修改', '/DictDataController/updateDefault', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506435921147727872, '字典表状态修改2', '/DictDataController/updateEnable', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506436031403397120, '字典表类型新增', '/DictTypeController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506436148680331264, '字典表类型修改', '/DictTypeController/edit', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506436165776314368, '字典表类型删除', '/DictTypeController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506436180578013184, '字典表类型状态修改', '/DictTypeController/updateEnable', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506436662134444032, '邮件新增', '/EmailController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506436757722632192, '邮件删除', '/EmailController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506437010966319104, '日志删除', '/LogController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506437420099702784, 'oss新增', '/oss/bucket/', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506437439112482816, 'oss删除', '/oss/bucket/', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506437964436475904, '权限新增', '/PermissionController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506438040823140352, '权限保存', '/PermissionController/edit', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506438121399914496, '权限删除', '/PermissionController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506438208599494656, '权限授权', '/PermissionController/saveRolePower', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506438306276446208, '权限状态修改', '/PermissionController/updateVisible', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506438447226032128, '定时器新增', '/SysQuartzJobController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506438589874311168, ' 任务调度状态修改', '/SysQuartzJobController/changeStatus', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506438725388079104, '定时器保存', '/SysQuartzJobController/edit', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506438870959788032, '定时器修改', '/SysQuartzJobController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506439003516571648, '定时任务日志删除', '/SysQuartzJobLogController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506439171481669632, '角色新增', '/RoleController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506439186778296320, '角色修改', '/RoleController/edit', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506439297122045952, '角色删除', '/RoleController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506439669773373440, '地区新增', '/SysAreaController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506439687859212288, '地区修改', '/SysAreaController/edit', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506439835490324480, '地区删除', '/SysAreaController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506440103976112128, 'City新增', '/SysCityController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506440145147400192, 'City修改', ' /SysCityController/edit', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506440217188765696, 'City删除', '/SysCityController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506440386873528320, '部门新增', '/SysDepartmentController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506440448223612928, '部门修改', '/SysDepartmentController/edit', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506440515110178816, '部门删除', '/SysDepartmentController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506440574635741184, '部门状态', '/SysDepartmentController/updateVisible', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506440668508459008, '拦截器url新增', '/SysInterUrlController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506440708056551424, '拦截器url修改', '/SysInterUrlController/edit', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506440802856210432, '拦截器url删除', '/SysInterUrlController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506441001783660544, '公告新增', '/SysNoticeController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506441051263864832, '公告修改', '/SysNoticeController/edit', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506441105743679488, '公告删除', '/SysNoticeController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506441242591236096, '职位新增', '/SysPositionController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506441287038275584, '职位修改', '/SysPositionController/edit', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506441350200299520, '职位删除', '/SysPositionController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506441420677189632, '职位状态修改', '/SysPositionController/updateVisible', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506441780003213312, '省份新增', '/SysProvinceController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506441807383629824, '省份修改', '/SysProvinceController/edit', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506441871850082304, '省份删除', '/SysProvinceController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506441980012793856, '街道新增', '/SysStreetController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506442015706320896, '街道修改', '/SysStreetController/edit', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506442092445306880, '街道删除', '/SysStreetController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506442186552905728, '用户新增', '/UserController/add', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506442212696002560, '用户修改', '/UserController/edit', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506442271252680704, '用户修改密码', '/UserController/editPwd', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506442344443285504, '用户删除', '/UserController/remove', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_inter_url` VALUES (506444610625736704, '拦截器url复制', '/SysInterUrlController/copy/', 3, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice`;
CREATE TABLE `t_sys_notice` (
  `id` bigint NOT NULL COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `type` int DEFAULT NULL COMMENT '类型',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='公告';

-- ----------------------------
-- Records of t_sys_notice
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_notice` VALUES (330381411007729664, '测试公告', '<p>啊啊啊<img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>', 1, 'admin', '2021-08-07 23:56:52', NULL, NULL, NULL);
INSERT INTO `t_sys_notice` VALUES (330381806358630400, '鲜花视频', '<p>哈哈哈哈<img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>', 2, 'admin', '2021-08-07 23:56:52', NULL, NULL, NULL);
INSERT INTO `t_sys_notice` VALUES (373478036928073728, '顶顶顶顶顶顶顶顶顶', '<p>顶顶顶顶顶顶顶顶顶顶<img src=\"http://img.baidu.com/hi/jx2/j_0014.gif\"/></p>', 1, 'admin', '2021-08-07 23:56:52', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_notice_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice_user`;
CREATE TABLE `t_sys_notice_user` (
  `id` bigint NOT NULL COMMENT '主键',
  `notice_id` bigint DEFAULT NULL COMMENT '公告id',
  `user_id` bigint DEFAULT NULL COMMENT '用户id',
  `state` bigint DEFAULT NULL COMMENT '0未阅读 1 阅读',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='公告_用户外键';

-- ----------------------------
-- Records of t_sys_notice_user
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_notice_user` VALUES (330381411037089792, 330381411007729664, 1, 1, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (330381411045478400, 330381411007729664, 488294747442511872, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (330381806375407616, 330381806358630400, 1, 1, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (330381806379601920, 330381806358630400, 488294747442511872, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (330622143622680576, 330622143597514752, 1, 1, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (330622143626874880, 330622143597514752, 488294747442511872, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (354984345649418240, 354984345632641024, 1, 1, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (373478037158760448, 373478036928073728, 1, 1, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (373478037162954752, 373478036928073728, 368026921239449600, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (373478037171343360, 373478036928073728, 368026937181999104, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (373478037175537664, 373478036928073728, 368027013392502784, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (373478037183926272, 373478036928073728, 368027030899527680, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (373478037192314880, 373478036928073728, 368027048402358272, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (373478037204897792, 373478036928073728, 368027066563694592, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (373478037213286400, 373478036928073728, 368027087866564608, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (373478037217480704, 373478036928073728, 368027104895438848, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (373478037225869312, 373478036928073728, 368027130728157184, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (373478037230063616, 373478036928073728, 368027151624179712, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (373478037238452224, 373478036928073728, 368382463233363968, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (502750147499921408, 502750147395063808, 1, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (502750147508310016, 502750147395063808, 433236479427350528, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (502758207983325184, 502758207907827712, 1, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (502758207991713792, 502758207907827712, 433236479427350528, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (502820822130495488, 502820822042415104, 1, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
INSERT INTO `t_sys_notice_user` VALUES (502820822138884096, 502820822042415104, 433236479427350528, 0, 'admin', '2021-08-07 23:58:36', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_oper_log`;
CREATE TABLE `t_sys_oper_log` (
  `id` bigint NOT NULL COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '方法',
  `oper_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '操作人',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'url',
  `oper_param` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '参数',
  `error_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `oper_time` date DEFAULT NULL COMMENT '操作时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='日志记录表';

-- ----------------------------
-- Records of t_sys_oper_log
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_oper_log` VALUES (1431960129791447042, '清空日志', 'com.fc.v2.controller.admin.SysOperLogController.clean()', 'admin', '/LogController/clean', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:41:14', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431960153971609601, '字典类型表集合查询', 'com.fc.v2.controller.admin.SysDictTypeController.list()', 'admin', '/DictTypeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"desc\"],\"page\":[\"1\"],\"orderByColumn\":[\"createTime\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:41:20', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431960166688739329, '公告集合查询', 'com.fc.v2.controller.admin.SysNoticeController.list()', 'admin', '/SysNoticeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:41:23', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431960333529763842, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/dept/list', '{\"limit\":[\"10\"],\"deptIds\":[\"4\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:42:03', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431960341658324993, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/dept/list', '{\"limit\":[\"10\"],\"deptIds\":[\"4,2\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:42:05', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431960352542543873, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/dept/list', '{\"limit\":[\"10\"],\"deptIds\":[\"2,4,3,5,6,1\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:42:07', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431960381172862978, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/dept/list', '{\"limit\":[\"10\"],\"deptIds\":[\"2,4,3,5,6,1\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:42:14', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431960438605467650, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/dept/list', '{\"limit\":[\"10\"],\"deptIds\":[\"2,4,3,5,6,1\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:42:28', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431960808350142466, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:43:56', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431960858769870849, '部门表修改', 'com.fc.v2.controller.admin.SysDepartmentController.editSave()', 'admin', '/SysDepartmentController/edit', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:44:08', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431960897034506241, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:44:17', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431961015682977793, '角色添加', 'com.fc.v2.controller.admin.SysRoleController.add()', 'admin', '/RoleController/add', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:44:45', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431961062294278146, '角色添加', 'com.fc.v2.controller.admin.SysRoleController.add()', 'admin', '/RoleController/add', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:44:56', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431962235168477185, '权限添加', 'com.fc.v2.controller.admin.SysPermissionController.add()', 'admin', '/PermissionController/add', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:49:36', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431962672282062849, '修改保存权限', 'com.fc.v2.controller.admin.SysPermissionController.editSave()', 'admin', '/PermissionController/edit', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:51:20', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431962714573230081, '修改保存角色', 'com.fc.v2.controller.admin.SysPermissionController.saveRolePower()', 'admin', '/PermissionController/saveRolePower', '{\"roleId\":[\"488243256161730560\"],\"powerIds\":[\"1431849551353671682,591835286116372480,591835286120566787,591835286120566786,591835286120566785,591835286120566784,591835648936251392,591835648936251393,591835648936251396,591835648936251395,591835648936251394', NULL, '2021-08-29', 'admin', '2021-08-29 12:51:30', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431962731841179650, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:51:35', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431962731950231554, '字典类型表集合查询', 'com.fc.v2.controller.admin.SysDictTypeController.list()', 'admin', '/DictTypeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"desc\"],\"page\":[\"1\"],\"orderByColumn\":[\"createTime\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:51:35', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431962732004757505, '公告集合查询', 'com.fc.v2.controller.admin.SysNoticeController.list()', 'admin', '/SysNoticeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:51:35', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431962732755537921, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:51:35', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431962732810063873, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:51:35', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431962732872978434, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:51:35', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431963267944534017, '修改保存权限', 'com.fc.v2.controller.admin.SysPermissionController.editSave()', 'admin', '/PermissionController/edit', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:53:42', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431963379005509633, '修改保存权限', 'com.fc.v2.controller.admin.SysPermissionController.editSave()', 'admin', '/PermissionController/edit', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:54:09', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431963445426507778, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:54:25', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431963829805109249, '修改保存权限', 'com.fc.v2.controller.admin.SysPermissionController.editSave()', 'admin', '/PermissionController/edit', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:55:56', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431964101646340097, '权限添加', 'com.fc.v2.controller.admin.SysPermissionController.add()', 'admin', '/PermissionController/add', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:57:01', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431964244814712834, '修改保存权限', 'com.fc.v2.controller.admin.SysPermissionController.editSave()', 'admin', '/PermissionController/edit', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:57:35', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431964499316690946, '权限添加', 'com.fc.v2.controller.admin.SysPermissionController.add()', 'admin', '/PermissionController/add', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 12:58:36', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431964547945451521, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:58:48', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431964582271635458, '修改保存角色', 'com.fc.v2.controller.admin.SysPermissionController.saveRolePower()', 'admin', '/PermissionController/saveRolePower', '{\"roleId\":[\"488243256161730560\"],\"powerIds\":[\"1431849551353671682,591835286116372480,591835286120566784,591835286120566787,591835286120566786,591835286120566785,591835592719994880,591835592719994884,591835592719994883,591835592719994882,591835592719994881', NULL, '2021-08-29', 'admin', '2021-08-29 12:58:56', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431964615431802881, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-29', 'admin', '2021-08-29 12:59:04', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1431965115384451074, '修改保存权限', 'com.fc.v2.controller.admin.SysPermissionController.editSave()', 'admin', '/PermissionController/edit', '{}', NULL, '2021-08-29', 'admin', '2021-08-29 13:01:03', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432318963408015361, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 12:27:07', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432318963705810945, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 12:27:07', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432320639426727937, '权限添加', 'com.fc.v2.controller.admin.SysPermissionController.add()', 'admin', '/PermissionController/add', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 12:33:46', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432320720783642625, '修改保存权限', 'com.fc.v2.controller.admin.SysPermissionController.editSave()', 'admin', '/PermissionController/edit', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 12:34:06', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432321114557485058, '权限添加', 'com.fc.v2.controller.admin.SysPermissionController.add()', 'admin', '/PermissionController/add', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 12:35:40', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432321388974018562, '权限添加', 'com.fc.v2.controller.admin.SysPermissionController.add()', 'admin', '/PermissionController/add', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 12:36:45', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432321584105623553, '权限添加', 'com.fc.v2.controller.admin.SysPermissionController.add()', 'admin', '/PermissionController/add', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 12:37:32', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432321623766962178, '修改保存角色', 'com.fc.v2.controller.admin.SysPermissionController.saveRolePower()', 'admin', '/PermissionController/saveRolePower', '{\"roleId\":[\"488243256161730560\"],\"powerIds\":[\"1431849551353671682,591835286116372480,591835286120566784,591835286120566787,591835286120566786,591835286120566785,591835592719994880,591835592719994884,591835592719994883,591835592719994882,591835592719994881', NULL, '2021-08-30', 'admin', '2021-08-30 12:37:41', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432321694612951042, '修改保存权限', 'com.fc.v2.controller.admin.SysPermissionController.editSave()', 'admin', '/PermissionController/edit', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 12:37:58', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432321777735667714, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 12:38:18', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432321777811165185, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 12:38:18', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432325408409088001, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 12:52:43', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432325408409088002, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 12:52:43', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432325408409088003, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 12:52:43', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432325427602223106, '公告集合查询', 'com.fc.v2.controller.admin.SysNoticeController.list()', 'admin', '/SysNoticeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 12:52:48', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432325434577350657, '字典类型表集合查询', 'com.fc.v2.controller.admin.SysDictTypeController.list()', 'admin', '/DictTypeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"desc\"],\"page\":[\"1\"],\"orderByColumn\":[\"createTime\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 12:52:50', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432328339988525057, '公告集合查询', 'com.fc.v2.controller.admin.SysNoticeController.list()', 'admin', '/SysNoticeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 13:04:22', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432328339988525058, '字典类型表集合查询', 'com.fc.v2.controller.admin.SysDictTypeController.list()', 'admin', '/DictTypeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"desc\"],\"page\":[\"1\"],\"orderByColumn\":[\"createTime\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 13:04:22', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432328339988525059, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 13:04:22', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432328341913710593, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 13:04:23', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432328341947265025, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 13:04:23', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432329894917693441, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 13:10:33', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432329894980608001, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 13:10:33', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432329896364728322, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 13:10:33', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432329896377311233, '公告集合查询', 'com.fc.v2.controller.admin.SysNoticeController.list()', 'admin', '/SysNoticeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 13:10:33', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432329896792547329, '字典类型表集合查询', 'com.fc.v2.controller.admin.SysDictTypeController.list()', 'admin', '/DictTypeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"desc\"],\"page\":[\"1\"],\"orderByColumn\":[\"createTime\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 13:10:33', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432329896821907457, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 13:10:33', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432343312366055425, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 14:03:52', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432343312366055426, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 14:03:52', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432343312403804161, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 14:03:52', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432343313540460546, '公告集合查询', 'com.fc.v2.controller.admin.SysNoticeController.list()', 'admin', '/SysNoticeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 14:03:52', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432343314068942849, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 14:03:52', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432343314102497281, '字典类型表集合查询', 'com.fc.v2.controller.admin.SysDictTypeController.list()', 'admin', '/DictTypeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"desc\"],\"page\":[\"1\"],\"orderByColumn\":[\"createTime\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 14:03:52', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432344997884952577, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 14:10:34', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432344997947867137, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 14:10:34', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432344999596228609, '公告集合查询', 'com.fc.v2.controller.admin.SysNoticeController.list()', 'admin', '/SysNoticeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 14:10:34', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432344999734640642, '字典类型表集合查询', 'com.fc.v2.controller.admin.SysDictTypeController.list()', 'admin', '/DictTypeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"desc\"],\"page\":[\"1\"],\"orderByColumn\":[\"createTime\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 14:10:34', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432345000003076098, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-30', 'admin', '2021-08-30 14:10:34', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432345001362030593, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-30', 'admin', '2021-08-30 14:10:35', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432498118951018497, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-31', 'admin', '2021-08-31 00:19:01', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432498119026515969, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 00:19:01', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432499154159788034, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-31', 'admin', '2021-08-31 00:23:08', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432499154168176641, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 00:23:08', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432499154214313986, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 00:23:08', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432499154944122882, '公告集合查询', 'com.fc.v2.controller.admin.SysNoticeController.list()', 'admin', '/SysNoticeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 00:23:08', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432499155007037442, '字典类型表集合查询', 'com.fc.v2.controller.admin.SysDictTypeController.list()', 'admin', '/DictTypeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"desc\"],\"page\":[\"1\"],\"orderByColumn\":[\"createTime\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 00:23:08', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432499155485188098, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-31', 'admin', '2021-08-31 00:23:08', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432657734846504962, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-31', 'admin', '2021-08-31 10:53:16', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432657734922002433, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 10:53:16', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432658670071439362, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 10:56:59', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432658806218547201, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 10:57:32', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432658861486891009, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 10:57:45', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432659925586010113, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 11:01:58', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432661486647119874, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 11:08:11', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432674094875942913, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 11:58:17', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432682386239119361, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 12:31:13', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432682472641781762, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 12:31:34', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432709200042901505, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-31', 'admin', '2021-08-31 14:17:46', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432709200110010369, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 14:17:46', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432710877550485505, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-31', 'admin', '2021-08-31 14:24:26', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432710877634371586, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 14:24:26', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432716570261204993, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-31', 'admin', '2021-08-31 14:47:04', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432716570315730945, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 14:47:04', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432717511110701057, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-08-31', 'admin', '2021-08-31 14:50:48', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432717511190392833, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 14:50:48', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432717513325293570, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 14:50:48', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1432717513367236610, '字典类型表集合查询', 'com.fc.v2.controller.admin.SysDictTypeController.list()', 'admin', '/DictTypeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"desc\"],\"page\":[\"1\"],\"orderByColumn\":[\"createTime\"]}', NULL, '2021-08-31', 'admin', '2021-08-31 14:50:48', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433062381583196161, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 13:41:11', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433062381583196162, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-09-01', 'admin', '2021-09-01 13:41:11', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433062669073375234, '删除权限', 'com.fc.v2.controller.admin.SysPermissionController.remove()', 'admin', '/PermissionController/remove', '{\"ids\":[\"1431962235147505665,593041129293877248,593041129293877249,593041129293877250,593041129293877251,593041129293877252,1431964499295719426,1431964101625368578\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 13:42:20', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433062705421213697, '修改保存角色', 'com.fc.v2.controller.admin.SysPermissionController.saveRolePower()', 'admin', '/PermissionController/saveRolePower', '{\"roleId\":[\"488243256161730560\"],\"powerIds\":[\"1431849551353671682,591835286116372480,591835286120566784,591835286120566785,591835286120566786,591835286120566787,591835431927156736,591835431927156737,591835431927156738,591835431927156739,591835431927156740', NULL, '2021-09-01', 'admin', '2021-09-01 13:42:29', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433062766863572994, '删除权限', 'com.fc.v2.controller.admin.SysPermissionController.remove()', 'admin', '/PermissionController/remove', '{\"ids\":[\"593041129293877249,593041129293877250,593041129293877251,593041129293877252,1431964499295719426,1431964101625368578\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 13:42:43', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433062796320169985, '删除权限', 'com.fc.v2.controller.admin.SysPermissionController.remove()', 'admin', '/PermissionController/remove', '{\"ids\":[\"1431962235147505665,593041129293877248,593041129293877249,593041129293877250,593041129293877251,593041129293877252,1431964499295719426,1431964101625368578\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 13:42:50', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433062833850802177, '删除权限', 'com.fc.v2.controller.admin.SysPermissionController.remove()', 'admin', '/PermissionController/remove', '{\"ids\":[\"1431962235147505665,593041129293877248\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 13:42:59', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433062857447956482, '删除权限', 'com.fc.v2.controller.admin.SysPermissionController.remove()', 'admin', '/PermissionController/remove', '{\"ids\":[\"593041129293877248\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 13:43:05', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433062876385239042, '删除权限', 'com.fc.v2.controller.admin.SysPermissionController.remove()', 'admin', '/PermissionController/remove', '{\"ids\":[\"1431962235147505665,593041129293877248\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 13:43:09', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433063250408103938, '修改保存权限', 'com.fc.v2.controller.admin.SysPermissionController.editSave()', 'admin', '/PermissionController/edit', '{}', NULL, '2021-09-01', 'admin', '2021-09-01 13:44:39', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433063286386843649, '修改保存角色', 'com.fc.v2.controller.admin.SysPermissionController.saveRolePower()', 'admin', '/PermissionController/saveRolePower', '{\"roleId\":[\"488243256161730560\"],\"powerIds\":[\"1431849551353671682,591835286116372480,591835286120566785,591835286120566784,591835286120566786,591835286120566787,591835648936251392,591835648936251396,591835648936251395,591835648936251394,591835648936251393', NULL, '2021-09-01', 'admin', '2021-09-01 13:44:47', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433063302736240641, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-09-01', 'admin', '2021-09-01 13:44:51', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433063302786572289, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 13:44:51', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433064130859622402, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-09-01', 'admin', '2021-09-01 13:48:08', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433064130939314178, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 13:48:09', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433064387009961985, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-09-01', 'admin', '2021-09-01 13:49:10', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433064387085459457, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 13:49:10', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433066047627083778, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 13:55:45', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433066047627083779, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-09-01', 'admin', '2021-09-01 13:55:45', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433067041962344450, '修改保存角色', 'com.fc.v2.controller.admin.SysPermissionController.saveRolePower()', 'admin', '/PermissionController/saveRolePower', '{\"roleId\":[\"488243256161730560\"],\"powerIds\":[\"1431849551353671682,591835286116372480,591835286120566784,591835286120566785,591835286120566786,591835286120566787,591835431927156736,591835431927156737,591835431927156738,591835431927156739,591835431927156740', NULL, '2021-09-01', 'admin', '2021-09-01 13:59:43', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433067126095888386, '删除权限', 'com.fc.v2.controller.admin.SysPermissionController.remove()', 'admin', '/PermissionController/remove', '{\"ids\":[\"593041991022022657,593041991022022658,593041991022022659,593041991022022660\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 14:00:03', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433067144223670274, '删除权限', 'com.fc.v2.controller.admin.SysPermissionController.remove()', 'admin', '/PermissionController/remove', '{\"ids\":[\"593041991022022656,593041991022022657,593041991022022658,593041991022022659,593041991022022660\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 14:00:07', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433067160774393857, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-09-01', 'admin', '2021-09-01 14:00:11', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433067160845697025, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 14:00:11', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433067196107210753, '修改保存权限', 'com.fc.v2.controller.admin.SysPermissionController.editSave()', 'admin', '/PermissionController/edit', '{}', NULL, '2021-09-01', 'admin', '2021-09-01 14:00:19', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433067223349215233, '修改保存角色', 'com.fc.v2.controller.admin.SysPermissionController.saveRolePower()', 'admin', '/PermissionController/saveRolePower', '{\"roleId\":[\"488243256161730560\"],\"powerIds\":[\"1431849551353671682,591835286116372480,591835286120566785,591835286120566784,591835286120566786,591835286120566787,591835648936251392,591835648936251396,591835648936251395,591835648936251394,591835648936251393', NULL, '2021-09-01', 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433067590438899713, '分页查询', 'com.fc.v2.controller.admin.SysUserController.list()', 'admin', '/UserController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 14:01:53', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433067590438899714, '部门表集合查询', 'com.fc.v2.controller.admin.SysDepartmentController.list()', 'admin', '/SysDepartmentController/list', '{}', NULL, '2021-09-01', 'admin', '2021-09-01 14:01:53', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433067604225576961, '岗位表集合查询', 'com.fc.v2.controller.admin.SysPositionController.list()', 'admin', '/SysPositionController/list', '{\"limit\":[\"10\"],\"page\":[\"1\"],\"isAsc\":[\"asc\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 14:01:57', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433068247854108674, '字典类型表集合查询', 'com.fc.v2.controller.admin.SysDictTypeController.list()', 'admin', '/DictTypeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"desc\"],\"page\":[\"1\"],\"orderByColumn\":[\"createTime\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 14:04:30', '', NULL, NULL);
INSERT INTO `t_sys_oper_log` VALUES (1433068271564509186, '公告集合查询', 'com.fc.v2.controller.admin.SysNoticeController.list()', 'admin', '/SysNoticeController/list', '{\"limit\":[\"10\"],\"isAsc\":[\"asc\"],\"page\":[\"1\"],\"orderByColumn\":[\"id\"]}', NULL, '2021-09-01', 'admin', '2021-09-01 14:04:36', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission`;
CREATE TABLE `t_sys_permission` (
  `id` bigint NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限名称',
  `descripion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '授权链接',
  `is_blank` int DEFAULT '0' COMMENT '是否跳转 0 不跳转 1跳转',
  `pid` bigint DEFAULT NULL COMMENT '父节点id',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限标识',
  `type` int DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单图标',
  `order_num` int DEFAULT NULL COMMENT '排序',
  `visible` int DEFAULT NULL COMMENT '是否可见',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='权限表';

-- ----------------------------
-- Records of t_sys_permission
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_permission` VALUES (4, '用户管理', '用户展示', '/UserController/view', 0, 411522822607867904, 'system:user:view', 1, 'icon icon-user', 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (5, '用户集合', '用户集合', '/UserController/list', 0, 4, 'system:user:list', 2, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (6, '用户添加', '用户添加', '/UserController/add', 0, 4, 'system:user:add', 2, 'entypo-plus-squared', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (7, '用户删除', '用户删除', '/UserController/remove', 0, 4, 'system:user:remove', 2, 'entypo-trash', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (8, '用户修改', '用户修改', '/UserController/edit', 0, 4, 'system:user:edit', 2, 'fa fa-wrench', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (9, '角色管理', '角色展示', '/RoleController/view', 0, 411522822607867904, 'system:role:view', 1, 'fa fa-group', 2, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (10, '角色集合', '角色集合', '/RoleController/list', 0, 9, 'system:role:list', 2, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (11, '角色添加', '角色添加', '/RoleController/add', 0, 9, 'system:role:add', 2, 'entypo-plus-squared', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (12, '角色删除', '角色删除', '/RoleController/remove', 0, 9, 'system:role:remove', 2, 'entypo-trash', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (13, '角色修改', '角色修改', '/RoleController/edit', 0, 9, 'system:role:edit', 2, 'fa fa-wrench', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (14, '权限展示', '权限展示', '/PermissionController/view', 0, 411522822607867904, 'system:permission:view', 1, 'fa fa-key', 3, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (15, '权限集合', '权限集合', '/PermissionController/list', 0, 14, 'system:permission:list', 2, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (16, '权限添加', '权限添加', '/permissionController/add', 0, 14, 'system:permission:add', 2, 'entypo-plus-squared', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (17, '权限删除', '权限删除', '/PermissionController/remove', 0, 14, 'system:permission:remove', 2, 'entypo-trash', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (18, '权限修改', '权限修改', '/PermissionController/edit', 0, 14, 'system:permission:edit', 2, 'fa fa-wrench', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (19, '文件管理', '文件管理', '/FileController/view', 0, 592059865673760768, 'system:file:view', 1, 'fa fa-file-image-o', 4, 1, NULL, NULL, 'admin', '2021-08-29 12:13:56', NULL);
INSERT INTO `t_sys_permission` VALUES (20, '文件添加', '文件添加', '/FileController/add', 0, 19, 'system:file:add', 2, 'entypo-plus-squared', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (21, '文件删除', '文件删除', '/FileController/remove', 0, 19, 'system:file:remove', 2, 'entypo-trash', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (22, '文件修改', '文件修改', '/FileController/edit', 0, 19, 'system:file:edit', 2, 'fa fa-wrench', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (23, '文件集合', '文件集合', '/FileController/list', 0, 19, 'system:file:list', 2, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (330365026642825216, '公告管理', '公告展示', '/SysNoticeController/view', 0, 592059865673760768, 'gen:sysNotice:view', 1, 'fa fa-telegram', 10, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (332157860920299520, '定时任务', '定时任务调度表展示', '/SysQuartzJobController/view', 0, 592059865673760768, 'gen:sysQuartzJob:view', 1, 'fa fa-hourglass-1', 13, 1, NULL, NULL, 'admin', '2021-08-29 12:14:00', NULL);
INSERT INTO `t_sys_permission` VALUES (332857281479839744, '定时任务日志', '定时任务日志', '/SysQuartzJobLogController/view', 0, 592059865673760768, 'gen:sysQuartzJobLog:view', 1, 'fa fa-database', 14, 1, NULL, NULL, 'admin', '2021-08-29 12:14:01', NULL);
INSERT INTO `t_sys_permission` VALUES (373489907429150720, 'URL拦截管理', '拦截url表展示', '/SysInterUrlController/view', 0, 617766548966211584, 'gen:sysInterUrl:view', 1, 'fa fa-hand-stop-o', 16, 0, NULL, NULL, 'admin', '2021-08-29 12:19:29', NULL);
INSERT INTO `t_sys_permission` VALUES (410791701859405824, '岗位管理', '岗位展示', '/SysPositionController/view', 0, 411522822607867904, 'gen:sysPosition:view', 1, 'fa fa-vcard', 17, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (410989805699207168, '部门管理', '部门展示', '/SysDepartmentController/view', 0, 411522822607867904, 'gen:sysDepartment:view', 1, 'fa fa-odnoklassniki', 18, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (411522822607867904, '用户管理', NULL, '', 0, 0, '', 0, 'layui-icon layui-icon-user', 3, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (486690002869157888, '用户密码修改', '用户密码修改', '/UserController/editPwd', 0, 4, 'system:user:editPwd', 2, 'entypo-tools', 3, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (496126970468237312, '日志展示', '日志管理', '/LogController/view', 0, 592059865673760768, 'system:log:view', 1, 'fa fa-info', 9, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (496127240363311104, '日志删除', '日志删除', '/LogController/remove', 0, 496126970468237312, 'system:log:remove', 2, 'entypo-trash', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (496127794879660032, '日志集合', '日志集合', '/LogController/list', 0, 496126970468237312, 'system:log:list', 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (581541547099553792, 'druid监控', 'druid监控', '/druid/', 0, 617766548966211584, 'user:list', 1, 'fa fa-line-chart', 6, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835286116372480, '库位管理', '库位展示', '/CkGoodsController/view', 0, 1431849551353671682, 'system:ckGoods:view', 1, 'layui-icon layui-icon layui-icon-face-smile', NULL, 0, 'admin', '2021-08-29 06:05:53', 'admin', '2021-08-29 07:04:41', NULL);
INSERT INTO `t_sys_permission` VALUES (591835286120566784, '库位集合', '库位集合', '', 0, 591835286116372480, 'system:ckGoods:list', 2, 'layui-icon ', NULL, 0, 'admin', '2021-08-29 06:05:53', 'admin', '2021-08-29 07:04:52', NULL);
INSERT INTO `t_sys_permission` VALUES (591835286120566785, '库位添加', '库位添加', '', 0, 591835286116372480, 'system:ckGoods:add', 2, 'layui-icon layui-icon layui-icon-add-1', NULL, 0, 'admin', '2021-08-29 06:05:53', 'admin', '2021-08-29 07:05:01', NULL);
INSERT INTO `t_sys_permission` VALUES (591835286120566786, '库位删除', '库位删除', '', 0, 591835286116372480, 'system:ckGoods:remove', 2, 'layui-icon layui-icon layui-icon-delete', NULL, 0, 'admin', '2021-08-29 06:05:53', 'admin', '2021-08-29 07:05:08', NULL);
INSERT INTO `t_sys_permission` VALUES (591835286120566787, '库位修改', '库位修改', '', 0, 591835286116372480, 'system:ckGoods:edit', 2, 'layui-icon layui-icon layui-icon-edit', NULL, 0, 'admin', '2021-08-29 06:05:53', 'admin', '2021-08-29 07:05:15', NULL);
INSERT INTO `t_sys_permission` VALUES (591835431927156736, '携行库人员管理', '携行库人员展示', '/CkPoliceController/view', 0, 1431849551353671682, 'system:ckPolice:view', 1, 'layui-icon layui-icon-face-smile', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835431927156737, '携行库人员集合', '携行库人员集合', '/CkPoliceController/list', 0, 591835431927156736, 'system:ckPolice:list', 2, '', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835431927156738, '携行库人员添加', '携行库人员添加', '/CkPoliceController/add', 0, 591835431927156736, 'system:ckPolice:add', 2, 'layui-icon layui-icon-add-1', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835431927156739, '携行库人员删除', '携行库人员删除', '/CkPoliceController/remove', 0, 591835431927156736, 'system:ckPolice:remove', 2, 'layui-icon layui-icon-delete', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835431927156740, '携行库人员修改', '携行库人员修改', '/CkPoliceController/edit', 0, 591835431927156736, 'system:ckPolice:edit', 2, 'layui-icon layui-icon-edit', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835592719994880, '物资分类管理', '物资分类展示', '/CkMaterialTypeController/view', 0, 1431849551353671682, 'system:ckMaterialType:view', 1, 'layui-icon layui-icon-face-smile', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835592719994881, '物资分类集合', '物资分类集合', '/CkMaterialTypeController/list', 0, 591835592719994880, 'system:ckMaterialType:list', 2, '', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835592719994882, '物资分类添加', '物资分类添加', '/CkMaterialTypeController/add', 0, 591835592719994880, 'system:ckMaterialType:add', 2, 'layui-icon layui-icon-add-1', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835592719994883, '物资分类删除', '物资分类删除', '/CkMaterialTypeController/remove', 0, 591835592719994880, 'system:ckMaterialType:remove', 2, 'layui-icon layui-icon-delete', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835592719994884, '物资分类修改', '物资分类修改', '/CkMaterialTypeController/edit', 0, 591835592719994880, 'system:ckMaterialType:edit', 2, 'layui-icon layui-icon-edit', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835648936251392, '物资信息管理', '物资信息展示', '/CkMaterialController/view', 0, 1431849551353671682, 'system:ckMaterial:view', 1, 'layui-icon layui-icon-face-smile', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835648936251393, '物资信息集合', '物资信息集合', '/CkMaterialController/list', 0, 591835648936251392, 'system:ckMaterial:list', 2, '', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835648936251394, '物资信息添加', '物资信息添加', '/CkMaterialController/add', 0, 591835648936251392, 'system:ckMaterial:add', 2, 'layui-icon layui-icon-add-1', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835648936251395, '物资信息删除', '物资信息删除', '/CkMaterialController/remove', 0, 591835648936251392, 'system:ckMaterial:remove', 2, 'layui-icon layui-icon-delete', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (591835648936251396, '物资信息修改', '物资信息修改', '/CkMaterialController/edit', 0, 591835648936251392, 'system:ckMaterial:edit', 2, 'layui-icon layui-icon-edit', NULL, 0, 'admin', '2021-08-29 06:05:53', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (592059865673760768, '系统管理', NULL, '', 0, 0, '', 0, 'layui-icon layui-icon-home', 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (592167738407911424, '系统监控', '系统监控', '/ServiceController/view', 0, 617766548966211584, 'system:service:view', 1, 'fa fa-video-camera', 7, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (593045804411916288, '出库单管理', '出库单展示', '/CkOutOrderController/view', 0, 0, 'system:ckOutOrder:view', 1, 'layui-icon layui-icon layui-icon-face-smile', 100, 0, 'admin', '2021-09-01 13:59:30', 'admin', '2021-09-01 14:00:19', NULL);
INSERT INTO `t_sys_permission` VALUES (593045804411916289, '出库单集合', '出库单集合', '/CkOutOrderController/list', 0, 593045804411916288, 'system:ckOutOrder:list', 2, '', NULL, 0, 'admin', '2021-09-01 13:59:30', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (593045804411916290, '出库单添加', '出库单添加', '/CkOutOrderController/add', 0, 593045804411916288, 'system:ckOutOrder:add', 2, 'layui-icon layui-icon-add-1', NULL, 0, 'admin', '2021-09-01 13:59:30', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (593045804411916291, '出库单删除', '出库单删除', '/CkOutOrderController/remove', 0, 593045804411916288, 'system:ckOutOrder:remove', 2, 'layui-icon layui-icon-delete', NULL, 0, 'admin', '2021-09-01 13:59:30', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (593045804411916292, '出库单修改', '出库单修改', '/CkOutOrderController/edit', 0, 593045804411916288, 'system:ckOutOrder:edit', 2, 'layui-icon layui-icon-edit', NULL, 0, 'admin', '2021-09-01 13:59:30', NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (594691026430459904, '电子邮件管理', '电子邮件展示', '/EmailController/view', 0, 592059865673760768, 'system:email:view', 1, 'fa fa-envelope', 8, 1, NULL, NULL, 'admin', '2021-08-29 12:13:57', NULL);
INSERT INTO `t_sys_permission` VALUES (610635950447394816, '全局配置', '', '/autoCodeController/global', 0, 617766548966211584, 'system:autocode:global', 1, 'layui-icon fa fa-university', NULL, 0, NULL, NULL, 'admin', '2021-08-29 12:13:47', NULL);
INSERT INTO `t_sys_permission` VALUES (617766548966211584, '系统工具', NULL, '', 0, 0, '', 0, 'layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon-util', 5, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (618918631769636864, '字典管理', '字典类型表展示', '/DictTypeController/view', 0, 592059865673760768, 'system:dictType:view', 1, 'fa fa-puzzle-piece', 11, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (619836559427895296, '字典数据视图', '字典数据视图', '/DictDataController/view', 0, 618918631769636864, 'system:dictData:view', 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (1431849551353671682, '基础资料', NULL, '', 0, 0, '', 0, 'layui-icon layui-icon-template-1', 0, 0, 'admin', '2021-08-29 05:21:50', 'admin', '2021-08-29 10:01:09', NULL);
INSERT INTO `t_sys_permission` VALUES (1432320639397367810, '标签初始化', NULL, '', 0, 0, '', 0, 'layui-icon layui-icon-cellphone', 99, 0, 'admin', '2021-08-30 12:33:46', 'admin', '2021-08-30 12:34:06', NULL);
INSERT INTO `t_sys_permission` VALUES (1432321114532319234, '战备物资发卡', NULL, '/CkReserverController/view', 0, 1432320639397367810, 'system:ckReserver:view', 1, 'layui-icon ', 1, 0, 'admin', '2021-08-30 12:35:40', '', NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (1432321388932075521, '战备物资集合', NULL, '', 0, 1432321114532319234, 'system:ckReserver:list', 2, 'layui-icon ', 2, 0, 'admin', '2021-08-30 12:36:45', '', NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (1432321584080457730, '战备物资添加', NULL, '', 0, 1432321114532319234, 'system:ckReserver:add', 2, 'layui-icon layui-icon ', 2, 0, 'admin', '2021-08-30 12:37:32', 'admin', '2021-08-30 12:37:58', NULL);
INSERT INTO `t_sys_permission` VALUES (3303650266428252171, '公告集合', '公告集合', '/SysNoticeController/list', 0, 330365026642825216, 'gen:sysNotice:list', 2, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3303650266428252182, '公告添加', '公告添加', '/SysNoticeController/add', 0, 330365026642825216, 'gen:sysNotice:add', 2, 'entypo-plus-squared', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3303650266428252193, '公告删除', '公告删除', '/SysNoticeController/remove', 0, 330365026642825216, 'gen:sysNotice:remove', 2, 'entypo-trash', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3303650266428252204, '公告修改', '公告修改', '/SysNoticeController/edit', 0, 330365026642825216, 'gen:sysNotice:edit', 2, 'fa fa-wrench', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3321578609202995211, '定时任务调度表集合', '定时任务调度表集合', '/SysQuartzJobController/list', 0, 332157860920299520, 'gen:sysQuartzJob:list', 2, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3321578609202995222, '定时任务调度表添加', '定时任务调度表添加', '/SysQuartzJobController/add', 0, 332157860920299520, 'gen:sysQuartzJob:add', 2, 'entypo-plus-squared', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3321578609202995233, '定时任务调度表删除', '定时任务调度表删除', '/SysQuartzJobController/remove', 0, 332157860920299520, 'gen:sysQuartzJob:remove', 2, 'entypo-trash', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3321578609202995244, '定时任务调度表修改', '定时任务调度表修改', '/SysQuartzJobController/edit', 0, 332157860920299520, 'gen:sysQuartzJob:edit', 2, 'fa fa-wrench', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3328572814798397451, '定时任务调度日志表集合', '定时任务调度日志表集合', '/SysQuartzJobLogController/list', 0, 332857281479839744, 'gen:sysQuartzJobLog:list', 2, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3328572814798397473, '定时任务调度日志表删除', '定时任务调度日志表删除', '/SysQuartzJobLogController/remove', 0, 332857281479839744, 'gen:sysQuartzJobLog:remove', 2, 'entypo-trash', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3734899074291507211, '拦截url表集合', '拦截url表集合', '/SysInterUrlController/list', 0, 373489907429150720, 'gen:sysInterUrl:list', 2, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3734899074291507222, '拦截url表添加', '拦截url表添加', '/SysInterUrlController/add', 0, 373489907429150720, 'gen:sysInterUrl:add', 2, 'entypo-plus-squared', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3734899074291507233, '拦截url表删除', '拦截url表删除', '/SysInterUrlController/remove', 0, 373489907429150720, 'gen:sysInterUrl:remove', 2, 'entypo-trash', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (3734899074291507244, '拦截url表修改', '拦截url表修改', '/SysInterUrlController/edit', 0, 373489907429150720, 'gen:sysInterUrl:edit', 2, 'fa fa-wrench', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (4107917018594058251, '岗位表集合', '岗位集合', '/SysPositionController/list', 0, 410791701859405824, 'gen:sysPosition:list', 2, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (4107917018594058262, '岗位表添加', '岗位添加', '/SysPositionController/add', 0, 410791701859405824, 'gen:sysPosition:add', 2, 'entypo-plus-squared', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (4107917018594058273, '岗位表删除', '岗位删除', '/SysPositionController/remove', 0, 410791701859405824, 'gen:sysPosition:remove', 2, 'entypo-trash', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (4107917018594058284, '岗位表修改', '岗位修改', '/SysPositionController/edit', 0, 410791701859405824, 'gen:sysPosition:edit', 2, 'fa fa-wrench', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (4109898056992071691, '部门集合', '部门集合', '/SysDepartmentController/list', 0, 410989805699207168, 'gen:sysDepartment:list', 2, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (4109898056992071702, '部门添加', '部门添加', '/SysDepartmentController/add', 0, 410989805699207168, 'gen:sysDepartment:add', 2, 'entypo-plus-squared', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (4109898056992071713, '部门删除', '部门删除', '/SysDepartmentController/remove', 0, 410989805699207168, 'gen:sysDepartment:remove', 2, 'entypo-trash', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (4109898056992071724, '部门修改', '部门修改', '/SysDepartmentController/edit', 0, 410989805699207168, 'gen:sysDepartment:edit', 2, 'fa fa-wrench', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (5946910264304599041, '电子邮件集合', '电子邮件集合', '/EmailController/list', 0, 594691026430459904, 'system:email:list', 2, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (5946910264304599042, '电子邮件添加', '电子邮件添加', '/EmailController/add', 0, 594691026430459904, 'system:email:add', 2, 'entypo-plus-squared', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (5946910264304599043, '电子邮件删除', '电子邮件删除', '/EmailController/remove', 0, 594691026430459904, 'system:email:remove', 2, 'entypo-trash', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (5946910264304599044, '电子邮件修改', '电子邮件修改', '/EmailController/edit', 0, 594691026430459904, 'system:email:edit', 2, 'fa fa-wrench', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (6189186317738311681, '字典类型表集合', '字典类型表集合', '/DictTypeController/list', 0, 618918631769636864, 'system:dictType:list', 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (6189186317948026882, '字典类型表添加', '字典类型表添加', '/DictTypeController/add', 0, 618918631769636864, 'system:dictType:add', 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (6189186317948026883, '字典类型表删除', '字典类型表删除', '/DictTypeController/remove', 0, 618918631769636864, 'system:dictType:remove', 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (6189186317989969924, '字典类型表修改', '字典类型表修改', '/DictTypeController/edit', 0, 618918631769636864, 'system:dictType:edit', 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (6192095214866268161, '字典数据表集合', '字典数据表集合', '/DictDataController/list', 0, 618918631769636864, 'system:dictData:list', 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (6192095214866268162, '字典数据表添加', '字典数据表添加', '/DictDataController/add', 0, 618918631769636864, 'system:dictData:add', 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (6192095215075983363, '字典数据表删除', '字典数据表删除', '/DictDataController/remove', 0, 618918631769636864, 'system:dictData:remove', 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_permission` VALUES (6192095215075983364, '字典数据表修改', '字典数据表修改', '/DictDataController/edit', 0, 618918631769636864, 'system:dictData:edit', 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_permission_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission_role`;
CREATE TABLE `t_sys_permission_role` (
  `id` bigint NOT NULL COMMENT '主键',
  `role_id` bigint DEFAULT NULL COMMENT '角色id',
  `permission_id` bigint DEFAULT NULL COMMENT '权限id',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色权限中间表';

-- ----------------------------
-- Records of t_sys_permission_role
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_permission_role` VALUES (1431951412152770562, 1431849794153541634, 1431849551353671682, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412177936386, 1431849794153541634, 591835286116372480, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412182130690, 1431849794153541634, 591835286120566784, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412186324993, 1431849794153541634, 591835286120566785, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412190519297, 1431849794153541634, 591835286120566786, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412198907906, 1431849794153541634, 591835286120566787, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412198907907, 1431849794153541634, 591835431927156736, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412203102209, 1431849794153541634, 591835431927156737, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412203102210, 1431849794153541634, 591835431927156738, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412207296513, 1431849794153541634, 591835431927156739, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412211490818, 1431849794153541634, 591835431927156740, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412211490819, 1431849794153541634, 591835592719994880, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412215685122, 1431849794153541634, 591835592719994881, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412215685123, 1431849794153541634, 591835592719994882, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412219879425, 1431849794153541634, 591835592719994883, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412219879426, 1431849794153541634, 591835592719994884, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412224073730, 1431849794153541634, 591835648936251392, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412232462337, 1431849794153541634, 591835648936251393, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412236656641, 1431849794153541634, 591835648936251394, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412236656642, 1431849794153541634, 591835648936251395, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412240850946, 1431849794153541634, 591835648936251396, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412240850947, 1431849794153541634, 592059865673760768, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412240850948, 1431849794153541634, 330365026642825216, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412245045250, 1431849794153541634, 3303650266428252171, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412245045251, 1431849794153541634, 3303650266428252182, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412249239553, 1431849794153541634, 3303650266428252193, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412253433857, 1431849794153541634, 3303650266428252204, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412257628161, 1431849794153541634, 411522822607867904, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412257628162, 1431849794153541634, 4, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412261822466, 1431849794153541634, 486690002869157888, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412261822467, 1431849794153541634, 5, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412270211074, 1431849794153541634, 6, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412270211075, 1431849794153541634, 7, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412270211076, 1431849794153541634, 8, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412274405378, 1431849794153541634, 9, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412278599682, 1431849794153541634, 10, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412278599683, 1431849794153541634, 11, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412282793985, 1431849794153541634, 12, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412286988290, 1431849794153541634, 13, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412286988291, 1431849794153541634, 14, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412291182593, 1431849794153541634, 15, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412291182594, 1431849794153541634, 16, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412295376898, 1431849794153541634, 17, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412299571201, 1431849794153541634, 18, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412299571202, 1431849794153541634, 410791701859405824, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412303765505, 1431849794153541634, 4107917018594058251, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412303765506, 1431849794153541634, 4107917018594058262, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412307959809, 1431849794153541634, 4107917018594058273, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412307959810, 1431849794153541634, 4107917018594058284, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412312154113, 1431849794153541634, 410989805699207168, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412316348417, 1431849794153541634, 4109898056992071691, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412320542721, 1431849794153541634, 4109898056992071702, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412328931330, 1431849794153541634, 4109898056992071713, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1431951412383457281, 1431849794153541634, 4109898056992071724, 'admin', '2021-08-29 12:06:36', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222703292417, 488243256161730560, 1431849551353671682, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222711681025, 488243256161730560, 591835286116372480, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222711681026, 488243256161730560, 591835286120566785, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222711681027, 488243256161730560, 591835286120566784, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222711681028, 488243256161730560, 591835286120566786, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222711681029, 488243256161730560, 591835286120566787, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222720069633, 488243256161730560, 591835648936251392, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222720069634, 488243256161730560, 591835648936251396, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222720069635, 488243256161730560, 591835648936251395, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222720069636, 488243256161730560, 591835648936251394, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222724263938, 488243256161730560, 591835648936251393, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222724263939, 488243256161730560, 591835592719994880, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222724263940, 488243256161730560, 591835592719994883, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222724263941, 488243256161730560, 591835592719994884, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222724263942, 488243256161730560, 591835592719994882, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222728458241, 488243256161730560, 591835592719994881, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222728458242, 488243256161730560, 591835431927156736, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222728458243, 488243256161730560, 591835431927156740, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222728458244, 488243256161730560, 591835431927156739, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222728458245, 488243256161730560, 591835431927156738, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222728458246, 488243256161730560, 591835431927156737, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222728458247, 488243256161730560, 592059865673760768, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222728458248, 488243256161730560, 496126970468237312, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222736846849, 488243256161730560, 496127794879660032, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222736846850, 488243256161730560, 496127240363311104, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222736846851, 488243256161730560, 330365026642825216, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222741041154, 488243256161730560, 3303650266428252204, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222741041155, 488243256161730560, 3303650266428252193, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222741041156, 488243256161730560, 3303650266428252182, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222741041157, 488243256161730560, 3303650266428252171, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222741041158, 488243256161730560, 618918631769636864, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222741041159, 488243256161730560, 6192095214866268161, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222741041160, 488243256161730560, 6189186317948026883, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222749429762, 488243256161730560, 6189186317989969924, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222749429763, 488243256161730560, 6192095214866268162, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222749429764, 488243256161730560, 6192095215075983363, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222753624066, 488243256161730560, 619836559427895296, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222753624067, 488243256161730560, 6192095215075983364, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222753624068, 488243256161730560, 6189186317738311681, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222757818369, 488243256161730560, 6189186317948026882, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222762012673, 488243256161730560, 411522822607867904, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222762012674, 488243256161730560, 4, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222762012675, 488243256161730560, 486690002869157888, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222762012676, 488243256161730560, 8, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222766206978, 488243256161730560, 7, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222766206979, 488243256161730560, 6, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222766206980, 488243256161730560, 5, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222766206981, 488243256161730560, 9, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222770401281, 488243256161730560, 13, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222770401282, 488243256161730560, 12, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222770401283, 488243256161730560, 11, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222774595586, 488243256161730560, 10, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222774595587, 488243256161730560, 14, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222774595588, 488243256161730560, 17, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222774595589, 488243256161730560, 18, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222774595590, 488243256161730560, 16, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222778789889, 488243256161730560, 15, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222778789890, 488243256161730560, 410791701859405824, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222778789891, 488243256161730560, 4107917018594058284, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222778789892, 488243256161730560, 4107917018594058273, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222782984193, 488243256161730560, 4107917018594058262, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222782984194, 488243256161730560, 4107917018594058251, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222782984195, 488243256161730560, 410989805699207168, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222782984196, 488243256161730560, 4109898056992071724, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222787178497, 488243256161730560, 4109898056992071713, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222787178498, 488243256161730560, 4109898056992071702, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222787178499, 488243256161730560, 4109898056992071691, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222787178500, 488243256161730560, 617766548966211584, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222791372802, 488243256161730560, 581541547099553792, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222791372803, 488243256161730560, 592167738407911424, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222791372804, 488243256161730560, 610635950447394816, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222791372805, 488243256161730560, 1432320639397367810, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222791372806, 488243256161730560, 1432321114532319234, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222795567105, 488243256161730560, 1432321388932075521, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222795567106, 488243256161730560, 1432321584080457730, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222795567107, 488243256161730560, 593045804411916288, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222799761410, 488243256161730560, 593045804411916292, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222799761411, 488243256161730560, 593045804411916291, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222799761412, 488243256161730560, 593045804411916290, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
INSERT INTO `t_sys_permission_role` VALUES (1433067222799761413, 488243256161730560, 593045804411916289, 'admin', '2021-09-01 14:00:26', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_position
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_position`;
CREATE TABLE `t_sys_position` (
  `id` bigint NOT NULL COMMENT '主键',
  `post_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '岗位名称',
  `order_num` int DEFAULT NULL COMMENT '排序',
  `status` int DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='岗位表';

-- ----------------------------
-- Records of t_sys_position
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_position` VALUES (410792368778907648, '总经理', 1, 1, NULL, NULL, 'admin', '2021-08-29 12:40:58', NULL);
INSERT INTO `t_sys_position` VALUES (410792443127140352, '技术经理', 2, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_position` VALUES (410792478929719296, '人事经理', 3, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_position` VALUES (411477874382606336, '员工', 4, 1, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_province
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_province`;
CREATE TABLE `t_sys_province` (
  `id` bigint NOT NULL COMMENT '主键',
  `province_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份代码',
  `province_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份名称',
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简称',
  `lng` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '纬度',
  `sort` int DEFAULT NULL COMMENT '排序',
  `data_state` bigint DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index_1` (`province_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='省份表';

-- ----------------------------
-- Records of t_sys_province
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_province` VALUES (22, '500000', '重庆', '重庆', '106.504959', '29.533155', 22, 0, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_quartz_job`;
CREATE TABLE `t_sys_quartz_job` (
  `id` bigint NOT NULL COMMENT '主键',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '任务组名',
  `invoke_target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cron执行表达式',
  `misfire_policy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cron计划策略',
  `concurrent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否并发执行（0允许 1禁止）',
  `status` int DEFAULT NULL COMMENT '任务状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度表';

-- ----------------------------
-- Records of t_sys_quartz_job
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_quartz_job` VALUES (332182389491109888, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', '*/5 * * * * ?', '2', '0', 1, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_quartz_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_quartz_job_log`;
CREATE TABLE `t_sys_quartz_job_log` (
  `id` bigint NOT NULL COMMENT '主键',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '任务组名',
  `invoke_target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '调用目标字符串',
  `job_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日志信息',
  `status` int DEFAULT NULL COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '异常信息',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of t_sys_quartz_job_log
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_quartz_job_log` VALUES (333610566486724608, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2019-09-17 00:16:07', '2019-09-17 00:16:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (333610572270669824, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2019-09-17 00:16:09', '2019-09-17 00:16:09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (354984595927732224, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', 0, NULL, '2019-11-14 23:48:53', '2019-11-14 23:48:53', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (354990312722141184, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2019-11-15 00:11:36', '2019-11-15 00:11:36', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (354996339316232192, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', 0, NULL, '2019-11-15 00:35:33', '2019-11-15 00:35:33', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421274211356672, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', 0, NULL, '2020-04-29 18:22:40', '2020-04-29 18:22:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421274303631360, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:22:40', '2020-04-29 18:22:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421274324602880, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:22:40', '2020-04-29 18:22:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421274366545920, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:22:40', '2020-04-29 18:22:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421315554611200, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:22:50', '2020-04-29 18:22:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421357501845504, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:23:00', '2020-04-29 18:23:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421399453274112, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:23:10', '2020-04-29 18:23:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421441375342592, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:23:20', '2020-04-29 18:23:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421483351937024, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2020-04-29 18:23:30', '2020-04-29 18:23:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421525257228288, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:23:40', '2020-04-29 18:23:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421567233822720, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:23:50', '2020-04-29 18:23:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421609130725376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:24:00', '2020-04-29 18:24:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421648662040576, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:24:09', '2020-04-29 18:24:09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421651073765376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:24:10', '2020-04-29 18:24:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421693041971200, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:24:20', '2020-04-29 18:24:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421734959845376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:24:30', '2020-04-29 18:24:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421776974188544, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:24:40', '2020-04-29 18:24:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421818862702592, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:24:50', '2020-04-29 18:24:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421860805742592, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:25:00', '2020-04-29 18:25:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415421902736199680, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:25:10', '2020-04-29 18:25:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423552540512256, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', 0, NULL, '2020-04-29 18:31:43', '2020-04-29 18:31:43', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423552636981248, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:31:43', '2020-04-29 18:31:43', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423552670535680, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:31:43', '2020-04-29 18:31:43', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423552687312896, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:31:43', '2020-04-29 18:31:43', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423552716673024, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:31:43', '2020-04-29 18:31:43', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423552741838848, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:31:43', '2020-04-29 18:31:43', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423559536611328, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:31:45', '2020-04-29 18:31:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423580482965504, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:31:50', '2020-04-29 18:31:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423601454485504, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:31:55', '2020-04-29 18:31:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423622405033984, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:32:00', '2020-04-29 18:32:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423643372359680, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:32:05', '2020-04-29 18:32:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423664343879680, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:10', '2020-04-29 18:32:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423685311205376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:15', '2020-04-29 18:32:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423706328862720, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:20', '2020-04-29 18:32:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423727325548544, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:25', '2020-04-29 18:32:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423748250931200, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:30', '2020-04-29 18:32:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423769188896768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:35', '2020-04-29 18:32:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423790227525632, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:40', '2020-04-29 18:32:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423811190657024, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:32:45', '2020-04-29 18:32:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423832178954240, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:32:50', '2020-04-29 18:32:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423853100142592, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:55', '2020-04-29 18:32:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423874054885376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:33:00', '2020-04-29 18:33:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423895026405376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:33:05', '2020-04-29 18:33:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423916002119680, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:33:10', '2020-04-29 18:33:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423937015582720, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:33:15', '2020-04-29 18:33:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423957970325504, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:33:20', '2020-04-29 18:33:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423978925068288, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:33:25', '2020-04-29 18:33:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415423999942725632, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:33:30', '2020-04-29 18:33:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424020889079808, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:33:35', '2020-04-29 18:33:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424041894154240, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:33:40', '2020-04-29 18:33:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424062844702720, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:33:45', '2020-04-29 18:33:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424083803639808, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:33:50', '2020-04-29 18:33:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424104754188288, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:33:55', '2020-04-29 18:33:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424125746679808, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:34:00', '2020-04-29 18:34:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424146726588416, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:05', '2020-04-29 18:34:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424167727468544, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:10', '2020-04-29 18:34:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424188678017024, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:15', '2020-04-29 18:34:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424209636954112, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:20', '2020-04-29 18:34:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424230595891200, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:34:25', '2020-04-29 18:34:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424251567411200, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:30', '2020-04-29 18:34:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424272559902720, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:35', '2020-04-29 18:34:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424293518839808, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:40', '2020-04-29 18:34:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424314507137024, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:45', '2020-04-29 18:34:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424335436713984, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:34:50', '2020-04-29 18:34:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424356404039680, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:34:55', '2020-04-29 18:34:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424377396531200, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:35:00', '2020-04-29 18:35:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424398414188544, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:05', '2020-04-29 18:35:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424419326988288, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:35:10', '2020-04-29 18:35:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424440332062720, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:35:15', '2020-04-29 18:35:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424461282611200, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:20', '2020-04-29 18:35:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424482254131200, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:25', '2020-04-29 18:35:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424503200485376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:30', '2020-04-29 18:35:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424524163616768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:35', '2020-04-29 18:35:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424545135136768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:40', '2020-04-29 18:35:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424566148599808, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:35:45', '2020-04-29 18:35:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424587103342592, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:50', '2020-04-29 18:35:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424608150360064, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:35:55', '2020-04-29 18:35:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424629029605376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:36:00', '2020-04-29 18:36:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424650072428544, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:05', '2020-04-29 18:36:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424671035559936, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:10', '2020-04-29 18:36:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424691981914112, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:15', '2020-04-29 18:36:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424712961822720, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:20', '2020-04-29 18:36:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424733899788288, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:25', '2020-04-29 18:36:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424754862919680, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:30', '2020-04-29 18:36:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424775888965632, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:36:35', '2020-04-29 18:36:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424796797571072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:36:40', '2020-04-29 18:36:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424817836199936, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:36:45', '2020-04-29 18:36:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424838769971200, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:36:50', '2020-04-29 18:36:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424859741491200, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:55', '2020-04-29 18:36:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424880696233984, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:37:00', '2020-04-29 18:37:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424901705502720, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:37:05', '2020-04-29 18:37:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424922681217024, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:37:10', '2020-04-29 18:37:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424943690485760, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:37:15', '2020-04-29 18:37:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424964632645632, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:37:20', '2020-04-29 18:37:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415424985562222592, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:37:25', '2020-04-29 18:37:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425006516965376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:37:30', '2020-04-29 18:37:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425027484291072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:37:35', '2020-04-29 18:37:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425048476782592, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2020-04-29 18:37:40', '2020-04-29 18:37:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425069427331072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:37:45', '2020-04-29 18:37:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425090436599808, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:37:50', '2020-04-29 18:37:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425111412314112, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:37:55', '2020-04-29 18:37:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425132354473984, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:38:00', '2020-04-29 18:38:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425153334382592, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:38:05', '2020-04-29 18:38:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425174335262720, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:38:10', '2020-04-29 18:38:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425195290005504, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:38:15', '2020-04-29 18:38:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425216248942592, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:38:20', '2020-04-29 18:38:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425237224656896, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2020-04-29 18:38:25', '2020-04-29 18:38:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425258200371200, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:38:30', '2020-04-29 18:38:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425279192862720, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:38:35', '2020-04-29 18:38:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425300126633984, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:38:40', '2020-04-29 18:38:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425321089765376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:38:45', '2020-04-29 18:38:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425342082256896, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:38:50', '2020-04-29 18:38:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425363041193984, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:38:55', '2020-04-29 18:38:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425384000131072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:00', '2020-04-29 18:39:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425404967456768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:05', '2020-04-29 18:39:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425425997697024, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:39:10', '2020-04-29 18:39:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425446956634112, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:15', '2020-04-29 18:39:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425467902988288, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:20', '2020-04-29 18:39:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425488866119680, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:25', '2020-04-29 18:39:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425509825056768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:39:30', '2020-04-29 18:39:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425530800771072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:39:35', '2020-04-29 18:39:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425551768096768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:40', '2020-04-29 18:39:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425572743811072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:39:45', '2020-04-29 18:39:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425593706942464, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:50', '2020-04-29 18:39:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425614678462464, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:55', '2020-04-29 18:39:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425635654176768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:40:00', '2020-04-29 18:40:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425656629891072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:40:05', '2020-04-29 18:40:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425677597216768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:40:10', '2020-04-29 18:40:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425698568736768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:40:15', '2020-04-29 18:40:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425719540256768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:40:20', '2020-04-29 18:40:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425740515971072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:40:25', '2020-04-29 18:40:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425761487491072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:40:30', '2020-04-29 18:40:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425782454816768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:40:35', '2020-04-29 18:40:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425803430531072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:40:40', '2020-04-29 18:40:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425824397856768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:40:45', '2020-04-29 18:40:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425845373571072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:40:50', '2020-04-29 18:40:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425866340896768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:40:55', '2020-04-29 18:40:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425887312416768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:00', '2020-04-29 18:41:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425908283936768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:05', '2020-04-29 18:41:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425929255456768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:41:10', '2020-04-29 18:41:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425950226976768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:15', '2020-04-29 18:41:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425971198496768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:20', '2020-04-29 18:41:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415425992165822464, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:25', '2020-04-29 18:41:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426013141536768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:30', '2020-04-29 18:41:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426034117251072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:41:35', '2020-04-29 18:41:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426055088771072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:40', '2020-04-29 18:41:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426076056096768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:45', '2020-04-29 18:41:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426117479043072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', 0, NULL, '2020-04-29 18:41:51', '2020-04-29 18:41:51', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426138983239680, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:42:00', '2020-04-29 18:42:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426180909502464, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:42:10', '2020-04-29 18:42:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426222856736768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:42:20', '2020-04-29 18:42:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426264799776768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:42:30', '2020-04-29 18:42:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426306742816768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:42:40', '2020-04-29 18:42:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426348685856768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:42:50', '2020-04-29 18:42:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426390633091072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:43:00', '2020-04-29 18:43:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426432580325376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:43:10', '2020-04-29 18:43:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426453539262464, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:43:15', '2020-04-29 18:43:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426474519171072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2020-04-29 18:43:20', '2020-04-29 18:43:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426495486496768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:43:25', '2020-04-29 18:43:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426516462211072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:43:30', '2020-04-29 18:43:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426537437925376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:43:35', '2020-04-29 18:43:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426558417833984, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:43:40', '2020-04-29 18:43:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426579372576768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:43:45', '2020-04-29 18:43:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426600344096768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:43:50', '2020-04-29 18:43:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426789146497024, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', 0, NULL, '2020-04-29 18:44:35', '2020-04-29 18:44:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426810071879680, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:44:40', '2020-04-29 18:44:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426831039205376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:44:45', '2020-04-29 18:44:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426851998142464, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:44:50', '2020-04-29 18:44:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426872982245376, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:44:55', '2020-04-29 18:44:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426894041845760, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:45:00', '2020-04-29 18:45:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426914921091072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:45:05', '2020-04-29 18:45:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426935888416768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:45:10', '2020-04-29 18:45:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426956864131072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:45:15', '2020-04-29 18:45:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415426977835651072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:45:20', '2020-04-29 18:45:20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415427019774496768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:45:30', '2020-04-29 18:45:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415427061713342464, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:45:40', '2020-04-29 18:45:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (415427103660576768, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:45:50', '2020-04-29 18:45:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503199187412848640, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：45毫秒', 0, NULL, '2020-12-27 15:40:45', '2020-12-27 15:40:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503200830422388736, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：37毫秒', 0, NULL, '2020-12-27 15:47:17', '2020-12-27 15:47:17', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503205708326637568, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：148毫秒', 0, NULL, '2020-12-27 16:06:40', '2020-12-27 16:06:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503205749506314240, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：10毫秒', 0, NULL, '2020-12-27 16:06:50', '2020-12-27 16:06:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503205791440965632, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', 0, NULL, '2020-12-27 16:07:00', '2020-12-27 16:07:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503205917249114112, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：7毫秒', 0, NULL, '2020-12-27 16:07:30', '2020-12-27 16:07:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503205959217319936, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：8毫秒', 0, NULL, '2020-12-27 16:07:40', '2020-12-27 16:07:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503218856400130048, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：39毫秒', 0, NULL, '2020-12-27 16:58:55', '2020-12-27 16:58:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503222358929182720, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2020-12-27 17:12:50', '2020-12-27 17:12:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503222379850371072, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-12-27 17:12:55', '2020-12-27 17:12:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503222442806874112, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', 0, NULL, '2020-12-27 17:13:10', '2020-12-27 17:13:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503222463786782720, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2020-12-27 17:13:15', '2020-12-27 17:13:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503222842696011776, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', 0, NULL, '2020-12-27 17:14:45', '2020-12-27 17:14:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503222862266634240, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', 0, NULL, '2020-12-27 17:14:50', '2020-12-27 17:14:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503222883204599808, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', 0, NULL, '2020-12-27 17:14:55', '2020-12-27 17:14:55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503222904176119808, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', 1, 'ewrwerwer', '2020-12-27 17:15:00', '2020-12-30 17:15:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_quartz_job_log` VALUES (503236547471085568, 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：37毫秒', 0, NULL, '2020-12-27 18:09:13', '2020-12-27 18:09:13', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` bigint NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_role` VALUES (488243256161730560, '管理员', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_role` VALUES (1431849794153541634, '战备区管理员', 'admin', '2021-08-29 05:22:48', '', NULL, NULL);
INSERT INTO `t_sys_role` VALUES (1431961015666200577, '出货员', 'admin', '2021-08-29 12:44:45', '', NULL, NULL);
INSERT INTO `t_sys_role` VALUES (1431961062277500929, '入货员', 'admin', '2021-08-29 12:44:56', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_user`;
CREATE TABLE `t_sys_role_user` (
  `id` bigint NOT NULL COMMENT '主键',
  `sys_user_id` bigint DEFAULT NULL COMMENT '用户id',
  `sys_role_id` bigint DEFAULT NULL COMMENT '角色id',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户角色中间表';

-- ----------------------------
-- Records of t_sys_role_user
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_role_user` VALUES (353711021275353089, 353711021275353088, 488289006124007424, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_role_user` VALUES (353714370687143936, 488294747442511872, 488289006124007424, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_role_user` VALUES (354984037766533120, 354984005751410688, 488243256161730560, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_role_user` VALUES (354988722443390977, 354988722443390976, 488243256161730560, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_role_user` VALUES (354989789679849472, 354989789675655168, 488305788310257664, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_role_user` VALUES (495571139645542400, 1, 488243256161730560, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_role_user` VALUES (612107905532952576, 612107905532952576, 488289006124007424, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_role_user` VALUES (612107905537146880, 612107905532952576, 488305788310257664, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_sys_role_user` VALUES (1431850146420551682, 1431846614304878594, 1431849794153541634, 'admin', '2021-08-29 05:24:12', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_street
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_street`;
CREATE TABLE `t_sys_street` (
  `id` bigint NOT NULL COMMENT '主键',
  `street_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '街道代码',
  `area_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父级区代码',
  `street_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '街道名称',
  `short_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简称',
  `lng` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '纬度',
  `sort` int DEFAULT NULL COMMENT '排序',
  `data_state` int DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index_1` (`street_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='街道设置';

-- ----------------------------
-- Records of t_sys_street
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` bigint NOT NULL COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '头像路径',
  `dep_id` bigint DEFAULT NULL COMMENT '部门id',
  `pos_id` bigint DEFAULT NULL COMMENT '岗位id',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_user` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', '00', 'test@foxmail.com', '18688888888', '0', '', 2, 410792368778907648, 'admin', '2021-08-29 04:58:26', NULL, NULL, NULL);
INSERT INTO `t_sys_user` VALUES (1431846614304878594, 'zgrmjfj', 'e10adc3949ba59abbe56e057f20f883e', '中国人民解放军', '00', '13800138000@139.com', '13800138000', '0', '', 1, 410792368778907648, 'admin', '2021-08-29 05:10:10', 'admin', '2021-08-29 05:24:12', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test` (
  `id` bigint NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `age` int DEFAULT NULL COMMENT '年龄',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `t_cb_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '写个字符串',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='测试表';

-- ----------------------------
-- Records of t_test
-- ----------------------------
BEGIN;
INSERT INTO `t_test` VALUES (457067146405613568, '管理员', 2, '1', '2021-01-14 16:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_test` VALUES (457067174939463680, '法院用户', 2, '1', '2021-01-12 16:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_test` VALUES (457067196175224832, 'guest', 1, '3', '2021-01-02 16:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_test` VALUES (457067220279889920, 'helloword', 1, '3', '2021-01-03 16:00:00', NULL, NULL, NULL, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
