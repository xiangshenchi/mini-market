-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: yunshu
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` varchar(255) NOT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES
('1a8aafda-ae59-41da-8046-c572473c33ff','2024-11-13 22:12:28','2149754832@qq.com','123456','ROLE_SUPER_ADMIN'),
('34f2da9e-d2d6-4737-8763-0e9a17796298','2024-11-13 21:37:51','1483618794@qq.com','123456','ROLE_SUPER_ADMIN'),
('675cd52a-2581-4f96-a69d-4976874f2a41','2024-11-13 22:05:17','shawn_xsz@qq.com','123456','ROLE_SUPER_ADMIN'),
('e25d849d-f446-4796-95b2-743cc575a35d','2024-11-14 09:46:07','123456@qq.com','123456','ROLE_SUPER_ADMIN');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `code` (
  `email` varchar(255) NOT NULL,
  `exp` bigint(20) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
INSERT INTO `code` VALUES
('1402014577@qq.com',1669615938121,'276237'),
('cccccc@qq.com',1669725702342,'858227');
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodity`
--

DROP TABLE IF EXISTS `commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commodity` (
  `id` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `update_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodity`
--

LOCK TABLES `commodity` WRITE;
/*!40000 ALTER TABLE `commodity` DISABLE KEYS */;
INSERT INTO `commodity` VALUES
('10bcb016-0163-4825-8eb4-41b6c12fb65d',0,'2024-11-17 10:35:59','黄河之水天上来','天河水',9.99,NULL),
('1aa9840c-402b-4e34-9fe2-06ddc4bfde77',0,'2024-11-16 22:31:44','剥离的碎片','菠萝',9.99,NULL),
('2645180d-92d9-416c-985c-129c8547404c',0,'2024-11-17 15:54:12','好心市民金闪闪','金闪闪',4.99,NULL),
('44ae87af-46a3-4db4-acce-9dc81f977576',200,'2024-11-17 15:51:14','李淳爱和冰红茶 超级爱\n','冰红茶',4.99,NULL),
('de52e196-f91b-4b90-86de-f40ae58eebd2',990,'2024-11-14 10:06:02','打折面包','面包',1.99,NULL);
/*!40000 ALTER TABLE `commodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribution`
--

DROP TABLE IF EXISTS `distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribution` (
  `id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `care` varchar(255) DEFAULT NULL,
  `did` varchar(255) DEFAULT NULL,
  `driver` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time` datetime(6) DEFAULT NULL,
  `urgent` bit(1) NOT NULL,
  `vid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribution`
--

LOCK TABLES `distribution` WRITE;
/*!40000 ALTER TABLE `distribution` DISABLE KEYS */;
INSERT INTO `distribution` VALUES
('940b334e-97b8-48a9-8c1e-d53e349eb8b1','宜昌-西陵区-大学城','注意易碎, ','7ff7207d-8ccb-4fa8-9515-5341fd218764','胡国昌','京A0001','15873321966',0,'2024-11-23 16:05:30.000000','','786fb288-4445-4784-b923-de013fa3892f');
/*!40000 ALTER TABLE `distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver` (
  `id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `driving` bit(1) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `update_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES
('a4a88363-a438-4847-a4bf-b25e6fa5ae6e','xxx','2023-01-11 13:38:53','\0','男性','423423424','xxx','李四','13793242563','12',NULL),
('ea3bba9b-cda6-438d-b196-7c81e97b5040','','2024-11-13 23:43:53','\0','男性','4412242003423345534','34','王五','231325345345','12',NULL);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `update_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES
('035ae334-7250-4366-a141-ecb6e218f818','芜湖','2024-11-17 11:01:42','测试','男性','433921200412113737','李师傅','13728461997',NULL),
('3d06684c-0681-4744-bd67-c256414e51ad','芜湖','2024-11-17 11:02:10','测试','男性','1231231231231','胡国昌','123123123123123123123',NULL),
('ff66fad8-518d-42f2-8095-97aa08d06844','芜湖','2024-11-16 21:29:31','A号仓库','男性','0000000000000','向申赤','000000000000',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `id` varchar(255) NOT NULL,
  `cid` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `wid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES
('f8dc4fc2-c901-4a0b-a88e-e8d65ecce585','de52e196-f91b-4b90-86de-f40ae58eebd2',990,NULL,'面包','e49cda45-c794-4206-bbab-c0b7665269bf');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_record`
--

DROP TABLE IF EXISTS `inventory_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_record` (
  `id` varchar(255) NOT NULL,
  `cid` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `wid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_record`
--

LOCK TABLES `inventory_record` WRITE;
/*!40000 ALTER TABLE `inventory_record` DISABLE KEYS */;
INSERT INTO `inventory_record` VALUES
('0af2ab95-9ead-4f2b-bafb-ef7444d83585','de52e196-f91b-4b90-86de-f40ae58eebd2',1000,'2024-11-17 16:02:24','量大管饱','面包',1,'e49cda45-c794-4206-bbab-c0b7665269bf'),
('f6c64aa9-27db-4b64-8a76-e1383bed7f15','de52e196-f91b-4b90-86de-f40ae58eebd2',10,'2024-11-17 16:02:52','卖出','面包',-1,'e49cda45-c794-4206-bbab-c0b7665269bf');
/*!40000 ALTER TABLE `inventory_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_log`
--

DROP TABLE IF EXISTS `login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_log` (
  `id` varchar(255) NOT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_log`
--

LOCK TABLES `login_log` WRITE;
/*!40000 ALTER TABLE `login_log` DISABLE KEYS */;
INSERT INTO `login_log` VALUES
('3083984e-bafe-4220-897d-c3f5696361c8','Chrome','2024-11-13 22:12:34.000000','2149754832@qq.com','117.150.0.240',1),
('360c48f8-3de8-49dc-ad6c-128cc481fbc6','Chrome','2024-11-13 22:04:11.000000','shawn_xsz@qq.com','117.150.6.82',0),
('40ecfa71-4113-47bb-a0fe-def1f6be213b','Chrome','2024-11-14 16:59:10.000000','1483618794@qq.com','223.104.119.188',1),
('53c26825-3d89-487a-9207-9b69469cba47','Chrome','2024-11-13 21:37:58.000000','1483618794@qq.com','223.104.119.188',1),
('5f905429-fc37-4241-ba52-f3d00d59d2bc','Chrome','2024-11-16 22:38:11.000000','shawn_xsz@qq.com','117.150.6.82',0),
('66e33455-0fcf-432c-ac3e-4a3f1c8f69c5','Chrome','2024-11-14 09:48:22.000000','123456@qq.com','117.150.0.219',1),
('77115b5c-442c-4c3b-83e7-3b74992572ad','Chrome','2024-11-13 22:18:54.000000','2149754832@qq.com','27.21.10.45',1),
('773c426b-b39e-4a26-92cb-c1f722df1393','Chrome','2024-11-13 22:04:08.000000','shawn_xsz@qq.com','117.150.6.82',0),
('77635d20-aa6a-457e-8e03-805e990241b5','Chrome','2024-11-14 10:05:07.000000','1483618794@qq.com','223.104.119.188',1),
('78357ff3-fc28-4aac-baa6-52d39934021c','Chrome','2024-11-16 22:38:14.000000','shawn_xsz@qq.com','117.150.6.82',1),
('8d7ad4aa-f7be-4bb6-9110-a1cd446200aa','Chrome','2024-11-14 17:53:44.000000','1483618794@qq.com','117.150.6.220',1),
('8e24bd49-1a31-4150-8967-24e27ff11625','Chrome','2024-11-16 18:13:53.000000','1483618794@qq.com','117.150.6.17',1),
('bf1220e0-ef22-436e-8a72-626e73393b21','Chrome','2024-11-13 22:05:34.000000','shawn_xsz@qq.com','117.150.6.82',1),
('bf32ae0d-8ab8-43ee-8dab-f3701c257a03','Chrome','2024-11-13 22:04:03.000000','shawn_xsz@qq.com','117.150.6.82',0),
('cd27ac81-ff45-4b1a-9c9b-e17e54c228c9','Chrome','2024-11-16 18:07:35.000000','1483618794@qq.com','117.150.6.17',1),
('ce482377-9370-4cea-8a99-629e2678ab8b','Chrome','2024-11-13 21:59:45.000000','1483618794@qq.com','223.104.119.188',1),
('cf9cf8fb-f32d-4397-8598-4340dd3de613','Chrome','2024-11-16 09:36:17.000000','1483618794@qq.com','117.150.6.14',1),
('de15e4eb-0ded-4e9c-b8cb-ad2e5cd5c9e8','Chrome','2024-11-17 09:51:13.000000','1483618794@qq.com','117.150.6.226',1),
('e684be5c-48c9-4c99-bb28-94638b0426c0','Chrome','2024-11-13 21:36:58.000000','1483618794@qq.com','223.104.119.188',0),
('ecba313a-ccb2-42d1-8056-ca78a69d5dde','quark浏览器','2024-11-14 09:46:29.000000','123456@qq.com','117.150.0.219',1),
('f25239ea-d879-402a-b188-604eb97424fa','Chrome','2024-11-16 21:28:48.000000','1483618794@qq.com','117.150.6.110',1);
/*!40000 ALTER TABLE `login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale` (
  `id` varchar(255) NOT NULL,
  `commodity` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `pay` bit(1) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES
('fbc747ab-642d-4e64-b31c-6606f957c093','天河水','吉星供应','1000','2024-11-17 16:05:11','购买天河水','33722478863','\0','17872461966',9990);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_log`
--

DROP TABLE IF EXISTS `system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_log` (
  `id` varchar(255) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `busincess_type` varchar(30) NOT NULL DEFAULT 'LTD',
  `ip` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_log`
--

LOCK TABLES `system_log` WRITE;
/*!40000 ALTER TABLE `system_log` DISABLE KEYS */;
INSERT INTO `system_log` VALUES
('0066d84f-387e-4d17-9c0a-e011db3a9a3d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:22:19.000000'),
('00bff018-e591-4811-aeba-18f260e59ab3','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:45:49.000000'),
('0182529e-648e-467c-bc55-9f2653e82605','abc@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 21:23:36.000000'),
('0217234a-f830-4f6f-bba9-525e48d67c8e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:41:52.000000'),
('022ec005-f15b-4a14-81d1-375bbad1bbe2','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 14:59:33.348000'),
('031ab444-46a8-448a-85cf-9b7033987bbc','abc@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 17:03:01.678000'),
('03919c5a-0372-48ad-b9d9-858bc7c85e71','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:07:26.000000'),
('03afbf63-82ed-49ef-99ec-354c60d8a684','abc@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 21:23:39.000000'),
('03becb5e-2ec3-4c9e-9382-61993c4908d8','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.CommodityController.save','商品管理','2024-11-14 17:05:58.000000'),
('03e6bc75-312d-430c-ad33-91212037b6da','abc@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 21:34:47.000000'),
('03f51558-ea20-423a-9a33-c5558bde0b43','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:46:10.000000'),
('04543634-24e6-4cbd-b07c-5ba501ed6c25','1483618794@qq.com','查询','117.150.6.14','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 09:36:18.000000'),
('0482a599-adf6-4be9-abfb-a9c21fd61c03','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-14 10:26:25.000000'),
('04ce3b48-3532-4ea3-8622-92c918afc5aa','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-02-20 19:50:59.325000'),
('053eefbd-66a0-40f0-8e04-3472d60fbb43','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-16 22:41:11.000000'),
('05f7baa4-c378-43ac-b66d-4ed917c68250','1483618794@qq.com','查询','117.150.6.110','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 21:34:04.000000'),
('063873c3-ad52-47c2-a903-3491fdb0292e','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:39:49.000000'),
('0674afc4-3157-4cfd-9a3f-5ad341899bba','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:23:23.000000'),
('06f52601-980b-4f51-97c4-e88843dbf31a','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:24:27.359000'),
('070090ae-5ce1-48b1-baba-c1a6bd468331','shawn_xsz@qq.com','新增','117.150.6.82','com.example.api.controller.CommodityController.save','商品管理','2024-11-13 22:07:19.000000'),
('07030b17-920b-45fe-a459-69559742a66d','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-01-11 13:38:08.920000'),
('0711615f-f8b1-4d8c-b0c5-72b08a90e51b','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2023-01-11 11:08:04.405000'),
('074eb8eb-618c-4f9a-9738-608043273e05','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 23:27:03.000000'),
('07824ae3-73fd-4045-b50c-28c949d35807','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-02-20 19:56:46.374000'),
('07a30dd4-22eb-407e-8a9d-a323d3fcbe11','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 15:58:24.000000'),
('083252f8-81e1-472f-b6e5-f4adce4e5e3b','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 09:11:05.517000'),
('0877caa9-0be0-4065-beb7-b9b16976a0b7','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 21:57:03.526000'),
('088be4cc-6648-4433-bd66-bd17c5a593d1','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:37:08.319000'),
('094d2b95-e7a4-4ec6-b8e2-36e456b73f3e','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 15:58:21.000000'),
('095d6603-8c36-4238-8720-70e16a8cf938','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:42:55.000000'),
('0981f44b-ee3b-44b8-8c55-410886939caa','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 18:11:23.000000'),
('098aa104-ae26-44f8-b001-588de629febf','2149754832@qq.com','查询','117.150.0.240','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:14:21.000000'),
('09ee1842-610c-4ead-800c-b08138eff2c6','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:29:49.204000'),
('0a3e9653-fddd-46cb-b120-7189745e9023','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-02-16 10:30:22.900000'),
('0a6f586f-8a4a-4cda-9b3c-5dda7a060525','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:40:22.000000'),
('0a8311b5-acd0-4262-a8d8-67892e398ced','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 15:55:56.000000'),
('0b9e8aef-e8d9-4c7f-aefe-03190d1ee7a6','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:27:41.000000'),
('0c2420c1-ea6b-4abd-b987-325340d15e8a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:40:19.000000'),
('0c49d9ba-00fc-439e-a122-fc4b750154eb','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2022-12-23 19:05:11.634000'),
('0d126f2d-0821-4e52-811e-c55bf9d77059','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-17 16:06:46.000000'),
('0d16cce9-593c-474f-8ab9-ce7d53d94ac8','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:42:06.000000'),
('0d1f0d04-fc68-48cf-955a-385452717ce6','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 10:58:59.954000'),
('0d4f27ad-c4a8-42e5-9fcf-a0c692ee915e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:01:50.000000'),
('0dee3830-675e-44af-956c-d39c1925a82b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:15:56.000000'),
('0e127759-729d-4762-8e51-016799b91ea1','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:26:11.478000'),
('0e664f54-62fb-4d29-baae-ae497e72bab7','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.CommodityController.save','商品管理','2024-11-13 23:45:34.000000'),
('0e690611-6623-4619-93b8-97f0879e287e','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:47:24.000000'),
('0e6e972a-114c-4b9a-9115-68d70bf8304a','abc@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 12:15:25.465000'),
('0e749bc2-ce9d-4ba4-90ae-a4535caef592','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2022-12-19 13:10:57.580000'),
('0ed15b21-75b1-4c9e-8ee4-6fd0c77be62e','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 10:36:14.000000'),
('0edf5ef8-8e56-418f-8eab-dc9999da237e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:37:08.000000'),
('0f3576fe-0a2c-4a49-ac9b-924b0e4f6002','abc@qq.com','删除','223.104.119.188','com.example.api.controller.CommodityController.delete','商品管理','2024-11-13 21:20:42.000000'),
('0f86f7f2-68dc-444a-a528-f1530e51525f','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:08:53.000000'),
('0fa70433-d15b-4c14-a1a1-37fa121123ca','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 21:38:13.000000'),
('0fae65e7-e913-4220-90dd-5155dc538fe4','1483618794@qq.com','新增','117.150.6.50','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-14 01:46:19.000000'),
('102ee888-bdbb-434d-948f-448355e83781','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:06:26.000000'),
('103dd1bc-2c53-4177-bf8d-deb9a8c3f89c','1483618794@qq.com','新增','117.150.6.50','com.example.api.controller.CommodityController.save','商品管理','2024-11-14 01:37:06.000000'),
('1117849b-52d1-450a-97ff-297188eacbb7','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.EmployeeController.save','员工管理','2024-11-14 10:07:09.000000'),
('11a1e510-11e1-406b-b377-4bc0076b538e','abc@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:28:03.896000'),
('11a3e607-18ee-41da-bcba-2c8b419eb5d0','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 11:04:38.532000'),
('1206c582-8a93-48ca-8b1e-5510c8f10c8e','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:58:23.000000'),
('1247e675-7148-4e63-9d97-2eb10f172383','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:49:12.000000'),
('12ba136e-da1c-4e56-93b1-caa50b1ced20','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 09:18:41.743000'),
('12f8f420-e25d-4e5e-95ed-a58f20b5427e','abc@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-18 11:37:41.214000'),
('131c9288-d1e1-4ad8-923a-4a8dbcc14409','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:47:19.000000'),
('1392905c-0df5-47c9-ae69-9683238e5822','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 22:40:36.000000'),
('13b3dd14-ce29-4442-90f0-fc83179fd467','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 17:06:36.000000'),
('140fe885-76d1-4f52-94c3-683ed85e3549','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 11:01:42.000000'),
('147b2e87-4e16-463f-ab2e-a842598ae111','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 21:41:39.000000'),
('1518cd8f-0ab0-48c9-9c6b-7b24bf0a1e0a','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:29:28.747000'),
('152742ba-d32d-4ec3-8954-5ac342900137','abc@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:39:02.791000'),
('164d9a8a-4361-40cb-a72e-7f3f09393275','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2023-01-11 11:07:54.695000'),
('1691bf41-7cab-4e2d-9ca3-1ba1788f1901','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 09:31:52.000000'),
('17155240-f711-4ad3-beaa-caf0ed5c93d9','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:16:35.107000'),
('1750858c-467d-4a0c-9e41-f6d098c185d0','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:07:25.000000'),
('175fb740-7f4e-4c2f-a48a-fbc6801d1509','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:25:23.000000'),
('176dc589-c2f5-4bb4-8d76-6a6d4f1dad38','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:08:10.000000'),
('17ac193d-b68e-48a2-a60b-f78e5e1505f2','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 21:42:04.000000'),
('17c53946-6454-4db7-a5ab-0562269aa8ab','1483618794@qq.com','查询','117.150.6.14','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 09:36:30.000000'),
('18241264-27a2-4bd7-9dc1-d82f1517ec75','abc@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:20:38.000000'),
('187a6ed0-8352-4426-b87d-99e31b977714','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 11:19:07.892000'),
('189cec0a-d3ea-4c70-8c60-9151b6cf2937','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:34:42.856000'),
('18faf514-b4b7-485b-9e03-8f55e7d1ed74','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.EmployeeController.save','员工管理','2024-11-14 10:07:12.000000'),
('19629465-d4b0-4972-99bb-dc7b497b2357','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:39:02.459000'),
('19998a8b-79e8-4725-878d-87f4ca22a491','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 12:56:21.871000'),
('19a837a1-4ea8-471c-91bd-ba5e72603b98','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:22:48.000000'),
('19f2d68d-88cb-45e7-b8e7-40aa33bc9abb','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:09:49.000000'),
('1a1a8ca4-dd00-476d-8202-7050968b89be','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 10:15:25.052000'),
('1a23b2a0-3c24-4ced-b5cc-1268d374c79f','abc@qq.com','查询','223.104.119.188','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-13 21:21:28.000000'),
('1a33e0ed-78e6-40ce-b8dd-5297e2969814','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:56:41.000000'),
('1a630261-fd18-4823-83d0-f4e01ebc9500','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:49:10.000000'),
('1a720481-698f-46b7-bf9e-f76f01c3c627','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 09:12:20.000000'),
('1a801db2-06ab-47b5-bbe9-17b1a55b567c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-01-11 13:15:42.052000'),
('1a9dc1c4-17a8-450b-bc64-cde60c0f245b','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:47:32.000000'),
('1ab88e03-3664-44f5-9647-4272358a33f5','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:20:35.000000'),
('1abccede-c3f2-4590-a4c6-4fb217591fe4','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2022-12-19 12:48:25.474000'),
('1b6eff65-712b-4ec6-b252-2e73f5e531e8','admin@qq.com','新增','127.0.0.1','com.example.api.controller.DistributionController.save','配送管理','2022-12-19 12:58:39.642000'),
('1c238c34-ec10-4ad2-aa50-3a900d1c0ff6','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:21:58.000000'),
('1c472a75-72cf-474c-987c-09ad35e35bb6','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:20:23.990000'),
('1c4c3b10-8668-4426-9653-c1a06fa2b47d','abc@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-18 12:15:45.300000'),
('1c7cce28-7bcb-4be2-8363-06b61ffb671c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:11:29.000000'),
('1cf829e2-040c-4334-9d2c-15faddad6cdf','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:59:11.000000'),
('1d1db78d-54d1-4d98-8f67-7bd4a3188959','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 11:19:36.060000'),
('1d39d1f4-3461-4127-9315-97dcbc7d348c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:26:59.000000'),
('1d3e6c4d-ffd7-4382-b215-0b8428b79587','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 11:07:45.793000'),
('1d600b6e-6d69-4c77-a6f1-d2a961567167','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:30:09.000000'),
('1da48f96-6f9a-4b00-99bf-cb215a974de6','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 10:06:30.000000'),
('1e02d668-31fc-4581-be34-9a7110a3bc99','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:29:13.000000'),
('1e149a47-a740-4fba-a386-a4e97f773628','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:05:48.000000'),
('1ecab365-361b-45d1-a07b-8bf0cb23666c','1483618794@qq.com','删除','223.104.119.188','com.example.api.controller.CommodityController.delete','商品管理','2024-11-13 23:45:40.000000'),
('1ef97b7a-fea8-4710-856a-1f4e4597b120','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 15:54:13.000000'),
('1f48241a-a5c8-4855-aefa-3cc0b1acd734','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:06:03.000000'),
('1f4ea835-2e97-4d41-94b0-c195aa882708','2149754832@qq.com','查询','117.150.0.240','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:12:50.000000'),
('1f7e4027-0abe-40aa-aed2-c4701ed58dc1','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 18:46:58.000000'),
('1f9c1f26-7bf7-4133-9dc3-06b9242753c0','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-02-20 19:56:44.467000'),
('1fcb8232-612a-4166-bb2e-1e8e2034577d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:36:18.000000'),
('1fefe0b2-b9df-4b7a-bff8-53fd5a138c02','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:30:06.000000'),
('20490a4c-a5a6-4056-a573-6eaf3a396bff','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:08:54.000000'),
('205c53d6-d386-4512-89dc-84394a770be4','1483618794@qq.com','查询','117.150.6.110','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 21:48:32.000000'),
('206f05d8-2362-4f74-9229-6f72389a16e6','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 10:03:27.726000'),
('2070e593-81e8-498c-9011-bfe878cce244','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:39:50.000000'),
('2087ff2a-3c06-454e-a56d-e9576e1b54cc','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:16:28.053000'),
('20a280a3-3733-4097-ab14-2017bdbc45c3','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 11:19:03.541000'),
('21cf5237-c07a-498a-8a87-9bd74d836983','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-14 10:21:30.000000'),
('22d80151-f6aa-416f-9b10-70ff8608ecbb','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:33:55.000000'),
('22f051ae-e9da-4487-8d32-ae579fbab261','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2023-02-03 10:08:53.122000'),
('22fc89a2-f307-47f8-bce4-4e8649065590','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-11-13 22:40:49.000000'),
('230bbf27-928b-4c8b-8c41-5ec8100c2d82','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:18:59.066000'),
('2366fb68-b44d-4d7a-a6ea-3522291f1593','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 21:40:21.000000'),
('23a9e694-5b98-47ba-8c0d-55043d7b66f9','abc@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 21:21:05.000000'),
('23f200ae-bb28-4deb-8955-9e0b7965d031','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:47:38.000000'),
('2417039d-8208-4981-a3ac-61ff4bfc6cb1','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.CommodityController.save','商品管理','2024-11-14 10:06:02.000000'),
('24382b13-52bc-451d-b283-af925ad8fd1b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:49:47.000000'),
('2485754b-4864-40e2-9d13-23599b3f3736','1483618794@qq.com','查询','117.150.6.110','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 21:34:06.000000'),
('2502147b-736a-46fb-9d8b-9c595ae90d49','2149754832@qq.com','查询','117.150.0.240','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:12:35.000000'),
('254d90e6-4cff-4d1e-9dad-af1542ea573a','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:26:12.000000'),
('254f9775-fe12-4fd8-82bc-4612350046a3','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:39:57.000000'),
('25946777-5079-423e-9bad-5a39ecfc8a66','abc@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-18 12:15:45.235000'),
('25a8eb7e-55f5-4ae5-b408-f0994680202d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-14 10:26:27.000000'),
('25abf210-f2c8-40b7-a026-4ba247333b4f','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 23:42:23.000000'),
('2642b2fa-9e1c-43b7-838f-2af79a77939a','1483618794@qq.com','查询','117.150.6.14','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 09:36:27.000000'),
('2660ff69-63ad-43c6-aee5-6f882df70a6a','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:07:20.000000'),
('266eac6c-19cc-4e44-bac9-e45624415eab','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 16:01:33.000000'),
('26819e0b-7ae7-4d23-bfde-eca7b34cc9d9','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-19 14:59:37.515000'),
('26a081b9-b630-4864-8ded-4e0c9e88d3aa','abc@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-18 12:15:56.064000'),
('26baecb2-72fe-431d-832f-9e77be27c694','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 23:25:23.000000'),
('26ce72b4-ff57-40a9-b3f6-5c89156ac15e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:22:46.000000'),
('272cd94c-dcb4-4bf4-8e86-2d06fb29297a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 10:13:32.000000'),
('275817ea-15f0-4875-b727-d754a4053d2d','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:35:05.878000'),
('2760b8cc-ab8c-4beb-9625-185d3221f933','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:29:59.663000'),
('276e8e2a-aea6-4130-bc30-63d60ef22726','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:39:13.000000'),
('278062b7-2e85-4a0c-86cf-303beb508dfd','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:20:21.000000'),
('27a9553a-971f-4f46-8559-e8d3a4466ff9','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 22:32:02.000000'),
('2896a2d4-bb91-4e9f-9443-7fa7ed4f9a02','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:34:55.000000'),
('28c8b5c5-057f-408e-8dad-8feba7770380','2149754832@qq.com','查询','117.150.0.240','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 22:12:52.000000'),
('29412ded-1da6-456d-8c83-edc74e03a603','1483618794@qq.com','查询','117.150.6.110','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 21:29:35.000000'),
('29acc5f8-cdfd-4232-89eb-de0becebd7f8','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-14 19:20:21.000000'),
('2ae76013-4dcd-4ab8-a9a9-b711d16f9419','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 13:10:40.933000'),
('2afc457d-cbf1-420f-8c17-d36f9f56deb3','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-01-11 09:18:49.210000'),
('2b24e668-b1bf-4bf2-a890-e9abb953834f','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-19 11:19:40.142000'),
('2b3e74e2-938b-404c-b051-3158dc457619','1483618794@qq.com','新增','117.150.6.50','com.example.api.controller.EmployeeController.save','员工管理','2024-11-14 01:26:42.000000'),
('2b59abf3-f3fe-4475-9a27-8145dadc3306','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 11:20:59.984000'),
('2b7e5f60-f3e6-4ee5-a4a2-5067a46d8fa2','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:32:33.000000'),
('2ba0850f-86cb-48b9-9f57-978a039ba43c','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-13 22:10:04.000000'),
('2be97f8d-d032-4894-a054-70e6e7996f68','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:09:45.000000'),
('2c5746c8-9e21-4c0c-8e8c-5aa4b9e70966','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 10:24:01.000000'),
('2c6c99a0-c2fa-41fe-bf0a-495f2821f1fe','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:37:59.000000'),
('2cebfee1-a906-4cad-b585-c3f0f456a0cb','admin@qq.com','新增','127.0.0.1','com.example.api.controller.CommodityController.save','商品管理','2022-12-18 11:29:28.045000'),
('2de431fa-e586-4d40-8d2a-0e39fa308464','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:27:14.000000'),
('2e405766-8216-4f01-8bf7-d272fe645a57','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:40:30.000000'),
('2e66b920-2913-441c-a79a-7e1c98331361','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-17 16:06:14.000000'),
('2e8b2ffb-b34e-48b4-a5b7-12eca06ab0f4','1483618794@qq.com','删除','117.150.6.50','com.example.api.controller.CommodityController.delete','商品管理','2024-11-14 01:37:24.000000'),
('2ec30356-d476-49b2-802a-f923818eedbd','shawn_xsz@qq.com','新增','117.150.6.82','com.example.api.controller.EmployeeController.save','员工管理','2024-11-13 22:08:09.000000'),
('2f8c7838-775c-4b8a-82a1-6a73be964abd','admin@qq.com','新增','127.0.0.1','com.example.api.controller.EmployeeController.save','员工管理','2023-01-11 11:07:38.361000'),
('2fa51b9f-8841-485d-a4a2-7bf33af92b1c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 11:08:12.464000'),
('2facd9ba-9c2b-48f6-8a52-e8355167fe14','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:21:53.000000'),
('2fb16d2b-1058-4b2e-91c1-348c5a62554b','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:06:07.000000'),
('2fbc61b1-3c80-4ad1-a528-533d469ecef3','abc@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:20:44.000000'),
('30524118-cc56-4897-b3ac-f3ca76da34a9','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:29:09.000000'),
('30d3ca8e-49b9-43af-8f86-33633ee2ab8c','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 09:55:17.000000'),
('312bb480-7a26-43bd-9f05-e9558cf55995','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 10:57:34.000000'),
('315f7416-5a4f-43ac-8803-40f8b831d19b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:45:57.000000'),
('31d038fc-ce82-45c9-8aaa-b40f92882625','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 11:08:28.522000'),
('31ecd48c-7a32-4167-a683-e6bdacf785e5','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 15:36:52.551000'),
('31f33ee2-5bb3-4790-8c31-ba076f834f55','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.DriverController.save','驾驶员管理','2024-11-14 10:21:40.000000'),
('327dc685-b351-475b-8bc6-ce8d47d7f3e6','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:09:10.000000'),
('32ba899c-4984-4d13-a504-3b4ff630de37','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2023-01-11 10:16:36.294000'),
('330514f4-ff45-464b-8fe9-97b6a8f20866','1483618794@qq.com','新增','117.150.6.50','com.example.api.controller.CommodityController.save','商品管理','2024-11-14 01:38:10.000000'),
('3309b3c5-5e12-44c1-844a-54e4de76736b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:27:03.000000'),
('33cf72b3-98aa-4975-9834-38c3b61c99a2','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:20:44.559000'),
('34c1c0d3-c904-44fb-bac9-eab7e821762c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:35:05.000000'),
('35772f20-1ba2-4ae5-a85f-ccb69c683d9b','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:47:29.000000'),
('362a3857-a1b8-44af-b36f-99617263287b','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.DriverController.save','驾驶员管理','2024-11-13 23:43:53.000000'),
('3654953e-6d4c-4c8a-afae-a9ac4f66e393','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:39:59.000000'),
('368f7709-d5fb-4210-bbcb-e0ad7bafd3ec','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 10:22:51.000000'),
('36c4cc87-4ac3-4785-8954-cf43bc71843c','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:40:00.000000'),
('370ace6e-0881-4a09-b250-eea61f98a854','abc@qq.com','查询','223.104.119.188','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-13 21:30:30.000000'),
('3763d022-6933-4b18-943a-e8d5e8888050','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 18:15:05.000000'),
('378de0b5-2c94-4f36-a17b-1771daed752d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:17:32.000000'),
('379904ff-e12d-41db-b73b-7cd13c7315a1','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 16:01:33.000000'),
('38cedbb8-228f-4965-ad15-7fd5c9162781','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2023-01-11 09:20:28.320000'),
('3906d078-a520-45c6-967a-4158107dd8b5','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:10:55.388000'),
('3917171e-fdff-4840-85e5-ca5a7a601d4d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:32:23.000000'),
('39d28740-9ea9-4c0b-b55e-724b0039217c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:59:48.000000'),
('3abc4b26-648f-4c4f-8594-a159adc1b77a','2149754832@qq.com','查询','117.150.0.240','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:14:24.000000'),
('3afd4ee0-1b6c-4e87-8b13-743d4b106eb0','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:48:33.000000'),
('3b9a89c0-a974-4d6d-ad2e-ddbf3c5c7e64','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:30:07.000000'),
('3ba21f7a-f36a-430b-9929-70a37037c6eb','abc@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:20:25.000000'),
('3c275775-2369-49ca-9462-0c615a397aea','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:41:51.000000'),
('3c2cc710-5fab-45a1-8403-4944ccfb9842','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:47:16.000000'),
('3c33270f-da9d-432e-a08f-4e4eabaaf0d2','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:55:50.000000'),
('3c57834d-a946-42f6-bf47-e1c0077e3670','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:33:58.000000'),
('3c672095-3fb4-499a-97bb-a75d7b15f60d','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-02-20 19:56:45.661000'),
('3d01c743-3b7e-46b8-aca2-f25e726b3216','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-01-11 09:18:25.728000'),
('3d0afa0b-1112-4a85-9f96-db48a0ceaacc','1483618794@qq.com','新增','117.150.6.41','com.example.api.controller.CommodityController.save','商品管理','2024-11-17 15:54:12.000000'),
('3d348641-6af5-4b00-a2d7-1d554a11f373','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:20:29.946000'),
('3d548509-df88-4305-ba98-cf42f57f0339','admin@qq.com','新增','127.0.0.1','com.example.api.controller.DistributionController.save','配送管理','2022-12-19 13:02:16.459000'),
('3dbe797b-6c60-4f5a-aa89-51614814c47a','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2022-12-19 13:01:36.018000'),
('3e3f8bba-6631-4f08-b758-d71cb893b5d5','1483618794@qq.com','新增','117.150.6.226','com.example.api.controller.EmployeeController.save','员工管理','2024-11-17 10:58:48.000000'),
('3e458605-cad4-46b0-b760-c67af93f5e26','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-20 19:58:52.210000'),
('3e92062c-3996-46e3-a2d1-78e87518e61c','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 15:58:12.000000'),
('3effe778-f2ac-401f-a4fc-208e61fc8320','2149754832@qq.com','查询','27.21.10.45','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:18:55.000000'),
('3f27f1ec-4ebb-4258-a224-a1243a36a201','admin@qq.com','删除','127.0.0.1','com.example.api.controller.CommodityController.delete','商品管理','2023-01-11 13:15:34.845000'),
('3f46294e-e2f1-4fa7-b9c1-57c212eb9bd2','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:11:28.000000'),
('3f6c948f-5227-4020-9a46-bdc93f0d1f98','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 10:16:27.597000'),
('40259f31-a500-490a-95b3-c896840c3a86','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-16 10:30:20.213000'),
('405950ed-3091-43d6-bc56-2a6786da7e9c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:18:34.088000'),
('40961fc8-161f-4e74-8446-2ab4746e9dcc','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-14 10:21:46.000000'),
('40a26797-eaae-44b7-9fdf-656271b443e2','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 19:59:53.000000'),
('412d46e8-de45-482e-a2c7-a67f0cb32aac','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-18 11:36:37.580000'),
('412faf77-7cb5-4098-8474-ae743f4ade8c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-02-03 10:08:39.314000'),
('418af412-c363-400e-abaa-2d0d65368638','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 10:36:23.498000'),
('41a23c63-984a-4c2d-b0a6-761583c48622','2149754832@qq.com','查询','117.150.0.240','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 22:14:21.000000'),
('41a34f9f-86ad-4a4e-8df1-2b061e97d8bc','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:18:14.000000'),
('41f5a148-ccb4-4a16-9443-254fe4dfcfe2','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:35:00.000000'),
('41f9bfd8-e094-4c12-bc96-d1a2ff0e9f77','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:18:13.000000'),
('4286d9ef-9a4c-4be5-b846-e6dad0699f9d','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 09:18:28.128000'),
('42ab6cda-fa60-419e-90f0-c7e8b2075121','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 11:02:23.000000'),
('42abf895-b859-48fb-97ec-3c01b0f56689','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:05:09.000000'),
('42e534ad-fc5c-4c6c-9db2-f149b7b94b18','2149754832@qq.com','查询','27.21.10.45','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-13 22:20:30.000000'),
('434e341d-3579-4497-9d9f-916212e0fe4b','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:40:22.000000'),
('43978ffa-4fab-4069-ab75-1d24df2a6efd','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:15:14.000000'),
('43a9c757-823a-49cc-9545-2971a33baa87','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 11:06:00.026000'),
('43e6af80-6b57-4dd5-ad44-3dfab7f1b7ee','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:53:07.000000'),
('45320187-2efc-4cf8-bdf3-255c9ba45f5c','1483618794@qq.com','查询','117.150.6.14','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-16 09:36:25.000000'),
('45b8f164-03a4-4bf7-a178-4249d56985b2','1483618794@qq.com','查询','117.150.6.110','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-16 21:29:03.000000'),
('4685b81e-4229-41ed-94b1-7a90118b2099','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 18:42:03.000000'),
('46d7d8f0-dab0-4ad7-bfce-51b0493930f4','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 15:58:12.000000'),
('46f9e33f-50f0-489b-a043-0cc7d135de5e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:38:18.000000'),
('47c6b923-d8bc-4d96-a43e-81a5066d857f','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 23:30:06.000000'),
('4881f44b-c068-4367-9ccc-d4ac3aad6480','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:05:50.000000'),
('489475ef-b07a-427c-bf78-c2d287f1e8be','abc@qq.com','删除','223.104.119.188','com.example.api.controller.CommodityController.delete','商品管理','2024-11-13 21:20:38.000000'),
('4897d888-907b-4aed-9e62-136f6c7bd38d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:11:12.000000'),
('48d387fd-5948-4558-9a54-ce4cb92c6322','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-19 11:19:31.867000'),
('4907d989-ffdd-4b73-9b43-d991e9fb0a70','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:50:53.000000'),
('491e8e68-6c4e-4f22-8278-8ec06796ab12','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-16 10:31:56.789000'),
('494f3d70-1d76-48cb-b630-fb74b1b0f766','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:28:40.000000'),
('4990230f-7a78-4d75-bd5d-74dd255557f1','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 11:08:08.819000'),
('4a958c89-7537-419f-8a3c-26d5454b0134','admin@qq.com','新增','127.0.0.1','com.example.api.controller.DistributionController.save','配送管理','2022-12-19 12:59:22.957000'),
('4ae005f3-a2f2-4ae2-8f71-8d76d74e5dee','admin@qq.com','新增','127.0.0.1','com.example.api.controller.VehicleController.save','车辆管理','2023-01-11 13:38:19.566000'),
('4af110c7-9d7d-4958-819b-d1186cd2e090','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2023-01-11 09:21:00.124000'),
('4b017de8-ab07-496e-a399-da9afe4b79d7','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 09:51:27.000000'),
('4b266054-8109-483d-91d3-b3e9457e89f2','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:28:32.927000'),
('4b3e167a-542a-4d4c-8962-ac45fbb2e950','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 09:18:40.423000'),
('4b84c346-6330-4e4d-b477-56ff005add6b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:25:26.000000'),
('4b8a5e42-f027-4115-8d0d-8fb86e36dd51','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:40:40.000000'),
('4b97d469-01c7-4ddc-a66e-d5e8f22f3d62','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-01-11 10:16:42.295000'),
('4beef1aa-1a34-441d-84a0-c51dee671de4','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:09:02.000000'),
('4c162d47-88d6-4483-a45c-0b48b2b56410','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:08:11.000000'),
('4c41f964-a415-4c8c-bfcd-a0b90d50649a','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:21:10.080000'),
('4c5a201b-e749-450e-962d-05d239e9917f','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-19 14:59:35.709000'),
('4c68ac20-b48e-400f-a9e9-4c691bcc9cab','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-17 16:07:00.000000'),
('4ca0dd67-fa02-4495-9f7c-5fe414b0720f','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2022-12-19 12:46:47.691000'),
('4cd754ca-3123-4ca9-902f-1f5c6ae1ad1c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:49:49.000000'),
('4d1042e8-7999-4348-bd74-1feddb918af0','abc@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:21:10.000000'),
('4d685efb-8c0d-4ee8-b0fa-c090b8f7a28c','1483618794@qq.com','新增','117.150.6.50','com.example.api.controller.EmployeeController.save','员工管理','2024-11-14 01:39:53.000000'),
('4d92b5fb-8428-4cfd-bebb-459a9255be90','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:29:21.000000'),
('4dc2898c-8411-43e4-a1e7-24fe735f156b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-13 22:47:57.000000'),
('4dd0a93f-b1db-429e-aecc-00184ee8da03','admin@qq.com','新增','127.0.0.1','com.example.api.controller.CommodityController.save','商品管理','2023-01-11 13:35:52.107000'),
('4df957e4-6325-42b2-a381-4563a67be39b','2149754832@qq.com','查询','117.150.0.240','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 22:16:08.000000'),
('4ec70883-e787-42e5-8c56-d3ca309c98ca','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:15:39.853000'),
('4f297bc1-8424-4d2b-9bc3-84c17500a892','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-19 14:59:35.712000'),
('4fa718e6-c11b-4867-8240-bfd3d083f608','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:49:16.000000'),
('4fc7b4e1-51ca-467c-960d-aa006e0df18c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-01-11 09:18:30.097000'),
('50233afd-163d-44de-9a8e-4aec7d7216d2','abc@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 21:24:23.000000'),
('5047c752-e010-4245-b948-569783561c09','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 12:58:26.204000'),
('50820b78-bbc7-4d22-9b9b-a6c6fc8ccc41','abc@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 21:20:57.000000'),
('509b6d47-eb41-489d-99c1-58745b767433','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-20 19:56:50.377000'),
('510ee537-18d8-49ec-af99-65c2448bfca6','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:43:00.000000'),
('5163da44-2677-4fd8-bac8-0c8c997b3255','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 21:41:39.000000'),
('519b3f8b-640f-4222-badb-af223a5029ae','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2023-01-11 13:38:53.725000'),
('51aacf1f-5be3-4238-bd0e-5a93f897db9d','1483618794@qq.com','查询','117.150.6.14','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-16 09:36:40.000000'),
('52144fd6-dd4f-4547-a499-83f8ac3352c2','1483618794@qq.com','查询','117.150.6.110','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 21:46:26.000000'),
('535fc79e-3e5b-4efe-8b98-4683f0d82f2e','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:10:52.320000'),
('53d8f677-e270-42be-95cd-c49b072f84af','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:08:26.000000'),
('53e15098-b2fb-4590-88ce-c462c9aa8430','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:16:05.984000'),
('54b63c53-627a-4bcd-9b58-9b0539277dc3','1483618794@qq.com','新增','117.150.6.41','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-17 16:02:01.000000'),
('5514e7a9-3338-428c-a73c-ca5197090caa','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-02-16 10:30:22.084000'),
('55850f25-bd6f-4e34-9b3e-9e8901c29560','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:50:51.000000'),
('558c92ed-86e8-434d-b664-e9a40c265154','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-20 19:56:43.500000'),
('56be44a7-ad6b-4c9f-bd5e-1ca515065951','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:12:47.209000'),
('56d41616-383b-4a81-8e7c-a8d5ae30dbf0','shawn_xsz@qq.com','新增','117.150.6.82','com.example.api.controller.EmployeeController.save','员工管理','2024-11-13 22:11:28.000000'),
('5750f90d-9089-42a4-9797-9ff3b9e90836','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:27:11.699000'),
('575fa448-5a4f-4446-b3aa-00b5db02b095','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 16:03:23.000000'),
('57ab9bff-1c54-4740-98ea-59088a585800','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 23:42:25.000000'),
('57af477c-1242-4d08-8244-8df8f48851ff','1483618794@qq.com','查询','117.150.6.110','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 21:28:50.000000'),
('57c199bc-56b2-4822-b2cb-2a986c6e3854','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:16:01.501000'),
('57e05e99-c09b-458c-bada-c0747c88f056','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-13 23:29:55.000000'),
('583c15e4-01f3-4813-99ef-bcd4f1440b1a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:35:29.000000'),
('5870e435-a267-4666-a088-4711979f82f4','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 18:56:48.000000'),
('5872cf21-fc5a-4e7a-8b9f-ed046a9d2037','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 23:27:14.000000'),
('58ce1a29-8dbe-4800-a5b8-ee72d465d41d','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:05:09.000000'),
('5958f18b-d986-49f2-a24c-4a2151386a2f','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:45:56.000000'),
('59636bf3-923a-40de-9658-e29c30fcc5bc','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:02:17.474000'),
('5996072a-ef94-46f4-9962-5d837a3203cc','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:46:20.000000'),
('59ba5bd6-2459-4a63-86c6-8b6cdfd401f5','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:06:01.000000'),
('59dd3fc3-0722-4f29-a9b9-03c6d9e39b42','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-13 21:38:31.000000'),
('59ed5fe8-70d7-4b1a-8a29-e6c0f8e3161c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2023-01-11 09:23:34.586000'),
('59f84ffa-2d5e-4a73-a087-eff7576077ea','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 22:30:13.000000'),
('5be162cd-6932-419f-a301-36573f4efa83','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:12:45.451000'),
('5c25be97-77d4-4618-ac9e-725a422b350f','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:39:08.000000'),
('5c990212-4723-4ed2-9236-e65e64250b0f','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-01-11 13:38:19.649000'),
('5cca92dc-618d-42bc-845a-f031023ea875','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-01-11 11:08:02.124000'),
('5cd92ea4-7243-4a8f-a332-7677b4780e71','1483618794@qq.com','删除','223.104.119.188','com.example.api.controller.DriverController.delete','驾驶员管理','2024-11-14 10:21:45.000000'),
('5d012dfa-cf6b-4db2-9a66-60a41078146f','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:36:11.000000'),
('5d01602d-5cd3-4cfd-8a40-ab44651d5e86','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 10:24:19.000000'),
('5d1ed86b-6a65-4726-ab76-51f86620e350','abc@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findByLikeName','商品管理','2022-12-18 17:03:10.144000'),
('5d2324b5-ddf6-4504-b0e0-b558a2cf4c8c','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 16:01:35.000000'),
('5d3b06cb-e4f9-449d-a015-c7baf59774da','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 18:50:51.000000'),
('5dd519bf-6334-4039-b74d-c3e05d52165b','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2023-01-11 09:22:55.919000'),
('5dd898df-f133-4968-9b2a-f19cc998a459','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:28:38.000000'),
('5ddaaa2e-845e-4280-afc7-a61ad8a0b0ad','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 09:18:25.728000'),
('5e10f646-15de-434b-a2c9-e057a0d8c194','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 13:36:09.637000'),
('5e8572d9-1387-4d44-b65e-e5ec5dcd8ec6','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:09:08.000000'),
('5e8c63bc-8f24-49ee-bc52-c256b09b8b7c','1483618794@qq.com','删除','223.104.119.188','com.example.api.controller.EmployeeController.delete','员工管理','2024-11-13 23:46:07.000000'),
('5ef76941-8817-4c7f-9ceb-896d0885f30b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 22:49:47.000000'),
('5efcb6a9-24b8-48d0-b698-f09448f08891','abc@qq.com','删除','223.104.119.188','com.example.api.controller.CommodityController.delete','商品管理','2024-11-13 21:20:41.000000'),
('5f347fa2-f2cf-4857-98b4-afd1f99450af','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-01-11 10:16:37.153000'),
('5f9c6afb-bf0f-4a92-9a8c-f80204784d57','1483618794@qq.com','删除','223.104.123.5','com.example.api.controller.CommodityController.delete','商品管理','2024-11-16 22:06:19.000000'),
('5fe8d44e-cb13-4007-8fca-860a9e4838a1','abc@qq.com','新增','127.0.0.1','com.example.api.controller.EmployeeController.save','员工管理','2022-12-18 11:38:16.711000'),
('6010ec17-8a3f-4597-8819-f1a80427b2a5','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 20:24:14.407000'),
('602100e8-9a16-4d24-9134-f2d21b376855','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-02-20 19:56:41.891000'),
('60728bde-118a-48e5-b37a-68781edc90a1','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:42:17.000000'),
('60ddac54-63d9-492c-b567-bb46a9dd3080','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:22:50.000000'),
('60e51198-24de-4803-b030-f7c91d1025cc','1483618794@qq.com','新增','117.150.6.226','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-17 09:32:19.000000'),
('60f76113-5a05-4fe8-93ab-d05170d38f41','admin@qq.com','新增','127.0.0.1','com.example.api.controller.DistributionController.save','配送管理','2023-01-11 09:23:25.714000'),
('61021f07-dad4-43b5-9b01-a33d06575431','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:37:15.000000'),
('610ccf87-1757-498c-bd8d-1b91db31e976','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2022-12-19 12:47:18.969000'),
('61287a93-c46f-4205-8b2b-c5ddb901c9b4','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-19 14:59:38.573000'),
('615b26ab-abdb-4d2a-9950-38ccbc6c0832','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-02-20 19:57:16.179000'),
('61c44510-50ca-4d27-98dd-890d3e14762a','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:10:56.000000'),
('61fa3e17-ca5e-4696-a048-2f022d16d2a9','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:38:32.000000'),
('62027433-5b3f-4d27-8015-7f44115115d9','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-02-03 10:08:39.317000'),
('62052353-d251-4af3-808e-81855ef072d4','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 12:48:03.923000'),
('62f5f879-0ea9-4749-a3f0-d44dfb1b944a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:29:20.000000'),
('630a1510-df43-4110-b34f-81daf712f432','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 09:27:57.000000'),
('638b8bfe-1cd8-4eaa-a571-e5f8e5642a56','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 10:17:37.000000'),
('63a3a61c-d18e-4fc3-9b7b-9b90bd66f485','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-19 14:59:38.571000'),
('63cc1b46-845e-40c5-8581-72c36421bf4f','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 10:07:36.000000'),
('63d6284a-a547-49b5-a26c-0fb44242b93b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:14:14.000000'),
('63f1f675-d53e-4abd-a8da-b9b96c3a15cb','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:19:07.000000'),
('64363773-4c6d-414f-a8bc-987f7a917452','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:15:34.884000'),
('6436f3ba-3e87-4057-81a0-7940369dadc8','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-17 23:50:43.855000'),
('6465e428-f585-4d6e-b5d0-a3cfc2d6fbd5','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:30:06.124000'),
('64b23227-39a7-4d43-b619-c3df8dfd097c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:35:32.000000'),
('64c0683c-220a-4c19-9103-ccd99338ee34','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:40:02.000000'),
('650487e1-9ebd-4e94-8253-790e1697b0d1','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-03 09:43:44.027000'),
('650bc23e-46b2-4261-85f1-3dfe78f812a2','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 09:32:19.000000'),
('6526f4fa-90d6-4603-8eda-3da8cec98872','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 11:02:33.000000'),
('65841cb2-f744-4326-8b3d-6e6ef338bb2d','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 09:29:06.000000'),
('659ab2bb-4701-43ed-b4c1-3fa5695a7a20','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-20 19:58:46.979000'),
('65ae6ee8-23dc-452a-ba58-fc820a2151db','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2023-01-11 13:15:57.298000'),
('660a65c1-38d9-402d-ab82-8b80314b826f','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:05:39.000000'),
('664c6fd9-36a1-4f2a-b531-3d071a7763a6','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:47:12.000000'),
('67a4a7b1-9f84-4838-8401-ac2548c07f4c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 12:47:11.662000'),
('67fd1484-fd81-4152-b33f-2f2f1b187fe7','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 22:25:02.000000'),
('67fd385d-507d-4435-9d35-da18958e4fa6','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 10:16:19.068000'),
('682be452-38f0-4cc4-9164-896316dca4d3','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-02-20 19:58:50.082000'),
('68307b6b-305d-4292-b2e5-bbd8b08588af','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 15:51:01.000000'),
('6854cf7f-b655-42d1-b978-de6bf51a9c2c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 09:07:37.027000'),
('68941b63-292b-4a55-b6ec-e7f8015b1ad3','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-17 16:06:30.000000'),
('68c68699-1a28-4f61-b1fb-121c4c7cdf8d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:01:48.000000'),
('68fa3c76-a8ac-471e-b852-f3d202c08c48','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:25:28.000000'),
('691f3f4b-e8b4-470b-b6bf-72b9cf45ca50','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 22:11:28.000000'),
('69891b38-ae4d-40ef-b2c1-726ca832b400','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2022-12-19 13:10:27.866000'),
('6a3399ae-96f5-4bd7-b271-2da69e495d20','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 21:38:12.000000'),
('6a44673e-a36a-425c-b503-c28a871778a1','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-02-03 10:08:40.798000'),
('6a54b86d-f805-47e3-a51b-92e515b86f1a','2149754832@qq.com','查询','27.21.10.45','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 22:20:00.000000'),
('6a60ef62-e4b6-40a9-b7aa-0a85db334d28','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:39:12.000000'),
('6a76b719-d575-4262-b600-0c50a31018e4','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 15:58:10.000000'),
('6ab0a4a1-6cdc-4d57-baba-0f53adb9158b','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 22:06:09.000000'),
('6b06a5f0-5397-4274-b4b2-2af0efdc2ed5','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:55:59.000000'),
('6b47580d-ce4a-42b6-8314-9b9da71bc9b6','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:43:01.000000'),
('6b833f47-67cc-4753-90c3-cce58f7fd811','123456@qq.com','查询','117.150.0.219','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 09:48:24.000000'),
('6bb8c46e-93a5-4d28-8694-b441b6e2da01','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:12:23.000000'),
('6bc7deef-ee85-4230-978f-a40ee69025ea','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:07:52.000000'),
('6c286a82-56cb-44e8-9eb1-674a82813c62','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-19 13:10:49.668000'),
('6c87eeb5-cae9-4eae-9dea-38cd5366905c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 10:15:26.756000'),
('6c910ce1-348c-4c31-98f6-6cf2bd652cd4','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:55:39.000000'),
('6d0b10a6-2276-4808-bc2a-ad6f0c0b0a32','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 13:37:00.467000'),
('6d6e4d75-be1f-4b17-a744-b07c9af9e7f5','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:15:21.000000'),
('6d890762-634d-4c6f-8666-95c9f5847a49','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:17:16.000000'),
('6d915916-6abb-429d-b019-75d14619788b','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 15:58:23.000000'),
('6e723e53-dad9-478d-b065-c949194dfb92','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 11:43:08.630000'),
('6f530b09-c2e7-49c8-87ee-ce82c61eb31c','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 15:51:01.000000'),
('6fed4a72-ff29-4577-ba9a-e29b30ba1a91','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:22:50.646000'),
('707fdee8-dd72-4763-acec-c04c53b357bf','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:56:30.000000'),
('7092c6d2-fc2a-4b60-9907-cbfd4e153092','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.CommodityController.save','商品管理','2024-11-14 18:21:27.000000'),
('70c71159-649e-4f30-8f8d-42a673022035','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-15 20:57:46.117000'),
('7152914d-2a36-4e64-9ae4-aba22415c4c2','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:43:02.000000'),
('732e4994-2fd9-4070-b37a-f5d7f48b1dcd','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:37:07.000000'),
('734138f4-b869-4712-89f3-a6550bd969bb','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:03:22.000000'),
('73424f6c-bcf2-4edc-9804-d2d914268596','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:55:55.000000'),
('7348373e-4d56-460b-8aa5-302d209e7f38','1483618794@qq.com','新增','117.150.6.226','com.example.api.controller.EmployeeController.save','员工管理','2024-11-17 11:02:01.000000'),
('73b6f3d1-f053-416a-888d-5bfc76feba01','2149754832@qq.com','查询','117.150.0.240','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:12:52.000000'),
('73ccb9a1-0569-4bd8-87c6-ae984077ffb0','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:29:13.000000'),
('73fb38a3-952a-4eac-b745-0f9aa48d2537','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:59:15.000000'),
('7437dab3-1c3b-447f-99dd-448244518466','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:27:38.000000'),
('749c5548-3813-4b16-813a-66892b346076','abc@qq.com','查询','223.104.119.188','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 21:21:54.000000'),
('74a9d649-1f7e-492f-9ac9-094049ed79ad','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 10:16:40.679000'),
('74f8879d-a14c-4e91-87c7-cf49ca6dbe8b','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 10:10:47.000000'),
('7510a7c2-55e6-4992-85ad-c4c12e902b9b','1483618794@qq.com','新增','117.150.6.226','com.example.api.controller.EmployeeController.save','员工管理','2024-11-17 11:02:10.000000'),
('75d9eb8d-5aa5-4a46-a49c-454311ed1c6c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 23:44:06.000000'),
('76348164-8a6e-4ad0-b2a8-e1c4a70cc88e','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:22:39.874000'),
('766d8270-9fb0-4735-ab08-9bb29d584cf5','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 23:44:48.000000'),
('77102234-c55a-4e43-9d6c-27eac288d6b0','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:22:16.000000'),
('77409221-86ce-4e2d-b90e-09f6bda013bd','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:56:55.000000'),
('7775331b-a811-4932-bbb3-5f3f278010be','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.EmployeeController.save','员工管理','2024-11-14 10:13:51.000000'),
('77ca8d91-23bc-4b6c-bd0a-793dd62251f1','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-17 16:06:28.000000'),
('77ee32ac-b92e-4952-9091-fa36515dfef1','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:47:31.000000'),
('77f6fbf3-1ee6-49a6-9f53-4826d8aeb28c','abc@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:39:00.298000'),
('7844dc6e-ea3b-4757-b874-be0f2dde0b5d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:24:27.000000'),
('786e84ac-4de4-48fb-bd9b-46a21d37a0d0','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2022-12-23 19:04:25.853000'),
('787a15fc-3d19-4d3b-8fff-5632151eeab1','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 23:44:04.000000'),
('7918995f-0ccd-4134-9320-11dbd9017e56','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 17:03:46.000000'),
('7977c719-eff1-406c-a03e-48fa2b83c736','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 16:02:01.000000'),
('79aee427-15ea-4574-a7d1-9c948a4a1b2a','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-02-16 10:30:22.072000'),
('7a588c04-8f5c-4fe2-89fe-f96560176213','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:23:23.000000'),
('7a5cd6be-dbd6-4bd8-9414-e307422b9b2e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:56:50.000000'),
('7a9594e6-4253-4635-a283-71d7e2511275','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-15 21:05:20.969000'),
('7ad002d5-ef0d-4fec-82b2-88db08c12045','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:46:44.000000'),
('7b09e3e6-3bc9-4449-9e45-1fbf7a0f907f','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 11:06:28.233000'),
('7bd953cd-684d-4dfe-bfdc-d6e032a9b042','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 21:51:35.000000'),
('7bf1a291-caee-469d-8520-a20aa75a5955','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 22:47:54.000000'),
('7c09323f-f228-47ae-83a3-ed60543f5daa','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2022-12-19 11:21:33.793000'),
('7c21f435-2283-4826-9eb2-36378b926395','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 10:10:40.000000'),
('7c28cfc0-5cbb-43b2-9d6d-b795aff1a8e5','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 15:51:02.000000'),
('7d090768-56bd-43dd-86f6-d3471cceb119','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2022-12-19 13:02:24.215000'),
('7d09b066-9497-40db-ae43-b24179b7c8cb','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 17:04:59.000000'),
('7dad0595-6982-4107-8fba-ef417819eea2','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-03 10:08:03.622000'),
('7db371bd-34b8-4653-a8bf-3620ddaae605','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:23:21.000000'),
('7df32f83-4812-4256-916d-210c800c2d9f','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-17 16:05:30.000000'),
('7e13633e-5c29-4dcb-b4b0-0984dc502a52','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 22:13:25.000000'),
('7e985719-8f16-4de6-838c-7a2d7d0751ba','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 15:58:21.000000'),
('7eaacdbc-e571-4580-8e4e-2e90b1906592','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 21:51:36.000000'),
('7ead999f-2bb6-4777-a9f0-99644a9ea474','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:15:55.620000'),
('7ed3b25d-1449-4c68-ae5a-bddd83857afc','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-02-20 19:58:58.630000'),
('7f53e3aa-b072-4ed4-b7f2-eb59354d5168','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 10:15:37.560000'),
('7f630c15-6edd-433c-b802-7404518cfbf7','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:26:12.000000'),
('7f812d83-6db2-4b4c-9c8c-30cc14e1da3a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:43:58.000000'),
('7fcb82a4-9c9a-4d0c-a93c-58eeae357c46','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 10:54:05.831000'),
('7fd178b4-a722-4eba-9e83-ff8469737481','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:49:45.000000'),
('7fdf4747-be83-4646-b225-7fad669c0c5c','abc@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 17:08:07.869000'),
('7ff03fb5-c63e-479b-9ed7-e87b4c8e4ef2','abc@qq.com','删除','223.104.119.188','com.example.api.controller.CommodityController.delete','商品管理','2024-11-13 21:20:45.000000'),
('8038a64c-bbf6-48a8-a656-e2beefd53185','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-19 14:59:45.220000'),
('804e853f-7c05-4d59-b3a3-90c04ffc2ee6','1483618794@qq.com','查询','117.150.6.110','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 21:46:25.000000'),
('80530d12-00e1-4773-895f-b89a43d2ed4f','1483618794@qq.com','新增','223.104.123.5','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-16 21:52:27.000000'),
('80e073da-4839-4c1d-9575-9c01b515d803','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 23:46:08.000000'),
('82d4c044-ce8a-4d5c-a3ed-42d39ae48857','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:59:52.000000'),
('836bbed0-350e-483b-8c48-08436a63c306','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:37:56.000000'),
('83d87705-8a56-466c-a5d6-6139d71955bd','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:48:30.000000'),
('83fdfa97-140f-4534-9a86-973215a52eee','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-16 10:30:14.195000'),
('8480fcf2-e4cc-4fc0-8029-2d175519de0c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:59:46.000000'),
('849fc8e4-b6d7-435e-ba2b-39d2654d38a4','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-13 23:15:16.000000'),
('84c059e5-c2a9-4a39-92f8-080343c87d4e','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:30:09.000000'),
('85203f9b-93a1-4753-83c2-5617de40ea97','abc@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 21:20:57.000000'),
('8587fb92-b5de-48fe-80a4-0c974fd8d507','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:50:02.000000'),
('85bf1356-1bea-4ea5-8e78-7346ad438bc4','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:15:16.000000'),
('85e5e61c-1b6b-454a-a49e-26acd55ae204','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:25:01.000000'),
('864e8638-4d20-487e-bdc0-5987fee4f8e4','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 22:05:11.000000'),
('86b4cef4-6074-4afb-80e6-8676d8916271','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-23 19:03:04.408000'),
('86ef6bb4-26e2-4491-b40d-bfddf98e7d00','2149754832@qq.com','新增','117.150.0.240','com.example.api.controller.DriverController.save','驾驶员管理','2024-11-13 22:16:08.000000'),
('8757be74-019b-4182-bca0-cb9b2fb287cd','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-14 18:12:26.000000'),
('877906bf-4caf-49dc-a5b4-e4cc3361ebf7','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 15:51:15.000000'),
('87b8e495-091d-4bae-be61-34196db718f4','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:16:00.000000'),
('87bcf63c-0214-45ed-adf8-9777d29710c0','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 22:38:55.000000'),
('884ea5ac-03d9-4a22-b720-b006f0f1762f','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:18:59.000000'),
('885ea65b-642b-459c-aaca-90f61ee7dcd2','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:11:54.000000'),
('88c1fed4-a0cd-48dc-ba5c-c3a0cfd02cec','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:03:24.000000'),
('88c9ac99-6e03-49cd-95be-0b73db957153','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.CommodityController.save','商品管理','2024-11-14 10:21:52.000000'),
('88e0f381-c60c-42aa-af23-183d4f55d721','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 11:14:32.000000'),
('8934eac2-7732-4809-8fb6-712013c82d3c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:40:36.000000'),
('893be95c-57e5-4a1a-bebd-884529d29029','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-02-15 21:05:17.399000'),
('89882098-3e74-4a61-b97f-3878d09e25c7','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 23:23:25.000000'),
('89b7372a-bfdf-49ed-a5dd-7bf8de571543','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 10:12:37.000000'),
('8a0fcdca-b5ca-4e17-9f82-af0a89b12a07','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:23:42.019000'),
('8a6322ab-8914-4c20-aaa4-75cb0cf4587f','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 22:06:02.000000'),
('8a77d125-d345-42a6-961a-00dd49c3e346','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 22:07:27.000000'),
('8a9efc45-d366-4101-9b4d-b09ad47adc5d','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-17 16:06:32.000000'),
('8ad0809f-e047-44e7-8c99-1df776778bc3','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 13:36:49.318000'),
('8ad63c6a-1a0a-42c0-8461-bc0ad6c18d45','abc@qq.com','查询','223.104.119.188','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-13 21:23:56.000000'),
('8b23efe5-26f1-4133-8f71-61243943a52b','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findByLikeName','商品管理','2023-01-11 09:17:39.950000'),
('8b6d6ca5-1236-402f-8b99-c01c78c1093f','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:20:42.000000'),
('8bf9f105-3c7b-43f6-8cee-936686aef2f4','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-19 11:43:15.416000'),
('8c35d076-8ce8-4de6-b7e2-03bc0e0c3c83','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:31:45.000000'),
('8c69f53c-cd99-4e1f-a6e4-1dc755c4b244','abc@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:20:42.000000'),
('8c715fc1-bb13-4150-bfd8-95c1da70ebc9','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 09:11:46.000000'),
('8c9c5ab7-7d7f-4cd5-a7c3-3909bb690bb7','abc@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 21:21:56.000000'),
('8cb42f3a-3376-462f-8e69-e2f483f72688','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 10:57:51.084000'),
('8cca6637-7e59-4441-9e9d-d15533c3f5cf','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:19:38.000000'),
('8d61f399-7a7e-4798-8611-2f6e5f2f23b7','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 22:47:55.000000'),
('8d869124-a7f9-4d0b-ae87-c2b7f22f7b15','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 18:43:36.000000'),
('8e5392a3-5634-4555-829e-874b326f64fa','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 23:20:36.000000'),
('8f42a647-9572-494c-abe7-6906c8717939','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:34:50.316000'),
('8fcdeeab-8776-4c68-9ec9-cf683273b41c','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 09:51:15.000000'),
('8fe2ae7e-d764-45b0-81e0-1507c7e62c1e','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:16:40.527000'),
('8fea2d2a-9305-4d5b-aef0-400a75dd692d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 17:06:32.000000'),
('9069d579-6f6f-410e-9c82-d74dfd739180','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 13:10:51.133000'),
('907a9417-2052-407a-adb2-c184b9d66da2','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 11:07:38.462000'),
('90c91f01-0968-4532-855b-3536d74c6ca2','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-17 15:58:39.000000'),
('9156a955-22d7-4ba0-af7b-3d79fd3927f2','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 20:23:53.290000'),
('917cf6eb-b8f2-4162-a992-be74b10eff0e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:40:27.000000'),
('91856cdd-8dd8-47eb-9025-a9eb04d9383e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:34:26.000000'),
('9194a827-5bd5-4296-88a3-752ca0b03093','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:36:12.037000'),
('91b204bb-9e03-4493-9dbb-943659814711','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:35:52.417000'),
('91ca86c6-d993-453c-9e71-e52209a76c05','1483618794@qq.com','删除','117.150.6.226','com.example.api.controller.CommodityController.delete','商品管理','2024-11-17 10:10:47.000000'),
('920f8cac-a0d2-4e1f-a913-32c6e8f3d8bb','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-01-11 13:15:14.006000'),
('9265c0fe-3b42-493b-9c9f-b5ad6d378b47','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:12:37.000000'),
('92a25ba9-d9c2-4a4a-ba29-4d4c8f745763','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 12:48:13.998000'),
('92cd14b2-9a0a-430e-b229-9278ca41ce4e','abc@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 12:15:53.834000'),
('93077e83-1df2-40dc-bce6-d4bfdaa94c3a','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 09:12:26.295000'),
('931ea05d-7f4c-49eb-8d68-a1a461af566a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-14 10:26:17.000000'),
('935bd78b-19dc-4658-bf80-410a0fb5d5db','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-14 10:08:22.000000'),
('93de3f8b-f284-4f86-8ab5-00fd2f10493f','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-14 10:21:40.000000'),
('94698431-47b2-4fc8-8f09-0117101628b5','1483618794@qq.com','删除','223.104.119.188','com.example.api.controller.EmployeeController.delete','员工管理','2024-11-14 10:12:37.000000'),
('94fab12f-022a-4ccb-8705-12d05ac5dae0','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-02-20 19:55:14.452000'),
('953e5336-a271-4c63-9777-ead9cdd23f4e','1483618794@qq.com','新增','117.150.6.110','com.example.api.controller.EmployeeController.save','员工管理','2024-11-16 21:29:31.000000'),
('95631405-5c86-4f8e-9564-10b53a4b8c99','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 23:15:51.000000'),
('961196f0-6281-4c10-9ed2-f2383127b7c9','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 16:01:26.000000'),
('961d0565-8675-4803-920f-a580db031058','abc@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 17:02:56.340000'),
('963a56aa-b2c4-43d6-abaa-9617150cbd76','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:26:06.000000'),
('9682578e-e1db-46d4-add5-0435e8a2ab69','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 15:51:03.000000'),
('96a31182-3619-4107-a3ef-6dab83e3dc4b','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2023-02-20 19:58:57.415000'),
('975d858f-3a87-4686-a15d-07d6c62682f2','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:35:39.755000'),
('97e31aec-97fe-4638-bb0e-4b455ec56190','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-14 10:21:35.000000'),
('9800c632-8917-4a55-99f7-f739cf4d633b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:38:23.000000'),
('983bc0be-dec6-4e1d-8174-475bb1723888','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 11:05:37.280000'),
('98b8f910-39d9-477a-bdec-826d0863517b','abc@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:20:40.000000'),
('99a19272-3632-483e-916e-a3071f039e5a','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 11:07:17.982000'),
('99d92fff-c66b-48dd-9575-c1f54efe1bc0','1483618794@qq.com','删除','117.150.6.50','com.example.api.controller.CommodityController.delete','商品管理','2024-11-14 01:33:58.000000'),
('99f2d890-1069-4e0b-8c21-e2404287372d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 18:21:28.000000'),
('9a27645b-2fbe-4a22-861b-8b42abdadf8f','admin@qq.com','新增','127.0.0.1','com.example.api.controller.DistributionController.save','配送管理','2022-12-19 13:01:51.330000'),
('9a4c07d8-0603-44fc-a9fa-0a0f42aa571a','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-20 19:51:01.697000'),
('9a4cfcc7-aa62-4a61-8030-d49ee3878ad3','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:13:30.000000'),
('9a6ef09a-5829-4e3e-816d-eb0da70c8dd2','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 09:27:04.690000'),
('9af3cd2b-a471-423d-af04-675d1b3f0156','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 09:12:24.000000'),
('9b93a8a0-0632-477f-a813-9d733d1969a6','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-23 19:02:10.634000'),
('9bf5e76e-bca7-4e89-89a2-360c645566b4','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 21:52:27.000000'),
('9c662c8a-292c-4936-b80d-fb6f26ae96a0','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 11:01:42.000000'),
('9cb4138d-80e7-4531-ac75-bc6b5da74f7d','2149754832@qq.com','查询','117.150.0.240','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 22:14:31.000000'),
('9d6693b8-e3d2-489b-929b-33f4b910c327','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:12:26.000000'),
('9d98c019-2bac-4f03-ae8a-a6f3783fd86a','1483618794@qq.com','新增','117.150.6.41','com.example.api.controller.DistributionController.save','配送管理','2024-11-17 16:06:11.000000'),
('9e379aa3-d07f-44dc-9658-d05eafd036e5','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:15:05.000000'),
('9ea7f5f9-398b-40a1-bce5-8965642ccb99','abc@qq.com','查询','223.104.119.188','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 21:24:06.000000'),
('9ed8dc66-bb7b-4f54-875b-49dd3210085a','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-14 19:49:16.000000'),
('9eeb400b-5c5c-46fc-bbf3-f7e972102b27','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 15:31:40.953000'),
('9ef4009b-c7a7-4571-9378-216d0765191d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 10:09:49.000000'),
('9f0ee714-b4c8-43e1-a24c-8b5cb89486a4','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:10:56.827000'),
('9f3e09a3-accd-4f0d-bdca-02d8a9270bce','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 23:25:28.000000'),
('9f9437c5-beff-4f4b-83f9-8a5e2c813ce5','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:44:56.000000'),
('9fe98ad9-afb1-4c6b-94d6-a2447775dead','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:27:18.076000'),
('9ff89308-8963-4044-be4d-e381fd43db5c','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-16 22:39:31.000000'),
('a080b8cf-3955-4bb8-aa26-e6e14205a407','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:15:49.249000'),
('a0bbc66c-ab1b-4382-8120-6a79379323b5','1483618794@qq.com','查询','117.150.6.14','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 09:36:25.000000'),
('a0f6c2dd-7776-466a-9844-25d54b0a0a55','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:05:53.000000'),
('a1f3d9fc-bd32-43a5-bf2c-435006e79474','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:45:04.000000'),
('a1f934fc-b5fd-440b-b832-57e789fa9544','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2022-12-19 13:10:56.237000'),
('a2a80346-678e-4377-a641-4efe2e829456','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 09:14:37.816000'),
('a2d39fa7-a475-4303-ba53-8cd06f8c6128','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 10:16:42.288000'),
('a3dc2c36-fc32-4132-b9c0-58bcf7e37e30','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:56:41.000000'),
('a3fac8fb-a656-451b-8209-7fb969f56614','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 17:08:06.000000'),
('a40742f8-8c78-495b-a95e-28cd4f6c705a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:40:42.000000'),
('a4b30a61-3b96-404f-9995-0fa10fddd7c3','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2022-12-23 19:04:07.491000'),
('a4c5e1d6-8079-41a5-822e-5758f02951b2','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:42:19.000000'),
('a4d25292-4066-4de2-a304-8ce408680a20','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 13:10:25.646000'),
('a4d6dcf6-e8ed-4e29-be3f-d29aa6c9a02c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:24:31.526000'),
('a507a37d-e6e5-4ee7-b54e-273f4fdd618c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:17:35.000000'),
('a5116671-549e-49a2-a6b2-3e3159182039','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:06:30.000000'),
('a5184c06-10c9-4fb6-8fcd-9e13fe6e3b61','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 22:40:34.000000'),
('a56edb0d-c015-4a94-9965-b338b21bf8a6','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.EmployeeController.save','员工管理','2024-11-13 23:27:14.000000'),
('a587fefd-f7c7-49ee-83cb-e1e8090aff0a','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:37:06.000000'),
('a5cd4f18-8837-4cc4-b564-f472083cc3a3','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:06:20.000000'),
('a65aeb23-6d14-49a2-93a6-59ec4959667f','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 17:06:26.000000'),
('a669be50-a9b2-439a-8661-82d9f8600245','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:21:48.000000'),
('a6a15587-91bc-451c-92ae-4a15c36b7953','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-18 11:36:37.569000'),
('a6c8e4d3-ba4d-419b-90cd-3f004ada4a7e','abc@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:20:45.000000'),
('a830c35f-8c4a-4aef-89ed-35759d0518ba','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:29:23.000000'),
('a8a40b6a-18b0-4a8f-bab0-9bd7ebd407b1','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:46:27.000000'),
('a95b4228-cb72-4aeb-a882-d7d30fb4744b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-14 10:21:33.000000'),
('a97bce9b-af88-4eed-ad51-6ce652556cfc','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:35:22.000000'),
('a9cd3c2f-f453-44eb-89a4-48affd434eab','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:11:52.000000'),
('aa086d9e-f1aa-413d-8328-95003f973a66','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:38:26.000000'),
('aa10a416-6fe0-4cc1-b384-acfbe85099e5','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:27:05.967000'),
('aa438ce8-f2ab-4691-97fc-fbdea77d407c','1483618794@qq.com','删除','223.104.119.188','com.example.api.controller.CommodityController.delete','商品管理','2024-11-14 17:06:03.000000'),
('aa756d93-402b-43db-81ea-a2355a996722','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:39:09.000000'),
('aa985a5d-579b-44a4-8f57-14df5f804b77','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-13 21:42:01.000000'),
('ab1c6024-ef70-459d-8317-3ccc2a308d6f','1483618794@qq.com','新增','117.150.6.226','com.example.api.controller.CommodityController.save','商品管理','2024-11-17 10:35:59.000000'),
('ab3e3c3f-e007-4f88-bb86-2e02ba5a8355','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:10:49.000000'),
('abcbc632-0e82-4620-9c9d-876b971d4c47','1483618794@qq.com','查询','117.150.6.110','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 21:48:35.000000'),
('abf642c2-8605-4c91-ab62-93a53db968f0','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:05:36.000000'),
('ac1ea177-055e-4bea-bbc5-dc9ebde2cf61','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:07:59.000000'),
('ac324dc4-4817-42c0-99d3-6e3e099185a5','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 09:27:52.000000'),
('ac7b9a51-2633-4e2a-848b-39a7ffa639c4','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-20 19:50:50.836000'),
('acae46ef-21f9-4e1b-a20d-985f43836ddf','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2023-02-15 21:05:15.738000'),
('acc5a25e-ca88-4875-b8c8-67069b842d5c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:39:37.000000'),
('aceaebee-2c11-4430-b13e-e6f9a276322d','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-14 19:47:22.000000'),
('acf10e5b-e918-4459-a191-6283b1136def','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2022-12-19 13:02:18.813000'),
('adbd0835-8350-443d-ac08-158cc5002c3d','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 10:36:14.000000'),
('ae1d3a87-2872-49cf-b3e8-ec8137359658','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:30:52.000000'),
('ae48bcfe-f732-486a-b886-a304bb30a430','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:12:28.718000'),
('ae5354a5-bf35-4c15-b6b4-896dfb515c61','abc@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-18 11:38:16.825000'),
('ae843c57-fe36-4ce7-aef2-5bc2d47515a5','1483618794@qq.com','查询','117.150.6.17','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 18:07:37.000000'),
('aea1a092-2193-4c38-8861-c03f8e4e8216','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2023-02-20 19:56:39.602000'),
('aeb01690-f9bf-4ea7-91a9-a02173f12c38','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:13:32.000000'),
('aebe72ec-aedc-42ae-965e-31ceba81c001','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-02-20 19:56:45.686000'),
('aee1e3a1-15ae-4266-bba2-b157f98c94fc','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:30:11.000000'),
('aef9f974-c8c1-40e9-9e8f-34366d61baf6','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 17:05:59.000000'),
('aff1ca21-feac-4cdd-bffa-fd9c909e77e7','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 10:08:26.000000'),
('aff48abb-097a-4afe-8363-bbb9e982572f','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:38:15.000000'),
('b0bd6b6c-2383-462f-997b-5b7c376cda80','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 23:40:02.000000'),
('b139666c-70ee-4cd4-8702-bfe69e7e1f51','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:18:51.000000'),
('b1959e7e-f77c-4a44-b6a4-70eee569b40c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-19 13:10:49.669000'),
('b21cb4ac-1485-44f1-8f1f-513477be7e6e','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 10:16:13.126000'),
('b2570388-e8d2-49cd-b4f1-a052931b211e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:53:05.000000'),
('b3e745d6-e4c2-4de8-b031-b8750c4a2dc1','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 21:41:42.000000'),
('b426dfe5-dce4-43b7-9921-c04747b5af78','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:03:31.000000'),
('b467f6d5-a9e9-4f98-9082-6d9e3cc59358','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:29:41.000000'),
('b46e810f-8800-4ffd-bb8d-9990d86d7313','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-01-11 13:36:49.334000'),
('b47fba86-0002-4797-afb4-3d1831294d7f','2149754832@qq.com','查询','117.150.0.240','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-13 22:14:18.000000'),
('b49e7dd8-0a55-4562-94ee-c61b4879bab0','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 13:39:01.079000'),
('b54c88b0-8e89-4853-94f4-a0815ad6f63d','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 10:12:36.876000'),
('b5899d57-264f-4067-911c-c4e79ef37371','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 10:15:47.080000'),
('b5a946a4-03dc-439f-a16d-859f915b6987','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findByLikeName','商品管理','2023-01-11 09:18:13.365000'),
('b5bd82c2-75fd-4fb4-9317-a83277128065','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 21:45:55.213000'),
('b5f03c87-36d0-4004-9aef-478fbba5a260','abc@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 12:15:59.043000'),
('b613e3f1-54dd-47a5-b640-159abb59aed0','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 10:35:59.000000'),
('b62e4862-502d-4c48-bfd6-a0ab5c3f9345','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:47:22.000000'),
('b63b669a-5c21-489e-94dc-0bd0ea4f57fc','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:17:38.000000'),
('b662c241-e5db-464d-a948-e4245c6ce083','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-23 19:07:50.563000'),
('b67ef62f-4b14-4476-9ae2-0171c6bd49e1','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 10:19:01.000000'),
('b693249a-a9ce-4cdc-9653-ba360eaabd78','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2023-01-11 09:23:13.852000'),
('b6d447ca-cc69-4f3b-a797-92c969eb8e7d','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 22:05:48.000000'),
('b6ff8336-b522-457d-b639-f268771118d0','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 21:38:34.000000'),
('b7869919-a1cb-43b3-a7fc-b2d11d24e4e8','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:24:33.010000'),
('b7a9aaa0-2e3b-45d0-a2ef-48398525b07e','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 10:16:21.420000'),
('b7b9ca12-3c90-48b4-b276-8ade24726dc5','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 22:08:10.000000'),
('b7e4496b-9a5f-43d5-b43c-c4b648e14b7b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:59:53.000000'),
('b818619c-fa32-447d-8fd9-ae41cfbb67a2','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:06:14.000000'),
('b8584d43-49bc-407b-95ab-29019c8ae0be','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 17:09:55.173000'),
('b8ec25c7-8b0a-466a-bb4d-9875d1de359f','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 22:04:53.000000'),
('b96561b2-dafc-4d80-afb4-325e6c348d28','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:08:52.000000'),
('b995dca3-af0a-491e-91f1-00dca443bdbd','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 11:19:01.204000'),
('b9a08e4c-6adf-456b-94e9-66f5b9dd4cf1','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:22:52.725000'),
('b9bb6d51-8092-497c-8bb4-68a29ca9a300','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:12:57.000000'),
('b9e941f2-0b81-4051-9876-1ea784bd603a','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:08:30.000000'),
('ba142c85-22af-42cd-8533-e7d501e33bef','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.CommodityController.save','商品管理','2024-11-13 23:45:25.000000'),
('ba47f5ec-9822-46eb-aefa-a2773060d844','abc@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:23:21.000000'),
('ba7f77e7-581b-4adf-af3f-14076fbd824d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 23:18:59.000000'),
('ba8fa00e-b723-4b5c-bc01-45261acfcace','abc@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-18 12:16:01.263000'),
('bae15ae7-b119-44c0-bd96-fc6d94aff3b1','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 17:06:03.000000'),
('bb2fa1a6-99de-4dff-b8d5-fcf2c7b1c680','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:22:41.846000'),
('bb445410-a868-4d07-b8ce-b44df2b44495','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 21:41:54.000000'),
('bbe158bc-6bc0-4391-b6c2-74e36a08bab6','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-01-11 09:23:32.810000'),
('be33ee62-826e-4bd4-833c-2fd887de4362','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:07:27.000000'),
('be7f302c-0afa-42e2-b494-fdd121f29aa5','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findByLikeName','商品管理','2023-01-11 13:36:02.702000'),
('be9a109e-5be3-4cb6-8a65-1117d65fb597','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:20:33.000000'),
('bec40a33-d70c-45d2-8e0a-171455300ef7','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-23 19:07:47.344000'),
('befa24f2-7373-407c-a682-fbddffc27871','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:06:34.000000'),
('bf071efa-d4d6-4b66-9d21-232602a9fa71','abc@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 21:24:08.000000'),
('bf616d5f-535b-4955-a36a-d8ea64b783d0','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 21:38:36.000000'),
('bf876ed1-83f3-40c6-955e-fbf441ff42f3','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-13 23:42:19.000000'),
('bfae97c7-910f-404f-823d-007e43605791','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2023-01-11 13:15:23.431000'),
('c0011144-85b6-49a6-a707-fb28b89011e5','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-01-11 09:18:40.462000'),
('c01126eb-6483-40a3-b0b3-4d8afcc3b523','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:20:42.434000'),
('c026f6dd-adbc-4d75-a79d-2af96cd543a0','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 22:47:12.000000'),
('c04540eb-8acf-449e-80b0-42408f39c4f9','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:20:11.000000'),
('c08deab0-a68c-446e-9661-940ad7c98b2d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:47:14.000000'),
('c0e32b77-cbd3-441b-af76-214ba13c26a1','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 10:16:43.005000'),
('c112bf85-8571-4a3a-a03d-78d4b699ed0d','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 13:10:45.132000'),
('c155357e-29a0-4e87-957e-33a58cb06cb6','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:45:55.000000'),
('c18948ef-a861-4d31-9daf-6ff7485d8887','1483618794@qq.com','新增','223.104.123.5','com.example.api.controller.CommodityController.save','商品管理','2024-11-16 22:31:44.000000'),
('c1936d90-9602-4da0-9638-bb553c7adeaa','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:55:50.000000'),
('c24f546b-28fb-48e2-9426-33fbe26c37f0','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:59:53.000000'),
('c257615b-b319-4a5e-a91e-8690409fb686','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 09:51:30.000000'),
('c2938ea5-b13f-4fa2-861a-48e0eefd46fb','123456@qq.com','查询','117.150.0.219','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 09:48:40.000000'),
('c30031d8-e873-44a7-a2dd-0d1a1727f0ba','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 23:40:40.000000'),
('c381e5e3-57f7-47eb-afb2-7c3f98fc76ee','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:14:53.000000'),
('c3bd1224-e57c-4848-9b73-39a4dcc749c2','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 23:44:47.000000'),
('c3e2f19a-9ee0-4134-8bf6-4e5bfd252ed9','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 10:19:03.000000'),
('c439893d-461b-4444-a37f-32fb81c753a0','abc@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-18 12:15:50.547000'),
('c493c58d-10ac-4442-8545-6a5eb09677e8','1483618794@qq.com','查询','117.150.6.17','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 18:13:54.000000'),
('c4ae17fa-213f-41a8-b1aa-d2fc8005bf5b','abc@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 21:23:36.000000'),
('c4c6a47b-f0ee-4693-9b7c-a580763b77ad','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:44:43.000000'),
('c4e4188c-a50c-403b-918a-a00e2088e468','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-14 19:47:31.000000'),
('c4f4a1df-8f06-44bd-8a3a-9cae69273aaf','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:47:32.000000'),
('c55dbbfa-93c1-4698-859c-88a916c85525','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 22:10:56.000000'),
('c5750b02-b5c5-415a-a5e6-0c0f89e5c05c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:29:06.877000'),
('c6145f2d-e922-46f7-aa28-e9941adc8165','1483618794@qq.com','删除','117.150.6.226','com.example.api.controller.EmployeeController.delete','员工管理','2024-11-17 11:02:23.000000'),
('c79a1c79-971f-4503-beee-eb5389465b81','123@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:43:11.483000'),
('c825e84c-912d-4f84-b726-27d249e7978f','123456@qq.com','查询','117.150.0.219','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 09:46:30.000000'),
('c82d8b63-72f6-4afd-8d90-43046c64898a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:45:34.000000'),
('c8e71629-4566-4b07-8121-ccc207c04960','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 18:56:55.000000'),
('c984303c-e166-41f9-bcfa-948222e3043c','2149754832@qq.com','查询','117.150.0.240','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:12:53.000000'),
('c9c1b44e-209d-4767-a91f-e8aeb657f597','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:56:38.000000'),
('c9d4ce18-d4a0-401c-90d4-5c87e50f0076','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 11:14:32.000000'),
('c9f1d5e6-c81f-481a-9357-6aed4c2b4b03','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-19 11:43:16.518000'),
('c9f8486d-cd98-40a9-9fd2-16c5e07af3bc','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:47:00.000000'),
('ca2e4cbe-ed37-4880-86a1-08b6bd590ecb','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2023-02-15 20:57:48.475000'),
('ca356a8c-adf6-41d0-bb3d-4441aae6898a','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2023-02-20 19:59:04.049000'),
('cb2efb47-9611-4443-801a-98771fce498c','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 22:10:16.000000'),
('cc07fd2c-1b26-4bd1-8994-38f45591614b','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:43:02.000000'),
('cc3b5143-d5de-4bd4-9299-7c0b3ae610a1','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-02-20 19:58:49.246000'),
('cc7c087d-5a42-4786-a36b-82b5fd1a4f3f','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:20:12.000000'),
('ccae1e6f-71c2-4679-81a1-99a861983a19','abc@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-18 12:15:56.063000'),
('ccc55003-e8b9-4e97-b890-ab0832df8db6','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:45:26.000000'),
('cd79c6ec-734a-4f8f-b4f6-b7d6fd0269cc','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:15:55.000000'),
('cd94713c-b163-4f9f-8b7e-5b9b0457142b','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:09:56.000000'),
('cdc66e5e-9374-4395-8f0a-e044180ade62','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 18:21:04.000000'),
('cdec2cb4-f9a3-46c7-9e95-9e723b463511','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2022-12-18 20:23:56.306000'),
('ce3f6f0d-3b8e-4c4c-bb56-a1d53b261d67','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:41:56.000000'),
('ce6bbf57-3b58-474f-8c78-b5ef178d135f','1483618794@qq.com','新增','117.150.6.226','com.example.api.controller.EmployeeController.save','员工管理','2024-11-17 11:01:42.000000'),
('cf14ac51-8970-462d-9d98-dcd2651616a5','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:13:28.000000'),
('cfbaa24f-7b4f-496a-afbf-bc5486f2308b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 10:22:46.000000'),
('d00727bf-77c3-477a-a483-1e38b8d68ed4','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-02-03 10:08:57.067000'),
('d039b1a1-75b7-4e48-85bc-496666c10657','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:24:43.451000'),
('d044964e-6acd-478b-ba6d-b6f2b535093e','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 15:57:59.000000'),
('d06758ed-bde9-488b-bf73-88cf825f65ff','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:12:52.701000'),
('d074466a-6d17-4975-a362-72f8637dd92e','abc@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:37:32.690000'),
('d08dfd24-fa12-416e-83be-c4c8cc3e936b','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 15:50:50.000000'),
('d098fba7-dcc6-40bd-a8d2-d04cc74892fc','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:18:43.342000'),
('d0c97776-2423-40da-83a7-de4c82f9cfc5','2149754832@qq.com','查询','117.150.0.240','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-13 22:14:31.000000'),
('d0d8832f-c148-467a-97ce-774bce224fb4','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-23 19:01:29.620000'),
('d13ca091-145e-4a17-90c6-006756d4af9d','1483618794@qq.com','查询','117.150.6.110','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 21:29:03.000000'),
('d1e2b966-6f67-4b3b-852e-15b1c5b72a32','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 18:59:50.000000'),
('d280225a-faab-4bb4-9057-d746484f2daf','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:22:58.540000'),
('d2ce2cf9-dbe4-4dd2-81a2-cd2303740b50','admin@qq.com','新增','127.0.0.1','com.example.api.controller.DistributionController.save','配送管理','2023-01-11 09:23:24.489000'),
('d2f96ed2-4422-48f2-ba0c-83eb800c678e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 16:59:11.000000'),
('d3a310e0-23c8-4924-82ae-cc41e9da955d','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 22:06:08.000000'),
('d416eb2f-e2f4-47ef-b18f-f4857cdee7de','abc@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:23:41.000000'),
('d5118dbd-3df9-4140-afd4-f262f1041790','abc@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 17:03:06.371000'),
('d535c60c-eb75-414b-9153-76c1d5439f59','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-16 22:41:06.000000'),
('d55955c8-5e1f-48fe-9d60-bd5e79b2d94e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:19:26.000000'),
('d614c46b-ac37-41a5-bef9-6ca3b363b2d8','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-01-11 11:07:38.462000'),
('d676cf30-2180-4291-a896-00881e8f8d9b','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:27:25.369000'),
('d6ba2701-40f9-477c-a1c8-ce0fce5608c5','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:43:39.000000'),
('d6c47ad5-45af-4681-a81a-e6c2c2531fc3','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 10:14:23.000000'),
('d6d622f4-70a6-407b-93e2-27e20ac68367','abc@qq.com','删除','223.104.119.188','com.example.api.controller.CommodityController.delete','商品管理','2024-11-13 21:20:39.000000'),
('d737aa8c-e27b-4cba-978d-2c9dd3906ce6','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 13:10:47.377000'),
('d788bc8b-b552-429d-94cb-5d95791c02ad','abc@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-18 11:37:41.214000'),
('d78a3cda-ab44-4307-b46a-1e7369e44aa7','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2023-02-03 10:09:01.464000'),
('d79e9dfc-bf75-43ed-bdf3-0c3bc809212e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:47:00.000000'),
('d7c99480-fe37-4514-be69-1ed898a9377f','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2022-12-19 12:58:57.135000'),
('d83ad7e5-3f0e-4e63-9d1f-2b428f4b5dcf','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 10:11:12.000000'),
('d840ac2b-fdc7-4af7-a33c-050457aac7ab','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:56:57.000000'),
('d852812a-df24-48b8-8546-3e6ba5775375','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 16:02:03.000000'),
('d8665c91-65be-4234-82aa-5af9c4f8ee48','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-23 19:03:05.878000'),
('d8ffd447-1fb2-4b25-9e7f-a16d1a9d85f5','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:18:36.364000'),
('da4910ef-1883-4bc4-88a2-7efd89707c33','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 15:58:19.000000'),
('da673f4b-5727-4fab-89ae-1d462455f315','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-13 23:35:05.000000'),
('da88eb52-a3df-4ca8-a7e6-b5dba999739e','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 09:18:49.174000'),
('db6db505-982d-4a50-86d1-da866b7f518d','1483618794@qq.com','删除','223.104.119.188','com.example.api.controller.CommodityController.delete','商品管理','2024-11-14 10:21:58.000000'),
('dbca1ebf-40a4-4594-a652-ece166361a3d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 18:50:43.000000'),
('dbe02ab7-ae80-4c0c-8d18-191c2bbe6d53','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-14 18:12:23.000000'),
('dc565208-c8c1-44b7-b647-8fa566d8767e','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 20:24:08.434000'),
('dc727102-a9a9-4438-9b3a-11a807924cec','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.EmployeeController.save','员工管理','2024-11-14 10:08:41.000000'),
('dc92a5e9-64e9-4a7b-b8fe-571533fb3355','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:40:44.000000'),
('dc94727d-7c09-406a-bc11-cc5ee2ee3b05','admin@qq.com','新增','127.0.0.1','com.example.api.controller.CommodityController.save','商品管理','2022-12-18 11:30:17.056000'),
('dc976898-3a6d-4f7c-bd34-5914c8961509','1483618794@qq.com','查询','117.150.6.220','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 17:53:45.000000'),
('dcb68902-6468-487c-8ba9-a54ad913ba9f','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:00:08.000000'),
('dcb98d84-959e-4e7f-bc57-6e0d7fa9190b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:19:09.000000'),
('dcce1ead-d21c-4010-9059-af8b18b62ffc','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-23 19:02:10.646000'),
('dcd37ad4-ed5e-403b-8fff-8dfc30c794fa','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:26:42.109000'),
('dcd692d0-797f-41bb-b8c7-743571730cd1','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 17:08:07.000000'),
('dd0b3674-9eaf-423c-96b2-fc8e162a7f45','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:20:36.000000'),
('ddb312be-1d75-4e08-bab1-4e700c29d331','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:12:37.527000'),
('ddf23055-61fd-40c7-beff-f29fa9d44feb','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 11:43:17.815000'),
('de2db84c-7efe-4d14-9aa7-c83e7516f251','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:14:15.000000'),
('dec24dc4-144a-45b8-8aec-7df7873a6e91','abc@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:20:41.000000'),
('deddffcc-e13d-40d4-a43a-d86cd77df706','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 22:50:02.000000'),
('defacdf4-b879-4e9d-ac8c-18fa9bd02529','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-23 19:02:24.992000'),
('df6e674e-7473-4872-b0d5-6325ad569ac3','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2022-12-19 12:48:10.308000'),
('dfa6f5ff-7aad-40f8-b8e1-fa7f79beab11','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:37:58.000000'),
('dfdb5b30-f036-42ae-b495-a927b9637e36','admin@qq.com','新增','127.0.0.1','com.example.api.controller.DriverController.save','驾驶员管理','2023-01-11 13:38:53.620000'),
('e018e852-f692-4743-80a8-c2f7bde19133','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.CommodityController.save','商品管理','2024-11-13 22:43:57.000000'),
('e024bf01-7299-4b2d-8ace-c06a2b066b06','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 18:36:11.000000'),
('e118d664-e1dc-47f9-bcc6-045862dbfa1e','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 23:30:03.000000'),
('e18c284f-4e20-4d39-8091-4d2108a56eb7','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 11:06:02.763000'),
('e18f0c0b-6676-4659-a982-7b814ef99fa3','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 09:18:30.065000'),
('e2de56f0-20b2-4c91-83fb-3ad183513674','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 11:02:29.000000'),
('e2ded2a5-f5c9-4d0e-8294-0dea205d3735','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.EmployeeController.save','员工管理','2024-11-14 10:09:22.000000'),
('e2ebc4d9-7275-44e7-9094-9275a5206f36','abc@qq.com','删除','223.104.119.188','com.example.api.controller.CommodityController.delete','商品管理','2024-11-13 21:20:44.000000'),
('e32a600a-6513-41b4-81ce-a92258fb2f24','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:03:33.000000'),
('e3349316-db5b-4c5b-af92-f41b5e28db6b','123@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:43:07.470000'),
('e38ef3c4-53f7-4d96-a1d3-9df7367fcd14','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2023-01-11 13:15:54.278000'),
('e3a8d71f-aa55-4275-9f53-35274a82e042','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 11:05:28.659000'),
('e3b318b4-3441-420a-89fe-8a0671eb9b3d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 18:45:54.000000'),
('e3e403e4-573c-485f-ae35-f247c54e7526','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:15:43.000000'),
('e41f0120-5eeb-41bc-8f20-ea6c5e387dfd','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 11:02:23.000000'),
('e44e4ed5-6a4b-4d52-a8cb-2dbfcbc41e63','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:58:32.000000'),
('e47c9e9f-72f5-44c4-aaf6-05f5887b66c1','123456@qq.com','查询','117.150.0.219','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 09:48:44.000000'),
('e50a3d2a-2049-41a8-9a36-e54fa8c31fd4','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 20:24:05.253000'),
('e513ef31-59eb-4619-bcd4-712afba06d7a','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:35:52.815000'),
('e51d5de5-f34e-4d22-af22-0afe53f261d0','1483618794@qq.com','新增','223.104.123.5','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-16 22:06:02.000000'),
('e55664f2-5662-46a5-adc4-c2202f7ef790','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:47:22.000000'),
('e5a50bc4-9150-4405-8193-849818edaca4','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:57:31.000000'),
('e6443ae2-ef36-4f89-8ba9-1177b211afe9','1483618794@qq.com','新增','223.104.123.5','com.example.api.controller.CommodityController.save','商品管理','2024-11-16 22:06:13.000000'),
('e6529259-ca7e-4d46-8d45-9c2e593eba8c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-01-11 11:07:17.996000'),
('e653f857-ad8d-4560-bcd7-8cb491ff0113','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:08:22.000000'),
('e69a031f-4631-42cf-b9e3-c703d08dd805','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-19 11:43:15.469000'),
('e6a5640d-bd85-4f30-9f91-4f7346e8f103','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 15:11:29.087000'),
('e6dacf0e-74ef-4225-8b08-ca90472b70fb','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-02-20 19:58:50.077000'),
('e6f0d1b0-c979-4fec-b140-193882f5b71f','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 21:42:03.000000'),
('e705fbaf-8312-477c-ae0c-a253cbf89579','1483618794@qq.com','删除','117.150.6.41','com.example.api.controller.DriverController.delete','驾驶员管理','2024-11-17 16:07:00.000000'),
('e74d70e9-0616-43d8-8755-aad756afaaf7','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-23 19:02:42.269000'),
('e77004b0-1e37-4768-a30b-053c73d903af','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:40:47.000000'),
('e770f5bd-ba7a-40c9-9c03-69bfa3dc0ccf','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:15:29.007000'),
('e78268d0-22e8-478f-a6f1-ed03b55a864d','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-17 15:58:38.000000'),
('e870ae71-4786-4ade-9af3-887f358ff5ea','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2023-01-11 13:38:02.871000'),
('e90d3665-69b1-47b4-821a-408eda62e406','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:29:56.723000'),
('e92ca93b-0c85-4c95-bd87-d5c85598fb32','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-01-11 09:27:04.690000'),
('e9a781bd-42af-480e-9a94-af8198270f1f','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 16:03:17.000000'),
('e9b3071c-c5ae-4539-849a-f3188034724d','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-14 19:15:21.000000'),
('ea22ab66-ab36-44f0-83dd-720c6603353a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 23:45:49.000000'),
('ea3a058f-5079-461d-902c-e7c63c718f05','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-14 10:43:01.000000'),
('eb5803f0-5c1b-4067-acfc-ba6b59c7abdd','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:38:32.000000'),
('eb639f01-7812-4460-9c4d-204dc8c6a2d4','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 10:57:31.000000'),
('eb6cac38-efbf-4edc-a752-9579f8f86cf8','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:40:38.000000'),
('ebde85b7-96eb-4d29-a733-d825eb807325','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:47:22.000000'),
('ec3b67f6-6bcd-4324-a75b-d012710084b8','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:48:11.000000'),
('ec6c0c8b-bb3d-4970-804e-508ebdb56205','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 01:58:32.000000'),
('ecbc33ee-e49d-49a7-9cc2-a564e7ee101f','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 10:57:34.000000'),
('ece343af-208d-4ce8-8ceb-09adb752413b','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:45:41.000000'),
('ecf086f1-9844-4360-811c-b72cd4ac2f81','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 19:36:09.000000'),
('ed3bf3bf-2428-44d2-86f0-b4e6bd651671','1483618794@qq.com','新增','223.104.119.188','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-14 19:19:26.000000'),
('ed994aa5-7da3-4ac7-a85f-3cd8ecf0ee5a','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2023-01-11 09:26:39.927000'),
('edcf20cd-d175-4b2b-ad3c-16c593485b1c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:46:08.000000'),
('ee1c41e5-a4d7-42e0-b567-9a1064cef10e','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 10:14:35.000000'),
('ef7c99c6-6d44-4d22-a6a4-391033e65b6c','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 10:11:54.000000'),
('ef9af503-7e1b-41ec-a28c-851aa04ae3b5','abc@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2022-12-18 12:15:50.549000'),
('efe97256-1479-4975-ab47-5a31755a90ee','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findByLikeName','商品管理','2023-01-11 11:05:14.950000'),
('f016e36c-b1d4-4790-916f-a19906f7c8b3','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 21:38:15.000000'),
('f032247f-6d97-4af8-a683-2a26d97c7a7d','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 10:20:24.000000'),
('f040fb54-7e88-4910-936b-3b15a8d6ccc3','admin@qq.com','查询','127.0.0.1','com.example.api.controller.EmployeeController.findAll','员工管理','2023-01-11 09:11:05.506000'),
('f0daa146-d4dd-475a-852b-e85066bbdcdb','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:55:56.000000'),
('f0e18f59-b4b6-4534-b483-115dce75c059','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 14:59:47.496000'),
('f1b64160-7c16-4cd7-b2d9-51fcf49abdf4','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 09:19:19.949000'),
('f1c113e1-dd54-4e04-b356-cd93e6803200','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-19 11:43:10.861000'),
('f1f35d70-2465-4d87-9213-d2018a0cddbc','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 19:17:38.000000'),
('f27a1941-b58c-4003-8ca9-6257af05ac7d','abc@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:16:21.000000'),
('f290baef-d76a-4139-aa19-eb7f6b6e043a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-14 10:06:34.000000'),
('f2d6cc71-3ef7-48ff-a084-58d518e9aefc','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-17 15:58:32.000000'),
('f3947120-4e96-4978-8ab8-6ea413d492a8','admin@qq.com','新增','127.0.0.1','com.example.api.controller.CommodityController.save','商品管理','2023-01-11 11:05:03.463000'),
('f3f2e97d-8593-4eb9-a157-19496b71bf4f','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 18:15:07.000000'),
('f4199d47-59c9-42d7-a269-8598c3978eb9','1483618794@qq.com','查询','223.104.123.5','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-16 22:19:40.000000'),
('f43f1e48-329b-459a-9279-d4a90e44bd6a','abc@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:33:43.000000'),
('f44c00e2-d21b-405c-8d82-9c9bd3e1b97a','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:37:25.000000'),
('f480774f-e25f-4da2-9fa0-9c53fcc98f8c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2023-01-11 10:16:29.688000'),
('f485f015-6aa7-45e3-b3b0-6e31ae323b7c','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 22:08:54.000000'),
('f48bcdb5-b6ae-43d6-8c85-83900f7d0d3c','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 09:29:04.000000'),
('f49f9dd3-e535-4dcd-891a-5267bebbd7d0','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 09:31:53.000000'),
('f4a51d75-f01b-462f-8fcc-7b2c582744c5','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:23:25.000000'),
('f4c33bfe-877b-452b-89dd-1973493aac22','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:55:59.000000'),
('f4f63cb7-2a5f-452a-80aa-e40377a80102','abc@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-18 12:16:01.263000'),
('f54810b7-41b2-41ee-b846-b10e599ae5be','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 11:14:27.000000'),
('f5684389-54b4-44d2-bdce-cc033b2abdc8','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:06:30.000000'),
('f5ac8f97-284e-4ffb-985c-bf738b7d7a98','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-16 22:39:17.000000'),
('f5c130de-f6cb-4c05-8472-40da8e099e5b','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2022-12-19 13:01:30.544000'),
('f5e4cdf1-ef9c-4cb7-a09a-ff832ff9d702','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:29:13.000000'),
('f62ff4e4-4b80-4f66-b831-bf5bb286478a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:41:33.000000'),
('f6366948-b6c9-426a-8897-b63718df8177','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 09:51:27.000000'),
('f63fbbe4-0657-4d03-8424-d8e89c686bac','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-14 01:38:11.000000'),
('f6a2f850-c540-4b83-9502-cbcd06131ec9','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 11:05:04.149000'),
('f6e9fbdb-8bd8-4310-9f51-1709d6d1ccb9','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:35:25.000000'),
('f6ed3c1f-6a5c-4a25-9e71-7d0d5bcf1228','1483618794@qq.com','新增','117.150.6.226','com.example.api.controller.CommodityController.save','商品管理','2024-11-17 10:10:39.000000'),
('f73837a2-0632-4184-ac96-c6e7d2d7f1a0','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:39:39.000000'),
('f8aa7a26-5c50-4808-8728-f11d1c71a443','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:47:08.000000'),
('f8de71e1-be15-4c32-ad67-eee903d4fdda','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 10:06:32.000000'),
('f8ede4d8-b55a-4a0c-b24c-dbf3b55b26a4','1483618794@qq.com','查询','117.150.6.226','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 10:24:01.000000'),
('f8fb4848-84b4-4307-8341-8bd8fc124834','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2022-12-19 11:21:38.466000'),
('f90db2f0-c30c-4a89-a598-c90dfab257ff','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-13 22:10:07.000000'),
('f93f3302-1f73-45da-8d7c-a84f2d11d955','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 22:24:16.000000'),
('f9559e2b-4dd5-46c2-adb5-18968a080cdb','admin@qq.com','查询','127.0.0.1','com.example.api.controller.WarehouseController.findAll','仓库管理','2022-12-23 19:07:50.563000'),
('f9feefd2-4a32-4175-bb66-19d9ad2a76b5','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2022-12-19 13:10:30.279000'),
('fa172551-8193-4317-8343-c0371703b5d0','1483618794@qq.com','新增','117.150.6.41','com.example.api.controller.CommodityController.save','商品管理','2024-11-17 15:51:14.000000'),
('fac6c570-e8b5-48a0-b07b-dbdb8a63b097','abc@qq.com','查询','223.104.119.188','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-13 21:34:47.000000'),
('fae542c0-8263-45fa-a641-a334a1e48b8a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 22:48:19.000000'),
('fb3fab10-1901-4207-be81-497beac4a3ed','1483618794@qq.com','查询','117.150.6.41','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 15:58:05.000000'),
('fb7041cc-6be3-4d9d-a53d-ef1786a3cb6e','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-03 10:08:44.785000'),
('fb743602-4a2e-4549-939a-a2b4a8385f85','1483618794@qq.com','查询','117.150.6.50','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-14 01:55:55.000000'),
('fd3a4c5c-b289-4201-8058-8ed4852ae1c9','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DistributionController.findAll','配送管理','2023-02-20 19:59:00.038000'),
('fd5efa6e-513c-43ab-aaaf-bfe02f22834a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:41:50.000000'),
('fd639c7f-6e52-4ee0-9ffd-1df0dd87076c','admin@qq.com','查询','127.0.0.1','com.example.api.controller.DriverController.findAll','驾驶员管理','2022-12-19 13:10:58.648000'),
('fd64dab2-6374-4cd4-a2de-b2044e820380','admin@qq.com','查询','127.0.0.1','com.example.api.controller.VehicleController.findAll','车辆管理','2022-12-19 11:21:31.942000'),
('fd64e793-44e0-41f5-86fe-f7525e3cee8e','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-18 11:30:17.740000'),
('fd99af26-a39b-4ca9-bdba-b38ab19f1128','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 23:25:22.000000'),
('fdc989ad-5627-4060-b701-44e6ce46c51b','shawn_xsz@qq.com','查询','117.150.6.82','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-16 22:40:36.000000'),
('fdfe2804-b43d-4a7d-a48e-aa861ba5c284','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-01-11 13:39:20.473000'),
('fe05e809-a92d-4fd1-b8e6-e69cc87e656a','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-13 23:27:18.000000'),
('fe3d8c18-e395-4342-86ac-06f79aace322','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2023-02-16 10:30:18.971000'),
('fe4899d1-55dc-4d8e-9745-9f598d1e21e3','admin@qq.com','查询','127.0.0.1','com.example.api.controller.CommodityController.findAll','商品管理','2022-12-23 19:03:22.603000'),
('ff72d6aa-e23a-46be-9965-41a89ef5dd84','1483618794@qq.com','查询','223.104.119.188','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-13 21:41:45.000000');
/*!40000 ALTER TABLE `system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `update_at` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `id` varchar(255) NOT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `driving` bit(1) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES
('786fb288-4445-4784-b923-de013fa3892f','2023-01-11 13:38:19','\0','京A0001','货车'),
('ce33de59-9584-4161-a17e-9046399d14c6','2022-11-27 12:26:18','\0','京A0000','货车');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse` (
  `id` varchar(255) NOT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `principle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES
('00d0ecd7-e49c-451f-ac51-735052ede247','2024-11-16 21:52:27','测试','斜阳'),
('4ce03c2d-1745-40a2-af28-fe10994dad8d','2024-11-17 16:02:01','智慧超市','梦生'),
('e49cda45-c794-4206-bbab-c0b7665269bf','2024-11-16 22:06:02','测试1','斜阳');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-17 16:11:53
