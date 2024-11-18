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
('35d50aee-390d-4fe6-a33d-f3b0aaf303d5','2024-11-17 19:30:22','dd20041003@qq.com','123456789','ROLE_SUPER_ADMIN'),
('3d223af7-3724-47b3-b0f2-b16187033685','2024-11-17 18:00:42','wouiikjidauabi@qq.com','1234567','ROLE_SUPER_ADMIN'),
('675cd52a-2581-4f96-a69d-4976874f2a41','2024-11-13 22:05:17','shawn_xsz@qq.com','123456','ROLE_SUPER_ADMIN'),
('7f85c9bc-641b-4219-9d70-77aafdabd3ed','2024-11-17 16:53:53','2712644979@qq.com','gmzr27126','ROLE_SUPER_ADMIN'),
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
('10bcb016-0163-4825-8eb4-41b6c12fb65d',4500,'2024-11-17 10:35:59','黄河之水天上来','天河水',9.99,NULL),
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
('940b334e-97b8-48a9-8c1e-d53e349eb8b1','宜昌-西陵区-大学城','注意易碎, ','7ff7207d-8ccb-4fa8-9515-5341fd218764','胡国昌','京A0001','15873321966',2,'2024-11-23 16:05:30.000000','','786fb288-4445-4784-b923-de013fa3892f'),
('d7a129dd-107f-4b40-b893-552df24039d7','宜昌-西陵','注意易碎, ','a4a88363-a438-4847-a4bf-b25e6fa5ae6e','李四','京A0001','15872461966',0,'2024-11-23 17:05:39.000000','','786fb288-4445-4784-b923-de013fa3892f');
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
('ea3bba9b-cda6-438d-b196-7c81e97b5040','','2024-11-13 23:43:53','\0','男性','4412242003423345534','34','王五','231325345345','12',NULL),
('fa69d4e3-d0e4-4b02-ac64-7b9570147925','中国 湖北 武汉 洪山 珞喻路','2024-11-17 20:03:39','\0','男性','423423133123543678','342556','泪的告白','15876546557','12',NULL);
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
('50d167db-0365-4da7-9f30-1286fa3dec30','10bcb016-0163-4825-8eb4-41b6c12fb65d',4500,NULL,'天河水','4ce03c2d-1745-40a2-af28-fe10994dad8d'),
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
('320d9392-ff6c-4eef-aeec-7e54f1907552','10bcb016-0163-4825-8eb4-41b6c12fb65d',5000,'2024-11-17 20:05:03','紫气东来','天河水',1,'4ce03c2d-1745-40a2-af28-fe10994dad8d'),
('a2acc286-db56-4b2e-b875-073baf38534f','10bcb016-0163-4825-8eb4-41b6c12fb65d',500,'2024-11-17 20:05:12','紫气东来','天河水',-1,'4ce03c2d-1745-40a2-af28-fe10994dad8d'),
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
('1c2fc333-1bd2-4b86-9118-522c0f9c3d6d','Chrome','2024-11-17 19:30:38.000000','dd20041003@qq.com','111.183.60.149',1),
('3083984e-bafe-4220-897d-c3f5696361c8','Chrome','2024-11-13 22:12:34.000000','2149754832@qq.com','117.150.0.240',1),
('360c48f8-3de8-49dc-ad6c-128cc481fbc6','Chrome','2024-11-13 22:04:11.000000','shawn_xsz@qq.com','117.150.6.82',0),
('40ecfa71-4113-47bb-a0fe-def1f6be213b','Chrome','2024-11-14 16:59:10.000000','1483618794@qq.com','223.104.119.188',1),
('53c26825-3d89-487a-9207-9b69469cba47','Chrome','2024-11-13 21:37:58.000000','1483618794@qq.com','223.104.119.188',1),
('57325d92-a59c-4b84-bec3-d153f0cdbec6','Chrome','2024-11-17 21:00:07.000000','1483618794@qq.com','223.104.119.181',1),
('5f905429-fc37-4241-ba52-f3d00d59d2bc','Chrome','2024-11-16 22:38:11.000000','shawn_xsz@qq.com','117.150.6.82',0),
('66e33455-0fcf-432c-ac3e-4a3f1c8f69c5','Chrome','2024-11-14 09:48:22.000000','123456@qq.com','117.150.0.219',1),
('77115b5c-442c-4c3b-83e7-3b74992572ad','Chrome','2024-11-13 22:18:54.000000','2149754832@qq.com','27.21.10.45',1),
('773c426b-b39e-4a26-92cb-c1f722df1393','Chrome','2024-11-13 22:04:08.000000','shawn_xsz@qq.com','117.150.6.82',0),
('77635d20-aa6a-457e-8e03-805e990241b5','Chrome','2024-11-14 10:05:07.000000','1483618794@qq.com','223.104.119.188',1),
('78357ff3-fc28-4aac-baa6-52d39934021c','Chrome','2024-11-16 22:38:14.000000','shawn_xsz@qq.com','117.150.6.82',1),
('8d7ad4aa-f7be-4bb6-9110-a1cd446200aa','Chrome','2024-11-14 17:53:44.000000','1483618794@qq.com','117.150.6.220',1),
('8e24bd49-1a31-4150-8967-24e27ff11625','Chrome','2024-11-16 18:13:53.000000','1483618794@qq.com','117.150.6.17',1),
('bb96d23e-f383-434f-8caf-6c6e0a0370a8','Chrome','2024-11-17 16:53:58.000000','2712644979@qq.com','183.95.49.72',1),
('bcc60d5a-4f3f-43ee-8571-531e5abe3e52','Chrome','2024-11-17 19:44:23.000000','1483618794@qq.com','223.104.119.181',1),
('bf1220e0-ef22-436e-8a72-626e73393b21','Chrome','2024-11-13 22:05:34.000000','shawn_xsz@qq.com','117.150.6.82',1),
('bf32ae0d-8ab8-43ee-8dab-f3701c257a03','Chrome','2024-11-13 22:04:03.000000','shawn_xsz@qq.com','117.150.6.82',0),
('cd27ac81-ff45-4b1a-9c9b-e17e54c228c9','Chrome','2024-11-16 18:07:35.000000','1483618794@qq.com','117.150.6.17',1),
('ce482377-9370-4cea-8a99-629e2678ab8b','Chrome','2024-11-13 21:59:45.000000','1483618794@qq.com','223.104.119.188',1),
('cf9cf8fb-f32d-4397-8598-4340dd3de613','Chrome','2024-11-16 09:36:17.000000','1483618794@qq.com','117.150.6.14',1),
('de15e4eb-0ded-4e9c-b8cb-ad2e5cd5c9e8','Chrome','2024-11-17 09:51:13.000000','1483618794@qq.com','117.150.6.226',1),
('e684be5c-48c9-4c99-bb28-94638b0426c0','Chrome','2024-11-13 21:36:58.000000','1483618794@qq.com','223.104.119.188',0),
('ecba313a-ccb2-42d1-8056-ca78a69d5dde','quark浏览器','2024-11-14 09:46:29.000000','123456@qq.com','117.150.0.219',1),
('f25239ea-d879-402a-b188-604eb97424fa','Chrome','2024-11-16 21:28:48.000000','1483618794@qq.com','117.150.6.110',1),
('f5e3ed05-77c4-42ac-8e22-8d0d77712e3e','Chrome','2024-11-17 20:02:03.000000','1483618794@qq.com','223.104.119.181',1);
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
('05f3f27f-2b56-476e-aa50-1ca511b5cee2','天河水','志泽供应','50','2024-11-17 16:35:51','志泽供应售卖冰红茶','2344253452342','\0','15872461966',499.5),
('bfc5eba7-0289-44e1-8003-c02bfab0e2d4','天河水','星火供应','50','2024-11-17 16:39:48','星火供应售卖菠萝','324123423434','\0','15872461966',499.5),
('d1228f84-d537-42fc-bfe5-35619b6c6b0e','天河水','志泽供应','50','2024-11-17 16:33:45','志泽供应售卖金闪闪','213455676723','\0','15845461966',499.5),
('fbc747ab-642d-4e64-b31c-6606f957c093','天河水','吉星供应','1000','2024-11-17 16:40:11','购买天河水','33722478863','','17872461966',9990);
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
('0b9967a8-3309-43f8-9221-80fde7e123f9','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-17 20:48:47.000000'),
('0c1dc18e-879e-42fe-9771-b7934eca0668','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 20:45:36.000000'),
('0d1610c8-a836-4a3a-a04b-9f28f09319ca','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-17 21:01:56.000000'),
('115f3019-e18f-4cde-8d2f-f34d2744d7bf','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-18 11:11:45.000000'),
('2461608e-ddd8-49c1-a52c-6fad8b0fc562','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 20:48:51.000000'),
('2caa2d77-5adb-4660-9d70-9e68669cd34e','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-11-17 20:43:33.000000'),
('2ddc1d2d-7e20-48e7-bfc1-302a44052a3c','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 21:00:26.000000'),
('33916738-da6c-47f3-bc42-6ee0a1b2ed34','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-17 21:01:50.000000'),
('5034b7ee-ff8c-422a-b35b-96b937258f71','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 20:43:32.000000'),
('5077e3dc-9323-4288-afad-d298b52abed1','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 20:45:24.000000'),
('52be2fac-cb92-4b90-a700-af8656422e34','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 21:01:10.000000'),
('6222bb98-f406-466b-bae4-a2bc4dc6cc68','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-18 10:46:43.000000'),
('84efdd9c-90fd-4bc8-b0f6-7682384c91c1','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 21:00:44.000000'),
('87c938ed-b844-4cca-8f61-fef03b5e839a','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-17 21:01:54.000000'),
('be5a1bb1-29f1-4cf9-a729-cebc2a1ac27d','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 20:45:38.000000'),
('c6c8e55c-ca08-4c03-ad9c-0fb51e835383','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 20:45:36.000000'),
('cb7bd1cf-ce29-4fe1-8e0d-1e6b98ec1f6e','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 21:00:08.000000'),
('d32e2241-0c17-495a-ba32-be7ab1128f55','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-17 20:48:26.000000'),
('d3c77bc5-2f6f-4f44-ace0-c3ac1e418ee2','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 21:01:13.000000'),
('e561e01f-a09d-4504-b503-841432e216e6','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 20:43:24.000000'),
('ed07ca9b-f7dc-49f1-aed7-12743cdfd009','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 21:00:44.000000');
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

-- Dump completed on 2024-11-18 12:19:40
