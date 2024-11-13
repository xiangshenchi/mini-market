/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : wmsadmin

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 23/02/2023 10:44:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `roles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('12598638-f94f-46af-88e5-b87b40b55bf5', '2023-02-15 21:00:06', 'lop@qq.com', '123456', '');
INSERT INTO `admin` VALUES ('20b81c11-0881-4f3a-9bfe-3df6c25d5921', '2022-11-28 13:52:15', 'abc@qq.com', '123456', 'ROLE_SUPER_ADMIN');
INSERT INTO `admin` VALUES ('37ecf396-cf13-44a6-9715-6d14e8643fb6', '2022-12-18 11:28:21', 'admin@qq.com', '123456', 'ROLE_EMPLOYEE;ROLE_WAREHOUSE;ROLE_SALE;ROLE_COMMODITY;ROLE_ADMIN;ROLE_SUPER_ADMIN');
INSERT INTO `admin` VALUES ('38eb6904-785c-4e3a-a386-2dc2b9d92204', '2022-11-27 20:15:04', 'jiegod_8ck@126.com', '123456', 'ROLE_ADMIN;ROLE_SUPER_ADMIN');
INSERT INTO `admin` VALUES ('3f33b767-d6cd-4736-9a51-6c1ff27e0663', '2023-02-20 20:00:08', 'lop@qq.com', '123456', 'ROLE_SUPER_ADMIN');
INSERT INTO `admin` VALUES ('6462544b-50cc-4638-9f14-c81f63188fc2', '2022-11-29 20:25:48', 'cccccc@qq.com', '123456', 'ROLE_SUPER_ADMIN');
INSERT INTO `admin` VALUES ('b20814b6-d955-4563-9164-95415d2450f6', '2022-11-24 23:58:04', '1402014577@qq.com', '123456', 'ROLE_SUPER_ADMIN');
INSERT INTO `admin` VALUES ('b2297ef7-fe6e-41da-92a9-030ef30b6daf', '2023-01-11 13:42:38', '123@qq.com', '123456', 'ROLE_SUPER_ADMIN');

-- ----------------------------
-- Table structure for code
-- ----------------------------
DROP TABLE IF EXISTS `code`;
CREATE TABLE `code`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `exp` bigint(0) NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of code
-- ----------------------------
INSERT INTO `code` VALUES ('1402014577@qq.com', 1669615938121, '276237');
INSERT INTO `code` VALUES ('cccccc@qq.com', 1669725702342, '858227');

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `count` int(0) NOT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` double NOT NULL,
  `update_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1dade9ff-ba00-4f78-bd27-55771dc65061', 0, '2022-12-18 11:30:17', '商品简介', '抽纸', 9.99, NULL);
INSERT INTO `commodity` VALUES ('52fdac99-f224-469e-8af8-ed49c166bb23', 20, '2022-11-22 14:14:29', '搭载麒麟980芯片', 'HUWAI MATE 30 Pro', 4000, NULL);
INSERT INTO `commodity` VALUES ('5fcb392b-39aa-4381-b5ad-b1ccd8d5b74e', 20081, '2022-12-02 20:36:04', 'Mac笔记本', 'Mac', 7400, NULL);
INSERT INTO `commodity` VALUES ('91eb39e3-d664-4aa8-8826-750d0a45bc67', 0, '2022-12-14 17:45:04', '键盘', '青柚', 34, NULL);
INSERT INTO `commodity` VALUES ('b3a8f5a2-2dac-4194-b806-687b7f08e82f', 50, '2023-01-11 13:35:52', '商品简介', '鼠标', 9.99, NULL);
INSERT INTO `commodity` VALUES ('eda4215d-82d8-4a08-a3f3-981b19274006', 70, '2022-11-24 23:56:52', '商品简介', 'Apple', 40000, NULL);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for distribution
-- ----------------------------
DROP TABLE IF EXISTS `distribution`;
CREATE TABLE `distribution`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `care` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `did` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `driver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  `time` datetime(6) NULL DEFAULT NULL,
  `urgent` bit(1) NOT NULL,
  `vid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of distribution
-- ----------------------------
INSERT INTO `distribution` VALUES ('3036e2cf-28db-4d4c-b52d-5f590540b74b', 'sad', '冰柜冷藏, ', 'ea3bba9b-cda6-438d-b196-7c81e97b5040', '王五', '京A0000', 'sad', 2, '2022-11-09 13:09:23.000000', b'1', 'ce33de59-9584-4161-a17e-9046399d14c6');
INSERT INTO `distribution` VALUES ('77a6b6b9-682c-4aba-926b-6d7645895037', '2343', '注意易碎, ', 'ea3bba9b-cda6-438d-b196-7c81e97b5040', '王五', '京A0000', '234', 0, '2022-12-08 12:58:27.000000', b'1', 'ce33de59-9584-4161-a17e-9046399d14c6');
INSERT INTO `distribution` VALUES ('7c6c52fd-abbe-4505-a7c0-ea12f68ed6cb', 'asd345', '冰柜冷藏, ', 'ea3bba9b-cda6-438d-b196-7c81e97b5040', '王五', '京A0000', 'sd435345', 0, '2022-12-07 13:01:39.000000', b'1', 'ce33de59-9584-4161-a17e-9046399d14c6');
INSERT INTO `distribution` VALUES ('ae587e56-1d74-4edf-9707-ef7235eebd91', '324234', '冰柜冷藏, ', 'ea3bba9b-cda6-438d-b196-7c81e97b5040', '王五', '京A0000', '235352', 0, '2022-12-06 12:59:04.000000', b'1', 'ce33de59-9584-4161-a17e-9046399d14c6');
INSERT INTO `distribution` VALUES ('ff9bcb29-5e7b-4462-b789-a92576711ef7', 'asd', '冰柜冷藏, ', 'ea3bba9b-cda6-438d-b196-7c81e97b5040', '王五', '京A0000', 'sd', 0, '2022-12-07 13:01:39.000000', b'1', 'ce33de59-9584-4161-a17e-9046399d14c6');

-- ----------------------------
-- Table structure for driver
-- ----------------------------
DROP TABLE IF EXISTS `driver`;
CREATE TABLE `driver`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `driving` bit(1) NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `license` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of driver
-- ----------------------------
INSERT INTO `driver` VALUES ('a4a88363-a438-4847-a4bf-b25e6fa5ae6e', 'xxx', '2023-01-11 13:38:53', b'0', '男性', '423423424', 'xxx', '李四', '13793242563', '12', NULL);
INSERT INTO `driver` VALUES ('ea3bba9b-cda6-438d-b196-7c81e97b5040', '', '2022-11-27 12:26:46', b'0', '男性', '4412242003423345534', '34', '王五', '231325345345', '12', NULL);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('18d600a1-8184-43bc-b46d-11c66ff2561d', 'xxx', '2023-01-11 11:07:38', 'A号仓库', '男性', '434242341', '张师傅', '1373242363', NULL);
INSERT INTO `employee` VALUES ('8ba9bf53-7e1d-43ff-ab71-b9d6af299c26', '广州', '2022-12-18 11:38:16', 'A号仓库', '男性', '441253546456234', '王师傅', '13729532464', NULL);

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `count` int(0) NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('0ff7a831-0824-428d-b140-ab41de52d5a4', 'eda4215d-82d8-4a08-a3f3-981b19274006', 70, NULL, 'Apple', '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');
INSERT INTO `inventory` VALUES ('3c6f0c42-25e8-4ccb-b30a-2622d9740c87', '52fdac99-f224-469e-8af8-ed49c166bb23', 20, NULL, 'HUWAI MATE 30 Pro', '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');
INSERT INTO `inventory` VALUES ('ca7f8e97-1edf-4fc8-b9a1-783a7d053131', '5fcb392b-39aa-4381-b5ad-b1ccd8d5b74e', 20081, NULL, 'Mac', '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');
INSERT INTO `inventory` VALUES ('d9afc86f-a782-4d00-9300-78484f72c117', '2283b0a2-5e0b-4c1e-b651-d2e3b51b87ee', 80, NULL, '手机支架', '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');
INSERT INTO `inventory` VALUES ('e8e63bfa-be44-4cb8-abe3-0b6baf3159fa', 'b3a8f5a2-2dac-4194-b806-687b7f08e82f', 50, NULL, '鼠标', '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');

-- ----------------------------
-- Table structure for inventory_record
-- ----------------------------
DROP TABLE IF EXISTS `inventory_record`;
CREATE TABLE `inventory_record`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `count` int(0) NULL DEFAULT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL,
  `wid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory_record
