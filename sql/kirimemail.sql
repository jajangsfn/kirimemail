/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : kirimemail

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 02/09/2020 08:40:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for covid
-- ----------------------------
DROP TABLE IF EXISTS `covid`;
CREATE TABLE `covid`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_province` int(11) NULL DEFAULT NULL,
  `summary` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of covid
-- ----------------------------
INSERT INTO `covid` VALUES (8, 1, 2030);
INSERT INTO `covid` VALUES (10, 3, 350);
INSERT INTO `covid` VALUES (11, 4, 1569);
INSERT INTO `covid` VALUES (12, 2, 2300);

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, 'Jawa Barat');
INSERT INTO `province` VALUES (2, 'DKI Jakarta');
INSERT INTO `province` VALUES (3, 'Jawa Tengah');
INSERT INTO `province` VALUES (4, 'Jawa Timur');

SET FOREIGN_KEY_CHECKS = 1;