-- ----------------------------
INSERT INTO `inventory_record` VALUES ('0327e497-6349-4a33-816e-38f680bd48f4', 'b3a8f5a2-2dac-4194-b806-687b7f08e82f', 100, '2023-01-11 13:36:27', 'xxx', '鼠标', 1, '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');
INSERT INTO `inventory_record` VALUES ('2c141734-d0d0-4f4e-bf66-ae60667f0709', 'eda4215d-82d8-4a08-a3f3-981b19274006', 20, '2022-11-25 00:01:09', 'ss', 'Apple', 1, '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');
INSERT INTO `inventory_record` VALUES ('4197fbfb-78a5-4cae-b825-955099da1943', '52fdac99-f224-469e-8af8-ed49c166bb23', 20, '2022-11-22 14:16:57', '', 'HUWAI MATE 30 Pro', 1, '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');
INSERT INTO `inventory_record` VALUES ('51f8cee5-a238-41dc-b031-40b05cd83abf', '2283b0a2-5e0b-4c1e-b651-d2e3b51b87ee', 100, '2023-01-11 11:06:12', 'xxxxx', '手机支架', 1, '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');
INSERT INTO `inventory_record` VALUES ('6ff4d4dc-326c-4fd3-a782-06b799f9931a', '5fcb392b-39aa-4381-b5ad-b1ccd8d5b74e', 21312, '2022-12-02 20:36:52', '213', 'Mac', 1, '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');
INSERT INTO `inventory_record` VALUES ('b1bdf63a-3c77-45b6-8841-8d149986f709', '5fcb392b-39aa-4381-b5ad-b1ccd8d5b74e', 1231, '2022-12-02 20:37:18', '123', 'Mac', -1, '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');
INSERT INTO `inventory_record` VALUES ('b49e8ba9-30c8-4794-ab1f-c807c5dbc8c2', '2283b0a2-5e0b-4c1e-b651-d2e3b51b87ee', 20, '2023-01-11 11:08:25', 'xxxx', '手机支架', -1, '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');
INSERT INTO `inventory_record` VALUES ('e99dd646-bbd0-42d9-a315-72d081af8544', 'b3a8f5a2-2dac-4194-b806-687b7f08e82f', 50, '2023-01-11 13:39:15', '50', '鼠标', -1, '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');
INSERT INTO `inventory_record` VALUES ('fa51e39c-f210-4bcf-928f-e1036c6bdffb', 'eda4215d-82d8-4a08-a3f3-981b19274006', 50, '2023-01-11 09:27:00', '入库苹果手机', 'Apple', 1, '9f2a2784-e182-4fdf-85e8-c3bde6d539d2');

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date` datetime(6) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('121ae1ef-be5d-443a-b1de-6578302d9934', 'Chrome', '2022-12-06 15:05:58.830000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('1af75d04-fca0-49a1-89d7-95aa9212a24d', 'Chrome', '2022-12-17 23:15:17.620000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('1cd90c0f-8b99-40b9-9778-e667c30d9bbf', 'Chrome', '2022-12-18 11:28:31.718000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('36b25d1b-ba49-4673-abd0-16a136930305', 'Chrome', '2022-12-14 19:56:04.265000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('3f9b2ecf-fac0-4f52-aa7f-0a202f09a841', 'Chrome', '2022-12-19 13:10:24.253000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('40b51d68-749e-4859-b72f-45fc635f9d0a', 'Chrome', '2022-12-13 12:00:23.181000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('4c3fe589-07c2-4003-b463-dfd5f96d6722', 'Chrome', '2023-02-03 10:08:02.093000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('6cbe1050-6f2b-4b70-b761-e7997e01a9dc', 'Chrome', '2023-01-11 13:34:48.773000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('85301f24-d3e7-4349-8d2b-27c3ac3ee0d2', 'Chrome', '2022-12-13 14:26:11.472000', 'abc@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('879f7917-8182-4b98-94d3-081a9497e89b', 'Chrome', '2022-12-18 11:27:24.102000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('8915ba3f-74dc-434b-af25-cf07dac74ded', 'Chrome', '2022-12-12 23:37:24.703000', 'admin@qq.com', '127.0.0.1', 0);
INSERT INTO `login_log` VALUES ('899f8c58-0d5b-46e0-a784-1c3f448719e7', 'Chrome', '2022-12-17 23:47:52.145000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('8d46124b-548e-4f8c-8719-56cf3226c55b', 'Chrome', '2022-12-18 17:09:53.910000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('917934f4-9f8e-48aa-b59e-d174248ed7b6', 'Chrome', '2023-02-16 10:30:12.742000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('93467357-7699-42f2-957b-a0a1a4cdc13d', 'Chrome', '2022-12-06 15:34:35.701000', 'adc@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('93b213c5-e2ec-4558-af3e-12b2bc8f5217', 'Chrome', '2022-12-14 17:51:18.412000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('947b62e7-aeb1-46c3-9b0b-8e257cc72aac', 'Chrome', '2023-01-11 10:15:23.854000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('9482f3dd-7e8a-444b-ae95-596076056592', 'Chrome', '2022-12-12 23:37:31.175000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('97db4f45-e842-4822-9410-54fb04bfb042', 'Chrome', '2022-12-17 11:47:49.852000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('9961cc66-63ad-47c6-9c1e-c81cb08ed949', 'Chrome', '2023-02-15 20:57:44.695000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('9d827736-01fd-4d3e-b971-4554944c9356', 'Chrome', '2022-12-17 23:06:03.771000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('a149603d-ac88-4b85-a860-188036776615', 'Chrome', '2023-01-11 13:43:06.172000', '123@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('a82f5725-da5d-49b3-b7b5-90b544ae1296', 'Chrome', '2023-01-11 09:22:38.737000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('b30b9c6f-251b-49a1-9835-c8536f5c23bb', 'Chrome', '2022-12-12 23:36:42.313000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('b965a1cb-a354-41db-8099-b217505c4dc4', 'Chrome', '2022-12-06 15:10:23.878000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('c1f7f2e3-6355-4c91-91f2-58cacae7e463', 'Chrome', '2023-01-11 09:10:50.767000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('c7e666b4-bdac-45e8-8731-05f3274f7787', 'Chrome', '2022-12-14 17:37:48.504000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('ca38e16e-ba6f-45e7-8a46-fb78abbbf9cc', 'Chrome', '2023-02-03 09:43:42.628000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('cbf4e04f-2d40-4384-87dd-7767ae103c6b', 'Chrome', '2022-12-06 15:09:47.524000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('cc34263b-7082-4e24-805f-947d289c3c61', 'Chrome', '2023-02-20 19:50:49.392000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('d55f21f4-01e6-45a5-abb9-a9d61de1f4da', 'Chrome', '2023-02-20 19:50:41.017000', 'admin@qq.com', '127.0.0.1', 0);
INSERT INTO `login_log` VALUES ('e1a5b794-2f16-4bf3-8db1-924755326af0', 'Chrome', '2022-12-17 23:33:24.419000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('e6678543-7f24-4c3f-ba66-96bf97f83243', 'Chrome', '2022-12-06 15:31:35.868000', 'adc@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('ea676457-0dde-4e7b-8fec-e01837c12333', 'Chrome', '2023-01-11 09:20:22.825000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('eaa7939a-833a-487e-81c9-10ad128f1d93', 'Chrome', '2022-12-02 20:27:24.135000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('eb531c48-ea7b-4ef3-9517-1224c26f62e8', 'Chrome', '2022-12-18 11:37:31.447000', 'abc@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('f32bc9de-3d76-4db9-8d71-96d6ef145dca', 'Chrome', '2022-12-12 13:54:11.044000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('f719c3e7-1547-43ee-8416-a9939c504f6f', 'Chrome', '2022-12-13 14:25:14.960000', 'jack@qq.com', '127.0.0.1', 0);
INSERT INTO `login_log` VALUES ('f8384696-b37a-4f1b-9456-1f224427cf25', 'Chrome', '2022-12-18 10:54:04.371000', 'admin@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('f97fd7af-5a59-42ad-bbfb-b5fd065c0c1f', 'Chrome', '2022-12-18 11:28:02.712000', 'abc@qq.com', '127.0.0.1', 1);
INSERT INTO `login_log` VALUES ('fc5588a9-287c-41e7-9adc-36c925d74418', 'Chrome', '2022-12-12 23:37:20.666000', 'admin@qq.com', '127.0.0.1', 0);
INSERT INTO `login_log` VALUES ('fe4e4ea1-41af-406e-b246-2e1e48eb045d', 'Chrome', '2023-01-11 11:04:37.010000', 'admin@qq.com', '127.0.0.1', 1);

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `commodity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay` bit(1) NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES ('0da2a4b7-208d-4c1d-bdd2-8966590f46c5', 'HUWAI MATE 30 Pro', '2', '500', '2022-12-13 14:23:44', 'ccc', '2342', b'1', '232423', 2000000);
INSERT INTO `sale` VALUES ('1307750a-78eb-4b07-8fb7-5b75bb3c6dc9', '手机支架', '中兴', '50', '2023-01-11 11:07:12', 'xxx', '234234', b'1', '213123', 499.5);
INSERT INTO `sale` VALUES ('38214342-a785-4929-9208-94762c16a7d0', 'Apple', '小米', '20', '2023-01-11 10:15:35', 'xxx', '428354352', b'1', '13789253421', 800000);
INSERT INTO `sale` VALUES ('b97a82bf-6aa8-47a7-a3a6-03e0df570038', '鼠标', '亚马逊', '50', '2023-01-11 13:37:50', '2341234', '342342', b'1', '214234', 499.5);
INSERT INTO `sale` VALUES ('bbcb2f8d-9ab4-4b6b-b0ff-1edae383c7a5', 'HUWAI MATE 30 Pro', '华为', '50', '2023-01-11 10:11:07', '234', '2134', b'1', '12332542342', 200000);

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `busincess_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'LTD',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('022ec005-f15b-4a14-81d1-375bbad1bbe2', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 14:59:33.348000');
INSERT INTO `system_log` VALUES ('031ab444-46a8-448a-85cf-9b7033987bbc', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 17:03:01.678000');
INSERT INTO `system_log` VALUES ('04ce3b48-3532-4ea3-8622-92c918afc5aa', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-02-20 19:50:59.325000');
INSERT INTO `system_log` VALUES ('06f52601-980b-4f51-97c4-e88843dbf31a', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:24:27.359000');
INSERT INTO `system_log` VALUES ('07030b17-920b-45fe-a459-69559742a66d', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-01-11 13:38:08.920000');
INSERT INTO `system_log` VALUES ('0711615f-f8b1-4d8c-b0c5-72b08a90e51b', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2023-01-11 11:08:04.405000');
INSERT INTO `system_log` VALUES ('07824ae3-73fd-4045-b50c-28c949d35807', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-02-20 19:56:46.374000');
INSERT INTO `system_log` VALUES ('083252f8-81e1-472f-b6e5-f4adce4e5e3b', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 09:11:05.517000');
INSERT INTO `system_log` VALUES ('0877caa9-0be0-4065-beb7-b9b16976a0b7', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 21:57:03.526000');
INSERT INTO `system_log` VALUES ('088be4cc-6648-4433-bd66-bd17c5a593d1', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:37:08.319000');
INSERT INTO `system_log` VALUES ('09ee1842-610c-4ead-800c-b08138eff2c6', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:29:49.204000');
INSERT INTO `system_log` VALUES ('0a3e9653-fddd-46cb-b120-7189745e9023', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-02-16 10:30:22.900000');
INSERT INTO `system_log` VALUES ('0c49d9ba-00fc-439e-a122-fc4b750154eb', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2022-12-23 19:05:11.634000');
INSERT INTO `system_log` VALUES ('0d1f0d04-fc68-48cf-955a-385452717ce6', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 10:58:59.954000');
INSERT INTO `system_log` VALUES ('0e127759-729d-4762-8e51-016799b91ea1', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:26:11.478000');
INSERT INTO `system_log` VALUES ('0e6e972a-114c-4b9a-9115-68d70bf8304a', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 12:15:25.465000');
INSERT INTO `system_log` VALUES ('0e749bc2-ce9d-4ba4-90ae-a4535caef592', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2022-12-19 13:10:57.580000');
INSERT INTO `system_log` VALUES ('11a1e510-11e1-406b-b377-4bc0076b538e', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:28:03.896000');
INSERT INTO `system_log` VALUES ('11a3e607-18ee-41da-bcba-2c8b419eb5d0', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 11:04:38.532000');
INSERT INTO `system_log` VALUES ('12ba136e-da1c-4e56-93b1-caa50b1ced20', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 09:18:41.743000');
INSERT INTO `system_log` VALUES ('12f8f420-e25d-4e5e-95ed-a58f20b5427e', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-18 11:37:41.214000');
INSERT INTO `system_log` VALUES ('1518cd8f-0ab0-48c9-9c6b-7b24bf0a1e0a', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:29:28.747000');
INSERT INTO `system_log` VALUES ('152742ba-d32d-4ec3-8954-5ac342900137', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:39:02.791000');
INSERT INTO `system_log` VALUES ('164d9a8a-4361-40cb-a72e-7f3f09393275', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2023-01-11 11:07:54.695000');
INSERT INTO `system_log` VALUES ('17155240-f711-4ad3-beaa-caf0ed5c93d9', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:16:35.107000');
INSERT INTO `system_log` VALUES ('187a6ed0-8352-4426-b87d-99e31b977714', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 11:19:07.892000');
INSERT INTO `system_log` VALUES ('189cec0a-d3ea-4c70-8c60-9151b6cf2937', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:34:42.856000');
INSERT INTO `system_log` VALUES ('19629465-d4b0-4972-99bb-dc7b497b2357', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:39:02.459000');
INSERT INTO `system_log` VALUES ('19998a8b-79e8-4725-878d-87f4ca22a491', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 12:56:21.871000');
INSERT INTO `system_log` VALUES ('1a1a8ca4-dd00-476d-8202-7050968b89be', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 10:15:25.052000');
INSERT INTO `system_log` VALUES ('1a801db2-06ab-47b5-bbe9-17b1a55b567c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-01-11 13:15:42.052000');
INSERT INTO `system_log` VALUES ('1abccede-c3f2-4590-a4c6-4fb217591fe4', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2022-12-19 12:48:25.474000');
INSERT INTO `system_log` VALUES ('1b6eff65-712b-4ec6-b252-2e73f5e531e8', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.DistributionController.save', '配送管理', '2022-12-19 12:58:39.642000');
INSERT INTO `system_log` VALUES ('1c472a75-72cf-474c-987c-09ad35e35bb6', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:20:23.990000');
INSERT INTO `system_log` VALUES ('1c4c3b10-8668-4426-9653-c1a06fa2b47d', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-18 12:15:45.300000');
INSERT INTO `system_log` VALUES ('1d1db78d-54d1-4d98-8f67-7bd4a3188959', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 11:19:36.060000');
INSERT INTO `system_log` VALUES ('1d3e6c4d-ffd7-4382-b215-0b8428b79587', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 11:07:45.793000');
INSERT INTO `system_log` VALUES ('1f9c1f26-7bf7-4133-9dc3-06b9242753c0', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-02-20 19:56:44.467000');
INSERT INTO `system_log` VALUES ('206f05d8-2362-4f74-9229-6f72389a16e6', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 10:03:27.726000');
INSERT INTO `system_log` VALUES ('2087ff2a-3c06-454e-a56d-e9576e1b54cc', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:16:28.053000');
INSERT INTO `system_log` VALUES ('20a280a3-3733-4097-ab14-2017bdbc45c3', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 11:19:03.541000');
INSERT INTO `system_log` VALUES ('22f051ae-e9da-4487-8d32-ae579fbab261', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2023-02-03 10:08:53.122000');
INSERT INTO `system_log` VALUES ('230bbf27-928b-4c8b-8c41-5ec8100c2d82', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:18:59.066000');
INSERT INTO `system_log` VALUES ('25946777-5079-423e-9bad-5a39ecfc8a66', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-18 12:15:45.235000');
INSERT INTO `system_log` VALUES ('26819e0b-7ae7-4d23-bfde-eca7b34cc9d9', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-19 14:59:37.515000');
INSERT INTO `system_log` VALUES ('26a081b9-b630-4864-8ded-4e0c9e88d3aa', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-18 12:15:56.064000');
INSERT INTO `system_log` VALUES ('275817ea-15f0-4875-b727-d754a4053d2d', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:35:05.878000');
INSERT INTO `system_log` VALUES ('2760b8cc-ab8c-4beb-9625-185d3221f933', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:29:59.663000');
INSERT INTO `system_log` VALUES ('2ae76013-4dcd-4ab8-a9a9-b711d16f9419', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 13:10:40.933000');
INSERT INTO `system_log` VALUES ('2afc457d-cbf1-420f-8c17-d36f9f56deb3', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-01-11 09:18:49.210000');
INSERT INTO `system_log` VALUES ('2b24e668-b1bf-4bf2-a890-e9abb953834f', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-19 11:19:40.142000');
INSERT INTO `system_log` VALUES ('2b59abf3-f3fe-4475-9a27-8145dadc3306', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 11:20:59.984000');
INSERT INTO `system_log` VALUES ('2cebfee1-a906-4cad-b585-c3f0f456a0cb', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.CommodityController.save', '商品管理', '2022-12-18 11:29:28.045000');
INSERT INTO `system_log` VALUES ('2f8c7838-775c-4b8a-82a1-6a73be964abd', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.EmployeeController.save', '员工管理', '2023-01-11 11:07:38.361000');
INSERT INTO `system_log` VALUES ('2fa51b9f-8841-485d-a4a2-7bf33af92b1c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 11:08:12.464000');
INSERT INTO `system_log` VALUES ('31d038fc-ce82-45c9-8aaa-b40f92882625', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 11:08:28.522000');
INSERT INTO `system_log` VALUES ('31ecd48c-7a32-4167-a683-e6bdacf785e5', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 15:36:52.551000');
INSERT INTO `system_log` VALUES ('32ba899c-4984-4d13-a504-3b4ff630de37', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2023-01-11 10:16:36.294000');
INSERT INTO `system_log` VALUES ('33cf72b3-98aa-4975-9834-38c3b61c99a2', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:20:44.559000');
INSERT INTO `system_log` VALUES ('38cedbb8-228f-4965-ad15-7fd5c9162781', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2023-01-11 09:20:28.320000');
INSERT INTO `system_log` VALUES ('3906d078-a520-45c6-967a-4158107dd8b5', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:10:55.388000');
INSERT INTO `system_log` VALUES ('3c672095-3fb4-499a-97bb-a75d7b15f60d', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-02-20 19:56:45.661000');
INSERT INTO `system_log` VALUES ('3d01c743-3b7e-46b8-aca2-f25e726b3216', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-01-11 09:18:25.728000');
INSERT INTO `system_log` VALUES ('3d348641-6af5-4b00-a2d7-1d554a11f373', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:20:29.946000');
INSERT INTO `system_log` VALUES ('3d548509-df88-4305-ba98-cf42f57f0339', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.DistributionController.save', '配送管理', '2022-12-19 13:02:16.459000');
INSERT INTO `system_log` VALUES ('3dbe797b-6c60-4f5a-aa89-51614814c47a', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2022-12-19 13:01:36.018000');
INSERT INTO `system_log` VALUES ('3e458605-cad4-46b0-b760-c67af93f5e26', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-20 19:58:52.210000');
INSERT INTO `system_log` VALUES ('3f27f1ec-4ebb-4258-a224-a1243a36a201', 'admin@qq.com', '删除', '127.0.0.1', 'com.example.api.controller.CommodityController.delete', '商品管理', '2023-01-11 13:15:34.845000');
INSERT INTO `system_log` VALUES ('3f6c948f-5227-4020-9a46-bdc93f0d1f98', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 10:16:27.597000');
INSERT INTO `system_log` VALUES ('40259f31-a500-490a-95b3-c896840c3a86', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-16 10:30:20.213000');
INSERT INTO `system_log` VALUES ('405950ed-3091-43d6-bc56-2a6786da7e9c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:18:34.088000');
INSERT INTO `system_log` VALUES ('412d46e8-de45-482e-a2c7-a67f0cb32aac', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-18 11:36:37.580000');
INSERT INTO `system_log` VALUES ('412faf77-7cb5-4098-8474-ae743f4ade8c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-02-03 10:08:39.314000');
INSERT INTO `system_log` VALUES ('418af412-c363-400e-abaa-2d0d65368638', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 10:36:23.498000');
INSERT INTO `system_log` VALUES ('4286d9ef-9a4c-4be5-b846-e6dad0699f9d', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 09:18:28.128000');
INSERT INTO `system_log` VALUES ('43a9c757-823a-49cc-9545-2971a33baa87', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 11:06:00.026000');
INSERT INTO `system_log` VALUES ('48d387fd-5948-4558-9a54-ce4cb92c6322', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-19 11:19:31.867000');
INSERT INTO `system_log` VALUES ('491e8e68-6c4e-4f22-8278-8ec06796ab12', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-16 10:31:56.789000');
INSERT INTO `system_log` VALUES ('4990230f-7a78-4d75-bd5d-74dd255557f1', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 11:08:08.819000');
INSERT INTO `system_log` VALUES ('4a958c89-7537-419f-8a3c-26d5454b0134', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.DistributionController.save', '配送管理', '2022-12-19 12:59:22.957000');
INSERT INTO `system_log` VALUES ('4ae005f3-a2f2-4ae2-8f71-8d76d74e5dee', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.VehicleController.save', '车辆管理', '2023-01-11 13:38:19.566000');
INSERT INTO `system_log` VALUES ('4af110c7-9d7d-4958-819b-d1186cd2e090', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2023-01-11 09:21:00.124000');
INSERT INTO `system_log` VALUES ('4b266054-8109-483d-91d3-b3e9457e89f2', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:28:32.927000');
INSERT INTO `system_log` VALUES ('4b3e167a-542a-4d4c-8962-ac45fbb2e950', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 09:18:40.423000');
INSERT INTO `system_log` VALUES ('4b97d469-01c7-4ddc-a66e-d5e8f22f3d62', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-01-11 10:16:42.295000');
INSERT INTO `system_log` VALUES ('4c41f964-a415-4c8c-bfcd-a0b90d50649a', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:21:10.080000');
INSERT INTO `system_log` VALUES ('4c5a201b-e749-450e-962d-05d239e9917f', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-19 14:59:35.709000');
INSERT INTO `system_log` VALUES ('4ca0dd67-fa02-4495-9f7c-5fe414b0720f', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2022-12-19 12:46:47.691000');
INSERT INTO `system_log` VALUES ('4dd0a93f-b1db-429e-aecc-00184ee8da03', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.CommodityController.save', '商品管理', '2023-01-11 13:35:52.107000');
INSERT INTO `system_log` VALUES ('4ec70883-e787-42e5-8c56-d3ca309c98ca', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:15:39.853000');
INSERT INTO `system_log` VALUES ('4f297bc1-8424-4d2b-9bc3-84c17500a892', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-19 14:59:35.712000');
INSERT INTO `system_log` VALUES ('4fc7b4e1-51ca-467c-960d-aa006e0df18c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-01-11 09:18:30.097000');
INSERT INTO `system_log` VALUES ('5047c752-e010-4245-b948-569783561c09', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 12:58:26.204000');
INSERT INTO `system_log` VALUES ('509b6d47-eb41-489d-99c1-58745b767433', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-20 19:56:50.377000');
INSERT INTO `system_log` VALUES ('519b3f8b-640f-4222-badb-af223a5029ae', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2023-01-11 13:38:53.725000');
INSERT INTO `system_log` VALUES ('535fc79e-3e5b-4efe-8b98-4683f0d82f2e', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:10:52.320000');
INSERT INTO `system_log` VALUES ('53e15098-b2fb-4590-88ce-c462c9aa8430', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:16:05.984000');
INSERT INTO `system_log` VALUES ('5514e7a9-3338-428c-a73c-ca5197090caa', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-02-16 10:30:22.084000');
INSERT INTO `system_log` VALUES ('558c92ed-86e8-434d-b664-e9a40c265154', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-20 19:56:43.500000');
INSERT INTO `system_log` VALUES ('56be44a7-ad6b-4c9f-bd5e-1ca515065951', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:12:47.209000');
INSERT INTO `system_log` VALUES ('5750f90d-9089-42a4-9797-9ff3b9e90836', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:27:11.699000');
INSERT INTO `system_log` VALUES ('57c199bc-56b2-4822-b2cb-2a986c6e3854', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:16:01.501000');
INSERT INTO `system_log` VALUES ('59636bf3-923a-40de-9658-e29c30fcc5bc', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:02:17.474000');
INSERT INTO `system_log` VALUES ('59ed5fe8-70d7-4b1a-8a29-e6c0f8e3161c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2023-01-11 09:23:34.586000');
INSERT INTO `system_log` VALUES ('5be162cd-6932-419f-a301-36573f4efa83', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:12:45.451000');
INSERT INTO `system_log` VALUES ('5c990212-4723-4ed2-9236-e65e64250b0f', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-01-11 13:38:19.649000');
INSERT INTO `system_log` VALUES ('5cca92dc-618d-42bc-845a-f031023ea875', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-01-11 11:08:02.124000');
INSERT INTO `system_log` VALUES ('5d1ed86b-6a65-4726-ab76-51f86620e350', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findByLikeName', '商品管理', '2022-12-18 17:03:10.144000');
INSERT INTO `system_log` VALUES ('5dd519bf-6334-4039-b74d-c3e05d52165b', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2023-01-11 09:22:55.919000');
INSERT INTO `system_log` VALUES ('5ddaaa2e-845e-4280-afc7-a61ad8a0b0ad', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 09:18:25.728000');
INSERT INTO `system_log` VALUES ('5e10f646-15de-434b-a2c9-e057a0d8c194', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 13:36:09.637000');
INSERT INTO `system_log` VALUES ('5f347fa2-f2cf-4857-98b4-afd1f99450af', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-01-11 10:16:37.153000');
INSERT INTO `system_log` VALUES ('5fe8d44e-cb13-4007-8fca-860a9e4838a1', 'abc@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.EmployeeController.save', '员工管理', '2022-12-18 11:38:16.711000');
INSERT INTO `system_log` VALUES ('6010ec17-8a3f-4597-8819-f1a80427b2a5', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 20:24:14.407000');
INSERT INTO `system_log` VALUES ('602100e8-9a16-4d24-9134-f2d21b376855', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-02-20 19:56:41.891000');
INSERT INTO `system_log` VALUES ('60f76113-5a05-4fe8-93ab-d05170d38f41', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.DistributionController.save', '配送管理', '2023-01-11 09:23:25.714000');
INSERT INTO `system_log` VALUES ('610ccf87-1757-498c-bd8d-1b91db31e976', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2022-12-19 12:47:18.969000');
INSERT INTO `system_log` VALUES ('61287a93-c46f-4205-8b2b-c5ddb901c9b4', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-19 14:59:38.573000');
INSERT INTO `system_log` VALUES ('615b26ab-abdb-4d2a-9950-38ccbc6c0832', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-02-20 19:57:16.179000');
INSERT INTO `system_log` VALUES ('62027433-5b3f-4d27-8015-7f44115115d9', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-02-03 10:08:39.317000');
INSERT INTO `system_log` VALUES ('62052353-d251-4af3-808e-81855ef072d4', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 12:48:03.923000');
INSERT INTO `system_log` VALUES ('63a3a61c-d18e-4fc3-9b7b-9b90bd66f485', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-19 14:59:38.571000');
INSERT INTO `system_log` VALUES ('64363773-4c6d-414f-a8bc-987f7a917452', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:15:34.884000');
INSERT INTO `system_log` VALUES ('6436f3ba-3e87-4057-81a0-7940369dadc8', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-17 23:50:43.855000');
INSERT INTO `system_log` VALUES ('6465e428-f585-4d6e-b5d0-a3cfc2d6fbd5', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:30:06.124000');
INSERT INTO `system_log` VALUES ('650487e1-9ebd-4e94-8253-790e1697b0d1', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-03 09:43:44.027000');
INSERT INTO `system_log` VALUES ('659ab2bb-4701-43ed-b4c1-3fa5695a7a20', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-20 19:58:46.979000');
INSERT INTO `system_log` VALUES ('65ae6ee8-23dc-452a-ba58-fc820a2151db', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2023-01-11 13:15:57.298000');
INSERT INTO `system_log` VALUES ('67a4a7b1-9f84-4838-8401-ac2548c07f4c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 12:47:11.662000');
INSERT INTO `system_log` VALUES ('67fd385d-507d-4435-9d35-da18958e4fa6', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 10:16:19.068000');
INSERT INTO `system_log` VALUES ('682be452-38f0-4cc4-9164-896316dca4d3', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-02-20 19:58:50.082000');
INSERT INTO `system_log` VALUES ('6854cf7f-b655-42d1-b978-de6bf51a9c2c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 09:07:37.027000');
INSERT INTO `system_log` VALUES ('69891b38-ae4d-40ef-b2c1-726ca832b400', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2022-12-19 13:10:27.866000');
INSERT INTO `system_log` VALUES ('6a44673e-a36a-425c-b503-c28a871778a1', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-02-03 10:08:40.798000');
INSERT INTO `system_log` VALUES ('6c286a82-56cb-44e8-9eb1-674a82813c62', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-19 13:10:49.668000');
INSERT INTO `system_log` VALUES ('6c87eeb5-cae9-4eae-9dea-38cd5366905c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 10:15:26.756000');
INSERT INTO `system_log` VALUES ('6d0b10a6-2276-4808-bc2a-ad6f0c0b0a32', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 13:37:00.467000');
INSERT INTO `system_log` VALUES ('6e723e53-dad9-478d-b065-c949194dfb92', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 11:43:08.630000');
INSERT INTO `system_log` VALUES ('6fed4a72-ff29-4577-ba9a-e29b30ba1a91', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:22:50.646000');
INSERT INTO `system_log` VALUES ('70c71159-649e-4f30-8f8d-42a673022035', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-15 20:57:46.117000');
INSERT INTO `system_log` VALUES ('74a9d649-1f7e-492f-9ac9-094049ed79ad', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 10:16:40.679000');
INSERT INTO `system_log` VALUES ('76348164-8a6e-4ad0-b2a8-e1c4a70cc88e', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:22:39.874000');
INSERT INTO `system_log` VALUES ('77f6fbf3-1ee6-49a6-9f53-4826d8aeb28c', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:39:00.298000');
INSERT INTO `system_log` VALUES ('786e84ac-4de4-48fb-bd9b-46a21d37a0d0', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2022-12-23 19:04:25.853000');
INSERT INTO `system_log` VALUES ('79aee427-15ea-4574-a7d1-9c948a4a1b2a', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-02-16 10:30:22.072000');
INSERT INTO `system_log` VALUES ('7a9594e6-4253-4635-a283-71d7e2511275', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-15 21:05:20.969000');
INSERT INTO `system_log` VALUES ('7b09e3e6-3bc9-4449-9e45-1fbf7a0f907f', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 11:06:28.233000');
INSERT INTO `system_log` VALUES ('7c09323f-f228-47ae-83a3-ed60543f5daa', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2022-12-19 11:21:33.793000');
INSERT INTO `system_log` VALUES ('7d090768-56bd-43dd-86f6-d3471cceb119', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2022-12-19 13:02:24.215000');
INSERT INTO `system_log` VALUES ('7dad0595-6982-4107-8fba-ef417819eea2', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-03 10:08:03.622000');
INSERT INTO `system_log` VALUES ('7ead999f-2bb6-4777-a9f0-99644a9ea474', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:15:55.620000');
INSERT INTO `system_log` VALUES ('7ed3b25d-1449-4c68-ae5a-bddd83857afc', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-02-20 19:58:58.630000');
INSERT INTO `system_log` VALUES ('7f53e3aa-b072-4ed4-b7f2-eb59354d5168', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 10:15:37.560000');
INSERT INTO `system_log` VALUES ('7fcb82a4-9c9a-4d0c-a93c-58eeae357c46', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 10:54:05.831000');
INSERT INTO `system_log` VALUES ('7fdf4747-be83-4646-b225-7fad669c0c5c', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 17:08:07.869000');
INSERT INTO `system_log` VALUES ('8038a64c-bbf6-48a8-a656-e2beefd53185', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-19 14:59:45.220000');
INSERT INTO `system_log` VALUES ('83fdfa97-140f-4534-9a86-973215a52eee', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-16 10:30:14.195000');
INSERT INTO `system_log` VALUES ('86b4cef4-6074-4afb-80e6-8676d8916271', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-23 19:03:04.408000');
INSERT INTO `system_log` VALUES ('893be95c-57e5-4a1a-bebd-884529d29029', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-02-15 21:05:17.399000');
INSERT INTO `system_log` VALUES ('8a0fcdca-b5ca-4e17-9f82-af0a89b12a07', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:23:42.019000');
INSERT INTO `system_log` VALUES ('8ad0809f-e047-44e7-8c99-1df776778bc3', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 13:36:49.318000');
INSERT INTO `system_log` VALUES ('8b23efe5-26f1-4133-8f71-61243943a52b', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findByLikeName', '商品管理', '2023-01-11 09:17:39.950000');
INSERT INTO `system_log` VALUES ('8bf9f105-3c7b-43f6-8cee-936686aef2f4', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-19 11:43:15.416000');
INSERT INTO `system_log` VALUES ('8cb42f3a-3376-462f-8e69-e2f483f72688', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 10:57:51.084000');
INSERT INTO `system_log` VALUES ('8f42a647-9572-494c-abe7-6906c8717939', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:34:50.316000');
INSERT INTO `system_log` VALUES ('8fe2ae7e-d764-45b0-81e0-1507c7e62c1e', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:16:40.527000');
INSERT INTO `system_log` VALUES ('9069d579-6f6f-410e-9c82-d74dfd739180', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 13:10:51.133000');
INSERT INTO `system_log` VALUES ('907a9417-2052-407a-adb2-c184b9d66da2', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 11:07:38.462000');
INSERT INTO `system_log` VALUES ('9156a955-22d7-4ba0-af7b-3d79fd3927f2', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 20:23:53.290000');
INSERT INTO `system_log` VALUES ('9194a827-5bd5-4296-88a3-752ca0b03093', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:36:12.037000');
INSERT INTO `system_log` VALUES ('91b204bb-9e03-4493-9dbb-943659814711', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:35:52.417000');
INSERT INTO `system_log` VALUES ('920f8cac-a0d2-4e1f-a913-32c6e8f3d8bb', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-01-11 13:15:14.006000');
INSERT INTO `system_log` VALUES ('92a25ba9-d9c2-4a4a-ba29-4d4c8f745763', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 12:48:13.998000');
INSERT INTO `system_log` VALUES ('92cd14b2-9a0a-430e-b229-9278ca41ce4e', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 12:15:53.834000');
INSERT INTO `system_log` VALUES ('93077e83-1df2-40dc-bce6-d4bfdaa94c3a', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 09:12:26.295000');
INSERT INTO `system_log` VALUES ('94fab12f-022a-4ccb-8705-12d05ac5dae0', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-02-20 19:55:14.452000');
INSERT INTO `system_log` VALUES ('961d0565-8675-4803-920f-a580db031058', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 17:02:56.340000');
INSERT INTO `system_log` VALUES ('96a31182-3619-4107-a3ef-6dab83e3dc4b', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2023-02-20 19:58:57.415000');
INSERT INTO `system_log` VALUES ('975d858f-3a87-4686-a15d-07d6c62682f2', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:35:39.755000');
INSERT INTO `system_log` VALUES ('983bc0be-dec6-4e1d-8174-475bb1723888', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 11:05:37.280000');
INSERT INTO `system_log` VALUES ('99a19272-3632-483e-916e-a3071f039e5a', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 11:07:17.982000');
INSERT INTO `system_log` VALUES ('9a27645b-2fbe-4a22-861b-8b42abdadf8f', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.DistributionController.save', '配送管理', '2022-12-19 13:01:51.330000');
INSERT INTO `system_log` VALUES ('9a4c07d8-0603-44fc-a9fa-0a0f42aa571a', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-20 19:51:01.697000');
INSERT INTO `system_log` VALUES ('9a6ef09a-5829-4e3e-816d-eb0da70c8dd2', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 09:27:04.690000');
INSERT INTO `system_log` VALUES ('9b93a8a0-0632-477f-a813-9d733d1969a6', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-23 19:02:10.634000');
INSERT INTO `system_log` VALUES ('9eeb400b-5c5c-46fc-bbf3-f7e972102b27', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 15:31:40.953000');
INSERT INTO `system_log` VALUES ('9f0ee714-b4c8-43e1-a24c-8b5cb89486a4', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:10:56.827000');
INSERT INTO `system_log` VALUES ('9fe98ad9-afb1-4c6b-94d6-a2447775dead', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:27:18.076000');
INSERT INTO `system_log` VALUES ('a080b8cf-3955-4bb8-aa26-e6e14205a407', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:15:49.249000');
INSERT INTO `system_log` VALUES ('a1f934fc-b5fd-440b-b832-57e789fa9544', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2022-12-19 13:10:56.237000');
INSERT INTO `system_log` VALUES ('a2a80346-678e-4377-a641-4efe2e829456', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 09:14:37.816000');
INSERT INTO `system_log` VALUES ('a2d39fa7-a475-4303-ba53-8cd06f8c6128', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 10:16:42.288000');
INSERT INTO `system_log` VALUES ('a4b30a61-3b96-404f-9995-0fa10fddd7c3', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2022-12-23 19:04:07.491000');
INSERT INTO `system_log` VALUES ('a4d25292-4066-4de2-a304-8ce408680a20', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 13:10:25.646000');
INSERT INTO `system_log` VALUES ('a4d6dcf6-e8ed-4e29-be3f-d29aa6c9a02c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:24:31.526000');
INSERT INTO `system_log` VALUES ('a6a15587-91bc-451c-92ae-4a15c36b7953', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-18 11:36:37.569000');
INSERT INTO `system_log` VALUES ('aa10a416-6fe0-4cc1-b384-acfbe85099e5', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:27:05.967000');
INSERT INTO `system_log` VALUES ('ac7b9a51-2633-4e2a-848b-39a7ffa639c4', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-20 19:50:50.836000');
INSERT INTO `system_log` VALUES ('acae46ef-21f9-4e1b-a20d-985f43836ddf', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2023-02-15 21:05:15.738000');
INSERT INTO `system_log` VALUES ('acf10e5b-e918-4459-a191-6283b1136def', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2022-12-19 13:02:18.813000');
INSERT INTO `system_log` VALUES ('ae48bcfe-f732-486a-b886-a304bb30a430', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:12:28.718000');
INSERT INTO `system_log` VALUES ('ae5354a5-bf35-4c15-b6b4-896dfb515c61', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-18 11:38:16.825000');
INSERT INTO `system_log` VALUES ('aea1a092-2193-4c38-8861-c03f8e4e8216', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2023-02-20 19:56:39.602000');
INSERT INTO `system_log` VALUES ('aebe72ec-aedc-42ae-965e-31ceba81c001', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-02-20 19:56:45.686000');
INSERT INTO `system_log` VALUES ('b1959e7e-f77c-4a44-b6a4-70eee569b40c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-19 13:10:49.669000');
INSERT INTO `system_log` VALUES ('b21cb4ac-1485-44f1-8f1f-513477be7e6e', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 10:16:13.126000');
INSERT INTO `system_log` VALUES ('b46e810f-8800-4ffd-bb8d-9990d86d7313', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-01-11 13:36:49.334000');
INSERT INTO `system_log` VALUES ('b49e7dd8-0a55-4562-94ee-c61b4879bab0', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 13:39:01.079000');
INSERT INTO `system_log` VALUES ('b54c88b0-8e89-4853-94f4-a0815ad6f63d', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 10:12:36.876000');
INSERT INTO `system_log` VALUES ('b5899d57-264f-4067-911c-c4e79ef37371', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 10:15:47.080000');
INSERT INTO `system_log` VALUES ('b5a946a4-03dc-439f-a16d-859f915b6987', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findByLikeName', '商品管理', '2023-01-11 09:18:13.365000');
INSERT INTO `system_log` VALUES ('b5bd82c2-75fd-4fb4-9317-a83277128065', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 21:45:55.213000');
INSERT INTO `system_log` VALUES ('b5f03c87-36d0-4004-9aef-478fbba5a260', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 12:15:59.043000');
INSERT INTO `system_log` VALUES ('b662c241-e5db-464d-a948-e4245c6ce083', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-23 19:07:50.563000');
INSERT INTO `system_log` VALUES ('b693249a-a9ce-4cdc-9653-ba360eaabd78', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2023-01-11 09:23:13.852000');
INSERT INTO `system_log` VALUES ('b7869919-a1cb-43b3-a7fc-b2d11d24e4e8', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:24:33.010000');
INSERT INTO `system_log` VALUES ('b7a9aaa0-2e3b-45d0-a2ef-48398525b07e', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 10:16:21.420000');
INSERT INTO `system_log` VALUES ('b8584d43-49bc-407b-95ab-29019c8ae0be', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 17:09:55.173000');
INSERT INTO `system_log` VALUES ('b995dca3-af0a-491e-91f1-00dca443bdbd', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 11:19:01.204000');
INSERT INTO `system_log` VALUES ('b9a08e4c-6adf-456b-94e9-66f5b9dd4cf1', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:22:52.725000');
INSERT INTO `system_log` VALUES ('ba8fa00e-b723-4b5c-bc01-45261acfcace', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-18 12:16:01.263000');
INSERT INTO `system_log` VALUES ('bb2fa1a6-99de-4dff-b8d5-fcf2c7b1c680', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:22:41.846000');
INSERT INTO `system_log` VALUES ('bbe158bc-6bc0-4391-b6c2-74e36a08bab6', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-01-11 09:23:32.810000');
INSERT INTO `system_log` VALUES ('be7f302c-0afa-42e2-b494-fdd121f29aa5', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findByLikeName', '商品管理', '2023-01-11 13:36:02.702000');
INSERT INTO `system_log` VALUES ('bec40a33-d70c-45d2-8e0a-171455300ef7', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-23 19:07:47.344000');
INSERT INTO `system_log` VALUES ('bfae97c7-910f-404f-823d-007e43605791', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2023-01-11 13:15:23.431000');
INSERT INTO `system_log` VALUES ('c0011144-85b6-49a6-a707-fb28b89011e5', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-01-11 09:18:40.462000');
INSERT INTO `system_log` VALUES ('c01126eb-6483-40a3-b0b3-4d8afcc3b523', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:20:42.434000');
INSERT INTO `system_log` VALUES ('c0e32b77-cbd3-441b-af76-214ba13c26a1', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 10:16:43.005000');
INSERT INTO `system_log` VALUES ('c112bf85-8571-4a3a-a03d-78d4b699ed0d', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 13:10:45.132000');
INSERT INTO `system_log` VALUES ('c439893d-461b-4444-a37f-32fb81c753a0', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-18 12:15:50.547000');
INSERT INTO `system_log` VALUES ('c5750b02-b5c5-415a-a5e6-0c0f89e5c05c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:29:06.877000');
INSERT INTO `system_log` VALUES ('c79a1c79-971f-4503-beee-eb5389465b81', '123@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:43:11.483000');
INSERT INTO `system_log` VALUES ('c9f1d5e6-c81f-481a-9357-6aed4c2b4b03', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-19 11:43:16.518000');
INSERT INTO `system_log` VALUES ('ca2e4cbe-ed37-4880-86a1-08b6bd590ecb', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2023-02-15 20:57:48.475000');
INSERT INTO `system_log` VALUES ('ca356a8c-adf6-41d0-bb3d-4441aae6898a', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2023-02-20 19:59:04.049000');
INSERT INTO `system_log` VALUES ('cc3b5143-d5de-4bd4-9299-7c0b3ae610a1', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-02-20 19:58:49.246000');
INSERT INTO `system_log` VALUES ('ccae1e6f-71c2-4679-81a1-99a861983a19', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-18 12:15:56.063000');
INSERT INTO `system_log` VALUES ('cdec2cb4-f9a3-46c7-9e95-9e723b463511', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2022-12-18 20:23:56.306000');
INSERT INTO `system_log` VALUES ('d00727bf-77c3-477a-a483-1e38b8d68ed4', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-02-03 10:08:57.067000');
INSERT INTO `system_log` VALUES ('d039b1a1-75b7-4e48-85bc-496666c10657', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:24:43.451000');
INSERT INTO `system_log` VALUES ('d06758ed-bde9-488b-bf73-88cf825f65ff', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:12:52.701000');
INSERT INTO `system_log` VALUES ('d074466a-6d17-4975-a362-72f8637dd92e', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:37:32.690000');
INSERT INTO `system_log` VALUES ('d098fba7-dcc6-40bd-a8d2-d04cc74892fc', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:18:43.342000');
INSERT INTO `system_log` VALUES ('d0d8832f-c148-467a-97ce-774bce224fb4', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-23 19:01:29.620000');
INSERT INTO `system_log` VALUES ('d280225a-faab-4bb4-9057-d746484f2daf', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:22:58.540000');
INSERT INTO `system_log` VALUES ('d2ce2cf9-dbe4-4dd2-81a2-cd2303740b50', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.DistributionController.save', '配送管理', '2023-01-11 09:23:24.489000');
INSERT INTO `system_log` VALUES ('d5118dbd-3df9-4140-afd4-f262f1041790', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 17:03:06.371000');
INSERT INTO `system_log` VALUES ('d614c46b-ac37-41a5-bef9-6ca3b363b2d8', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-01-11 11:07:38.462000');
INSERT INTO `system_log` VALUES ('d676cf30-2180-4291-a896-00881e8f8d9b', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:27:25.369000');
INSERT INTO `system_log` VALUES ('d737aa8c-e27b-4cba-978d-2c9dd3906ce6', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 13:10:47.377000');
INSERT INTO `system_log` VALUES ('d788bc8b-b552-429d-94cb-5d95791c02ad', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-18 11:37:41.214000');
INSERT INTO `system_log` VALUES ('d78a3cda-ab44-4307-b46a-1e7369e44aa7', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2023-02-03 10:09:01.464000');
INSERT INTO `system_log` VALUES ('d7c99480-fe37-4514-be69-1ed898a9377f', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2022-12-19 12:58:57.135000');
INSERT INTO `system_log` VALUES ('d8665c91-65be-4234-82aa-5af9c4f8ee48', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-23 19:03:05.878000');
INSERT INTO `system_log` VALUES ('d8ffd447-1fb2-4b25-9e7f-a16d1a9d85f5', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:18:36.364000');
INSERT INTO `system_log` VALUES ('da88eb52-a3df-4ca8-a7e6-b5dba999739e', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 09:18:49.174000');
INSERT INTO `system_log` VALUES ('dc565208-c8c1-44b7-b647-8fa566d8767e', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 20:24:08.434000');
INSERT INTO `system_log` VALUES ('dc94727d-7c09-406a-bc11-cc5ee2ee3b05', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.CommodityController.save', '商品管理', '2022-12-18 11:30:17.056000');
INSERT INTO `system_log` VALUES ('dcce1ead-d21c-4010-9059-af8b18b62ffc', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-23 19:02:10.646000');
INSERT INTO `system_log` VALUES ('dcd37ad4-ed5e-403b-8fff-8dfc30c794fa', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:26:42.109000');
INSERT INTO `system_log` VALUES ('ddb312be-1d75-4e08-bab1-4e700c29d331', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:12:37.527000');
INSERT INTO `system_log` VALUES ('ddf23055-61fd-40c7-beff-f29fa9d44feb', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 11:43:17.815000');
INSERT INTO `system_log` VALUES ('defacdf4-b879-4e9d-ac8c-18fa9bd02529', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-23 19:02:24.992000');
INSERT INTO `system_log` VALUES ('df6e674e-7473-4872-b0d5-6325ad569ac3', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2022-12-19 12:48:10.308000');
INSERT INTO `system_log` VALUES ('dfdb5b30-f036-42ae-b495-a927b9637e36', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.DriverController.save', '驾驶员管理', '2023-01-11 13:38:53.620000');
INSERT INTO `system_log` VALUES ('e18c284f-4e20-4d39-8091-4d2108a56eb7', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 11:06:02.763000');
INSERT INTO `system_log` VALUES ('e18f0c0b-6676-4659-a982-7b814ef99fa3', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 09:18:30.065000');
INSERT INTO `system_log` VALUES ('e3349316-db5b-4c5b-af92-f41b5e28db6b', '123@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:43:07.470000');
INSERT INTO `system_log` VALUES ('e38ef3c4-53f7-4d96-a1d3-9df7367fcd14', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2023-01-11 13:15:54.278000');
INSERT INTO `system_log` VALUES ('e3a8d71f-aa55-4275-9f53-35274a82e042', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 11:05:28.659000');
INSERT INTO `system_log` VALUES ('e50a3d2a-2049-41a8-9a36-e54fa8c31fd4', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 20:24:05.253000');
INSERT INTO `system_log` VALUES ('e513ef31-59eb-4619-bcd4-712afba06d7a', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:35:52.815000');
INSERT INTO `system_log` VALUES ('e6529259-ca7e-4d46-8d45-9c2e593eba8c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-01-11 11:07:17.996000');
INSERT INTO `system_log` VALUES ('e69a031f-4631-42cf-b9e3-c703d08dd805', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-19 11:43:15.469000');
INSERT INTO `system_log` VALUES ('e6a5640d-bd85-4f30-9f91-4f7346e8f103', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 15:11:29.087000');
INSERT INTO `system_log` VALUES ('e6dacf0e-74ef-4225-8b08-ca90472b70fb', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-02-20 19:58:50.077000');
INSERT INTO `system_log` VALUES ('e74d70e9-0616-43d8-8755-aad756afaaf7', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-23 19:02:42.269000');
INSERT INTO `system_log` VALUES ('e770f5bd-ba7a-40c9-9c03-69bfa3dc0ccf', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:15:29.007000');
INSERT INTO `system_log` VALUES ('e870ae71-4786-4ade-9af3-887f358ff5ea', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2023-01-11 13:38:02.871000');
INSERT INTO `system_log` VALUES ('e90d3665-69b1-47b4-821a-408eda62e406', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:29:56.723000');
INSERT INTO `system_log` VALUES ('e92ca93b-0c85-4c95-bd87-d5c85598fb32', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-01-11 09:27:04.690000');
INSERT INTO `system_log` VALUES ('ed994aa5-7da3-4ac7-a85f-3cd8ecf0ee5a', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2023-01-11 09:26:39.927000');
INSERT INTO `system_log` VALUES ('ef9af503-7e1b-41ec-a28c-851aa04ae3b5', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2022-12-18 12:15:50.549000');
INSERT INTO `system_log` VALUES ('efe97256-1479-4975-ab47-5a31755a90ee', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findByLikeName', '商品管理', '2023-01-11 11:05:14.950000');
INSERT INTO `system_log` VALUES ('f040fb54-7e88-4910-936b-3b15a8d6ccc3', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.EmployeeController.findAll', '员工管理', '2023-01-11 09:11:05.506000');
INSERT INTO `system_log` VALUES ('f0e18f59-b4b6-4534-b483-115dce75c059', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 14:59:47.496000');
INSERT INTO `system_log` VALUES ('f1b64160-7c16-4cd7-b2d9-51fcf49abdf4', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 09:19:19.949000');
INSERT INTO `system_log` VALUES ('f1c113e1-dd54-4e04-b356-cd93e6803200', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-19 11:43:10.861000');
INSERT INTO `system_log` VALUES ('f3947120-4e96-4978-8ab8-6ea413d492a8', 'admin@qq.com', '新增', '127.0.0.1', 'com.example.api.controller.CommodityController.save', '商品管理', '2023-01-11 11:05:03.463000');
INSERT INTO `system_log` VALUES ('f480774f-e25f-4da2-9fa0-9c53fcc98f8c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2023-01-11 10:16:29.688000');
INSERT INTO `system_log` VALUES ('f4f63cb7-2a5f-452a-80aa-e40377a80102', 'abc@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-18 12:16:01.263000');
INSERT INTO `system_log` VALUES ('f5c130de-f6cb-4c05-8472-40da8e099e5b', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2022-12-19 13:01:30.544000');
INSERT INTO `system_log` VALUES ('f6a2f850-c540-4b83-9502-cbcd06131ec9', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 11:05:04.149000');
INSERT INTO `system_log` VALUES ('f8fb4848-84b4-4307-8341-8bd8fc124834', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2022-12-19 11:21:38.466000');
INSERT INTO `system_log` VALUES ('f9559e2b-4dd5-46c2-adb5-18968a080cdb', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.WarehouseController.findAll', '仓库管理', '2022-12-23 19:07:50.563000');
INSERT INTO `system_log` VALUES ('f9feefd2-4a32-4175-bb66-19d9ad2a76b5', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2022-12-19 13:10:30.279000');
INSERT INTO `system_log` VALUES ('fb7041cc-6be3-4d9d-a53d-ef1786a3cb6e', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-03 10:08:44.785000');
INSERT INTO `system_log` VALUES ('fd3a4c5c-b289-4201-8058-8ed4852ae1c9', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DistributionController.findAll', '配送管理', '2023-02-20 19:59:00.038000');
INSERT INTO `system_log` VALUES ('fd639c7f-6e52-4ee0-9ffd-1df0dd87076c', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.DriverController.findAll', '驾驶员管理', '2022-12-19 13:10:58.648000');
INSERT INTO `system_log` VALUES ('fd64dab2-6374-4cd4-a2de-b2044e820380', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.VehicleController.findAll', '车辆管理', '2022-12-19 11:21:31.942000');
INSERT INTO `system_log` VALUES ('fd64e793-44e0-41f5-86fe-f7525e3cee8e', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-18 11:30:17.740000');
INSERT INTO `system_log` VALUES ('fdfe2804-b43d-4a7d-a48e-aa861ba5c284', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-01-11 13:39:20.473000');
INSERT INTO `system_log` VALUES ('fe3d8c18-e395-4342-86ac-06f79aace322', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2023-02-16 10:30:18.971000');
INSERT INTO `system_log` VALUES ('fe4899d1-55dc-4d8e-9745-9f598d1e21e3', 'admin@qq.com', '查询', '127.0.0.1', 'com.example.api.controller.CommodityController.findAll', '商品管理', '2022-12-23 19:03:22.603000');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle
-- ----------------------------
DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE `vehicle`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `driving` bit(1) NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle
-- ----------------------------
INSERT INTO `vehicle` VALUES ('786fb288-4445-4784-b923-de013fa3892f', '2023-01-11 13:38:19', b'0', '京A0001', '货车');
INSERT INTO `vehicle` VALUES ('ce33de59-9584-4161-a17e-9046399d14c6', '2022-11-27 12:26:18', b'0', '京A0000', '货车');

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `principle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES ('9f2a2784-e182-4fdf-85e8-c3bde6d539d2', '2022-11-22 14:16:46', 'A号仓库', '杰克');

SET FOREIGN_KEY_CHECKS = 1;
