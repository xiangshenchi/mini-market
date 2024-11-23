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
('172ce119-545a-4f28-9812-2f076f2953ab','2024-11-20 20:23:52','2402871371@qq.com','yx0987654321','ROLE_SUPER_ADMIN'),
('28c5c41b-935b-46f2-b563-c0a1fbac9f7d','2024-11-20 22:13:06','3505408546@qq.com','lyx2004','ROLE_SUPER_ADMIN'),
('34f2da9e-d2d6-4737-8763-0e9a17796298','2024-11-13 21:37:51','1483618794@qq.com','123456','ROLE_SUPER_ADMIN'),
('35d50aee-390d-4fe6-a33d-f3b0aaf303d5','2024-11-17 19:30:22','dd20041003@qq.com','123456789','ROLE_SUPER_ADMIN'),
('476e6c45-d84b-49b8-a6f5-915008d924f6','2024-11-20 16:27:48','2149754832@qq.com','123456','ROLE_SUPER_ADMIN;ROLE_COMMODITY;ROLE_ADMIN;ROLE_EMPLOYEE;ROLE_SALE;ROLE_WAREHOUSE'),
('4c388ca5-d167-403e-90a1-1edeee3a6e2c','2024-11-22 12:03:41','niuiyigeukjidauabi@qq.com','abc123456','ROLE_SUPER_ADMIN'),
('6725440b-7c0b-4183-a89f-81fce91588ee','2024-11-21 12:57:57','1793529504@qq.com','QWERTYUIOP666','ROLE_SUPER_ADMIN'),
('675cd52a-2581-4f96-a69d-4976874f2a41','2024-11-13 22:05:17','shawn_xsz@qq.com','123456','ROLE_SUPER_ADMIN'),
('6a23f627-65fa-45bf-8550-25a715a20ace','2024-11-21 12:45:25','dkh123456@qq.com','123456','ROLE_SUPER_ADMIN'),
('7f85c9bc-641b-4219-9d70-77aafdabd3ed','2024-11-17 16:53:53','2712644979@qq.com','gmzr27126','ROLE_SUPER_ADMIN'),
('8e13e27c-1179-42b3-86f0-d6246c73f4d4','2024-11-20 22:04:36','3301750183@qq.com','123456789','ROLE_SUPER_ADMIN'),
('b427895a-b920-4fab-82a2-4d31bf68b7a7','2024-11-20 22:40:31','3505408546@qq.com','lyx20040205','ROLE_SUPER_ADMIN');
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
('2149754832@qq.com',1732091593100,'123456'),
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
('2dd53c37-33d3-416c-b2b9-041c3c3bc75a',4950,'2024-11-20 23:06:19','宛如奔向彼此的我们','绯染天空',9.99,NULL),
('44ae87af-46a3-4db4-acce-9dc81f977576',200,'2024-11-20 20:27:17','李淳爱和冰红茶 超级爱\n','冰红茶',4.99,NULL),
('de52e196-f91b-4b90-86de-f40ae58eebd2',990,'2024-11-14 10:06:02','打折面包','面包',1.99,NULL),
('fde892b0-6a65-4fab-a4f9-0ae4aa28a147',0,'2024-11-22 12:22:32','李淳超爱烤鸭','大号烤鸭',40,NULL);
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
('0053fbb8-e9aa-4c02-8f1d-b70e7d0d34f3','芜湖','2024-11-22 12:15:35','智慧超市','男性','421152101410031021','杨才','19171020541',NULL),
('035ae334-7250-4366-a141-ecb6e218f818','芜湖','2024-11-17 11:01:42','测试','男性','433921200412113737','李师傅','13728461997',NULL),
('3d06684c-0681-4744-bd67-c256414e51ad','芜湖','2024-11-17 11:02:10','测试','男性','1231231231231','胡国昌','123123123123123123123',NULL),
('6a68f788-0e10-47b9-81cd-18225c343aee','芜湖','2024-11-21 20:01:26','智慧超市','男性','420999200411248978','石瑞','15872441267',NULL),
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
('e2c1ca02-251f-4291-b132-a4f07d15edb0','2dd53c37-33d3-416c-b2b9-041c3c3bc75a',4950,NULL,'绯染天空','4ce03c2d-1745-40a2-af28-fe10994dad8d'),
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
('5eaf90d9-2f95-4b6f-81e7-a4134f4a42ee','2dd53c37-33d3-416c-b2b9-041c3c3bc75a',50,'2024-11-21 10:52:18','库存出库','绯染天空',-1,'4ce03c2d-1745-40a2-af28-fe10994dad8d'),
('78042217-0e7a-4a0c-b4a8-60122a0c7975','2dd53c37-33d3-416c-b2b9-041c3c3bc75a',5000,'2024-11-21 10:52:06','库存入库','绯染天空',1,'4ce03c2d-1745-40a2-af28-fe10994dad8d'),
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
('1566de77-9a1c-47f6-963e-3e1b8bfb8ee2','Chrome','2024-11-21 19:54:57.000000','1483618794@qq.com','湖北省咸宁市',1),
('1ab2f6fc-4aad-4e20-b324-8a579f4737a3','Chrome','2024-11-21 12:36:53.000000','1483618794@qq.com','湖北省咸宁市',1),
('1c2fc333-1bd2-4b86-9118-522c0f9c3d6d','Chrome','2024-11-17 19:30:38.000000','dd20041003@qq.com','111.183.60.149',1),
('22ca5b9a-e2c5-4257-9ea3-935938256d81','Chrome','2024-11-20 16:18:42.000000','123456@qq.com','湖北省',1),
('25850838-1eac-45b6-b5ac-a0e1e7c1b772','Chrome','2024-11-20 16:18:39.000000','2149754832@qq.com','湖北省',0),
('27a52a6d-ce8c-492d-a4c1-363bcc70f4bb','Chrome','2024-11-20 16:18:45.000000','2149754832@qq.com','湖北省',0),
('2cf52c30-3f3b-4229-a663-c9ec47d8f2d3','Chrome','2024-11-21 19:40:51.000000','1483618794@qq.com','湖北省咸宁市',1),
('2f0a510d-49c4-480c-9a1b-cdc73f31a6a1','火狐浏览器','2024-11-20 16:37:15.000000','123456@qq.com','湖北省',1),
('3083984e-bafe-4220-897d-c3f5696361c8','Chrome','2024-11-13 22:12:34.000000','2149754832@qq.com','117.150.0.240',1),
('360c48f8-3de8-49dc-ad6c-128cc481fbc6','Chrome','2024-11-13 22:04:11.000000','shawn_xsz@qq.com','117.150.6.82',0),
('38e12d87-ad64-49bc-acc2-f8a2709a8076','Chrome','2024-11-21 19:54:49.000000','1483618789@qq.com','湖北省咸宁市',0),
('3c616395-5576-47ce-8a4a-bbf6370222e1','Chrome','2024-11-20 16:34:50.000000','1483618794@qq.com','局域网',1),
('3c8bfddb-30c6-4cc6-b311-309dc19edc24','Chrome','2024-11-20 16:26:45.000000','2149754832@qq.com','湖北省',1),
('3e319f16-2a44-42db-a687-6a4572b2a1bb','Chrome','2024-11-20 16:18:07.000000','2149754832@qq.com','湖北省',0),
('40ecfa71-4113-47bb-a0fe-def1f6be213b','Chrome','2024-11-14 16:59:10.000000','1483618794@qq.com','223.104.119.188',1),
('44d4584d-39a9-4b1b-93c1-b4248daf8b93','Chrome','2024-11-20 16:59:17.000000','1483618794@qq.com','湖北省荆门市',1),
('4797850d-8cec-43e2-8d7e-4b9881153f74','Chrome','2024-11-20 16:19:30.000000','1483618794@qq.com','湖北省',1),
('53c26825-3d89-487a-9207-9b69469cba47','Chrome','2024-11-13 21:37:58.000000','1483618794@qq.com','223.104.119.188',1),
('57325d92-a59c-4b84-bec3-d153f0cdbec6','Chrome','2024-11-17 21:00:07.000000','1483618794@qq.com','223.104.119.181',1),
('5e09855b-86f1-41a3-bd0d-f7e2c347822f','Chrome','2024-11-21 12:58:25.000000','1793529504@qq.com','湖北省咸宁市',1),
('5eafc5da-ae73-48c7-a4c1-dd8543d83d2c','Chrome','2024-11-21 19:49:07.000000','1483418794@qq.com','湖北省咸宁市',0),
('5ed351ca-f1ab-48fe-adb1-a3d16b2debf5','Chrome','2024-11-21 10:51:09.000000','1483618794@qq.com','湖北省',1),
('5f905429-fc37-4241-ba52-f3d00d59d2bc','Chrome','2024-11-16 22:38:11.000000','shawn_xsz@qq.com','117.150.6.82',0),
('66e33455-0fcf-432c-ac3e-4a3f1c8f69c5','Chrome','2024-11-14 09:48:22.000000','123456@qq.com','117.150.0.219',1),
('6e05642c-4f34-4a06-9771-a91a6006c768','火狐浏览器','2024-11-20 16:12:19.000000','1483618794@qq.com','湖北省荆门市',1),
('77115b5c-442c-4c3b-83e7-3b74992572ad','Chrome','2024-11-13 22:18:54.000000','2149754832@qq.com','27.21.10.45',1),
('773c426b-b39e-4a26-92cb-c1f722df1393','Chrome','2024-11-13 22:04:08.000000','shawn_xsz@qq.com','117.150.6.82',0),
('77635d20-aa6a-457e-8e03-805e990241b5','Chrome','2024-11-14 10:05:07.000000','1483618794@qq.com','223.104.119.188',1),
('78357ff3-fc28-4aac-baa6-52d39934021c','Chrome','2024-11-16 22:38:14.000000','shawn_xsz@qq.com','117.150.6.82',1),
('8d7ad4aa-f7be-4bb6-9110-a1cd446200aa','Chrome','2024-11-14 17:53:44.000000','1483618794@qq.com','117.150.6.220',1),
('8e24bd49-1a31-4150-8967-24e27ff11625','Chrome','2024-11-16 18:13:53.000000','1483618794@qq.com','117.150.6.17',1),
('9142c937-66f4-41a0-a010-0f3f49700393','Chrome','2024-11-20 16:48:39.000000','1483618794@qq.com','湖北省襄阳市',1),
('91453a5e-5748-471d-b340-710b7fbcb7ff','火狐浏览器','2024-11-20 16:12:19.000000','1483618794@qq.com','湖北省荆门市',1),
('95e8cb1d-6221-4a21-afd2-1649a31ee961','Chrome','2024-11-20 18:49:20.000000','1483618794@qq.com','湖北省咸宁市',1),
('9935472e-69a9-46e8-b94b-5d355346f105','Chrome','2024-11-20 21:26:14.000000','1483618794@qq.com','湖北省咸宁市',1),
('a30db947-4c8c-4723-95ab-daf3f3800fbe','Chrome','2024-11-22 12:04:09.000000','niuiyigeukjidauabi@qq.com','湖北省宜昌市',1),
('a445cb04-f833-40b0-b8c5-d8a6ed5a854a','Chrome','2024-11-20 10:23:50.000000','1483618794@qq.com','223.104.119.181',1),
('abc8cd97-7e06-4a46-a52a-6221ab5e0523','Chrome','2024-11-21 17:05:33.000000','1483618794@qq.com','湖北省咸宁市',1),
('adad7ce2-1e59-49be-9f07-8515d00d8585','Chrome','2024-11-20 16:33:03.000000','1483618794@qq.com','局域网',1),
('b7541bcd-3412-47cb-85aa-3615ba5d7181','Chrome','2024-11-20 16:18:45.000000','2149754832@qq.com','湖北省',0),
('ba7d802f-2a49-45ec-9189-c583e6763560','Chrome','2024-11-21 12:45:33.000000','dkh123456@qq.com','湖北省',1),
('bb96d23e-f383-434f-8caf-6c6e0a0370a8','Chrome','2024-11-17 16:53:58.000000','2712644979@qq.com','183.95.49.72',1),
('bbaa4fe7-9180-417b-a8b6-c611286b0c79','火狐浏览器','2024-11-20 16:12:16.000000','1483618794@qq.com','湖北省荆门市',1),
('bcc60d5a-4f3f-43ee-8571-531e5abe3e52','Chrome','2024-11-17 19:44:23.000000','1483618794@qq.com','223.104.119.181',1),
('bd6ef130-da81-459d-ba87-5b71313a0ea7','Chrome','2024-11-21 11:01:02.000000','1483618794@qq.com','湖北省',1),
('be85ce5b-a325-491c-a8ca-5ef7ed8de19d','Chrome','2024-11-20 20:24:03.000000','2402871371@qq.com','湖北省',1),
('bf1220e0-ef22-436e-8a72-626e73393b21','Chrome','2024-11-13 22:05:34.000000','shawn_xsz@qq.com','117.150.6.82',1),
('bf32ae0d-8ab8-43ee-8dab-f3701c257a03','Chrome','2024-11-13 22:04:03.000000','shawn_xsz@qq.com','117.150.6.82',0),
('bf6a90c8-90b6-4ccf-8516-064958022830','Chrome','2024-11-21 12:15:01.000000','1483618794@qq.com','湖北省咸宁市',1),
('c561eb7c-0feb-4d37-8c94-b319fd974621','火狐浏览器','2024-11-20 16:12:14.000000','1483618794@qq.com','湖北省荆门市',1),
('cd27ac81-ff45-4b1a-9c9b-e17e54c228c9','Chrome','2024-11-16 18:07:35.000000','1483618794@qq.com','117.150.6.17',1),
('ce482377-9370-4cea-8a99-629e2678ab8b','Chrome','2024-11-13 21:59:45.000000','1483618794@qq.com','223.104.119.188',1),
('cf9cf8fb-f32d-4397-8598-4340dd3de613','Chrome','2024-11-16 09:36:17.000000','1483618794@qq.com','117.150.6.14',1),
('d6c5396d-febb-4855-a665-09e6ec00776b','火狐浏览器','2024-11-20 16:12:20.000000','1483618794@qq.com','湖北省荆门市',1),
('d7652bce-3907-43ab-9f51-11695e693af9','Chrome','2024-11-20 16:24:06.000000','1234561@qq.com','湖北省',1),
('d8f95883-86f5-4e89-ac32-ea2d05a24db3','Chrome','2024-11-21 13:08:31.000000','1793529504@qq.com','湖北省武汉市',1),
('dd139d0e-24d4-4890-8c50-dfd03f761ecf','Chrome','2024-11-20 16:19:17.000000','2149754832@qq.com','湖北省',0),
('de15e4eb-0ded-4e9c-b8cb-ad2e5cd5c9e8','Chrome','2024-11-17 09:51:13.000000','1483618794@qq.com','117.150.6.226',1),
('df2503ad-9ee3-4859-aa62-9b0768c536a9','Chrome','2024-11-21 12:32:01.000000','1483618794@qq.com','湖北省咸宁市',1),
('e2f2cce7-e56b-4101-b234-976c02681111','Chrome','2024-11-20 22:04:43.000000','3301750183@qq.com','湖北省武汉市',1),
('e55cc205-1329-435c-8dc5-4cb8214e5ace','Chrome','2024-11-20 22:40:47.000000','3505408546@qq.com','河北省',1),
('e684be5c-48c9-4c99-bb28-94638b0426c0','Chrome','2024-11-13 21:36:58.000000','1483618794@qq.com','223.104.119.188',0),
('e74d5ed9-2ab8-4430-ab5c-1ba982008538','Chrome','2024-11-20 17:21:11.000000','1483618794@qq.com','湖北省荆门市',1),
('ecba313a-ccb2-42d1-8056-ca78a69d5dde','quark浏览器','2024-11-14 09:46:29.000000','123456@qq.com','117.150.0.219',1),
('f21f64e6-aefd-4e2d-bdce-c42b856261fa','Chrome','2024-11-21 10:39:45.000000','1483618794@qq.com','湖北省',1),
('f25239ea-d879-402a-b188-604eb97424fa','Chrome','2024-11-16 21:28:48.000000','1483618794@qq.com','117.150.6.110',1),
('f5e3ed05-77c4-42ac-8e22-8d0d77712e3e','Chrome','2024-11-17 20:02:03.000000','1483618794@qq.com','223.104.119.181',1),
('fa76b17d-b7f7-45b5-842e-1a07bfbe798f','Chrome','2024-11-20 22:04:41.000000','3301750183@qq.com','湖北省武汉市',1),
('fc3a93c7-a2b3-4c48-b288-08b27b548617','Chrome','2024-11-20 23:43:45.000000','1483618794@qq.com','湖北省',1),
('fffa8154-4606-454a-a506-2af35fdfb732','Chrome','2024-11-21 19:49:22.000000','1483618794@qq.com','湖北省咸宁市',1);
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
('0308725e-1ae6-4d2a-8b39-ae2586752868','3505408546@qq.com','查询','河北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:45:05.000000'),
('05287e7c-9fbb-46d3-a759-738f4c8789bb','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:07:05.000000'),
('05b61d17-66bc-4a98-98b2-c2f9c1179c3f','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 18:22:33.000000'),
('074857e9-0472-499d-bfe7-f8baa112299f','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:25:02.000000'),
('08512d41-48ec-4c87-92b9-c2c9f95814dc','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-20 20:28:06.000000'),
('094063bf-7804-460b-b2ae-924f9a363a11','1234561@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:24:35.000000'),
('0b9967a8-3309-43f8-9221-80fde7e123f9','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-17 20:48:47.000000'),
('0c1dc18e-879e-42fe-9771-b7934eca0668','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 20:45:36.000000'),
('0c278d2e-bb8f-419d-86e3-cf3b96e7de64','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 19:59:48.000000'),
('0d1610c8-a836-4a3a-a04b-9f28f09319ca','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-17 21:01:56.000000'),
('0da14b79-8faa-467f-baac-63e5c0b2180f','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 23:04:51.000000'),
('0e62f9ac-d74e-41a6-8a88-84ae629a7185','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 20:28:06.000000'),
('0f0c27cc-16e9-4f5e-8528-29ec997f3826','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 15:36:08.000000'),
('0ff14f46-7c21-498b-ae31-fac16feddd9a','niuiyigeukjidauabi@qq.com','新增','湖北省宜昌市','com.example.api.controller.EmployeeController.save','员工管理','2024-11-22 12:15:23.000000'),
('104f7061-6226-491b-84ca-7c9f9d8d5b28','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 23:02:22.000000'),
('107f3c35-a25e-487a-8792-b7dd34f72a86','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:07:59.000000'),
('1129c3f3-e9f8-43fa-a9d4-214ad9e668c6','2149754832@qq.com','查询','湖北省','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-20 16:28:31.000000'),
('115f3019-e18f-4cde-8d2f-f34d2744d7bf','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-18 11:11:45.000000'),
('139b417c-c138-4b28-90ba-4bff1d1ff421','1483618794@qq.com','新增','湖北省咸宁市','com.example.api.controller.CommodityController.save','商品管理','2024-11-20 20:27:18.000000'),
('143907f0-e7ba-4da2-bf29-60f6f12c972c','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 10:51:35.000000'),
('1511f7ac-02bd-413e-966a-19623b2b0087','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 13:11:04.000000'),
('1896bbf8-46f1-47b7-bd7d-0e600e2eeb39','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 18:49:22.000000'),
('18eeede3-d825-43a8-bfba-c6cd5991c529','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:05.000000'),
('1a75c9f3-27dc-4f46-ac07-bb757ccaf3a2','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 23:06:19.000000'),
('1d94af17-217d-4bf4-8d33-a0c2d0d6fa32','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 18:50:34.000000'),
('1db30f82-9335-4b8e-8e16-07db473c4199','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 19:54:14.000000'),
('225ff3be-93fa-45d6-85c5-796d17665e40','3505408546@qq.com','查询','河北省','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-20 22:43:07.000000'),
('2461608e-ddd8-49c1-a52c-6fad8b0fc562','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 20:48:51.000000'),
('24ce9f97-a742-4d2e-94aa-634ff3270551','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 20:28:07.000000'),
('254ffdc8-22df-45ca-bf61-3a34d9d27807','123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:37:17.000000'),
('298f20ad-dad4-4c81-9131-11d93941f19b','123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:21:00.000000'),
('2a3292ad-23c4-450d-990c-c8621c1ddc62','1483618794@qq.com','新增','湖北省咸宁市','com.example.api.controller.EmployeeController.save','员工管理','2024-11-21 20:01:27.000000'),
('2caa2d77-5adb-4660-9d70-9e68669cd34e','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-11-17 20:43:33.000000'),
('2d45d716-9746-4ca1-9428-ca74b8f03c38','2402871371@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 20:24:05.000000'),
('2ddc1d2d-7e20-48e7-bfc1-302a44052a3c','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 21:00:26.000000'),
('2de09b5c-9889-4c5d-99f5-e46fa1a9fbda','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:14.000000'),
('2df97b2e-da51-490b-8af4-09225205c31d','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:20:24.000000'),
('30043b19-688a-401e-a389-2031dea4ab45','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:56:34.000000'),
('3305c975-e613-4398-a96d-086adcd98baa','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 21:26:15.000000'),
('33916738-da6c-47f3-bc42-6ee0a1b2ed34','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-17 21:01:50.000000'),
('33ca8276-9b36-4f81-bc93-4ab9a6cb255d','1483618794@qq.com','查询','湖北省荆门市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 17:21:12.000000'),
('36549edc-74fc-4dea-a53e-ff860a130610','3505408546@qq.com','查询','河北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:43:58.000000'),
('36c71407-f620-4e0e-84d6-1a19f20e742b','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:17:13.000000'),
('37b6086b-49bc-471a-a1ee-a62666bad857','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 23:47:48.000000'),
('3806e264-2c95-4c74-8c77-292433bd7000','niuiyigeukjidauabi@qq.com','新增','湖北省宜昌市','com.example.api.controller.EmployeeController.save','员工管理','2024-11-22 12:14:34.000000'),
('38ecd03d-e083-42ca-adcf-56ab127b3e27','1483618794@qq.com','查询','局域网','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:53:06.000000'),
('3c156ba2-eb6c-4a27-8bb9-75ec98a001f7','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 10:52:21.000000'),
('3e380d15-571a-4b6e-91bf-7e2fa1578428','2149754832@qq.com','新增','湖北省','com.example.api.controller.CommodityController.save','商品管理','2024-11-20 16:29:29.000000'),
('3f50401c-53db-45a3-b359-a1b3e6334c49','3301750183@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 22:04:54.000000'),
('4028e0c6-6706-4ce0-9d26-ea0a76481a14','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:03.000000'),
('417752f1-db67-4a29-a717-ccb3279fde7a','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 23:04:53.000000'),
('41c29217-26de-4ed5-ae61-48d908ef0ab6','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:14:34.000000'),
('42761d72-eb31-4065-a3e2-008afb2139e3','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:22:55.000000'),
('42fc477e-7958-4552-8e67-1ccc336c09b2','1483618794@qq.com','查询','湖北省荆门市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:59:18.000000'),
('434e68e4-27d7-46e5-9b0e-cd66f83caadf','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 16:38:00.000000'),
('43a531e8-989a-4a4b-b658-5c1dc95ff171','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:04.000000'),
('45721da9-ccd5-4e91-80f6-e4b764e24001','123456@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 16:21:00.000000'),
('45f45304-30c0-460b-a156-717b370095a4','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:17:14.000000'),
('476b1040-16d0-4050-9299-08cf7260303d','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 15:13:07.000000'),
('47c05c07-b833-48b8-a58f-179d81cfeefe','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-20 22:32:22.000000'),
('480f79ef-7472-4f3b-8c33-4e229c074c9a','1483618794@qq.com','查询','局域网','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 17:20:32.000000'),
('4a3a94d1-d8ae-4c5f-a1e7-2bb8c2e98ea2','3505408546@qq.com','查询','河北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 22:42:24.000000'),
('4c008706-0560-4e53-910f-6459932f4ad6','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 16:47:58.000000'),
('4c0fa32a-68b2-4cd6-9b39-6db8480cdcca','3301750183@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:04:59.000000'),
('4c4bb693-3ccc-498c-b21c-33c929a4614a','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 17:05:34.000000'),
('4c5859bb-a0b9-4435-ab2b-35726e5bb531','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 20:28:11.000000'),
('4c92902c-4d11-4ca6-8469-9caa37cf13b4','1793529504@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:58:26.000000'),
('4d395666-7a7e-4f5d-b975-905f0812b3a1','3505408546@qq.com','查询','河北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 22:41:07.000000'),
('4e52a5a2-6168-4ef8-bdf2-8f18a1090a10','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 20:26:48.000000'),
('4e6d954e-10a9-4747-bd41-a8faf3abeaec','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 21:59:49.000000'),
('5034b7ee-ff8c-422a-b35b-96b937258f71','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 20:43:32.000000'),
('5077e3dc-9323-4288-afad-d298b52abed1','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 20:45:24.000000'),
('508e94e8-a1ba-40bb-9987-aa68f3aafaee','3505408546@qq.com','查询','河北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:42:39.000000'),
('50ea59f2-540b-4137-b70c-230c72fae1d8','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 23:43:56.000000'),
('50f01351-0303-4d33-8ef5-ba5055cc1a70','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:17:09.000000'),
('523c987a-af28-442b-972c-52b92d2b054b','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 10:51:22.000000'),
('52b64207-436e-4cd8-96ef-d7c2bf205701','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:39:39.000000'),
('52be2fac-cb92-4b90-a700-af8656422e34','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 21:01:10.000000'),
('53d0eed7-b037-4bdd-aaa7-637c25e77048','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 11:01:04.000000'),
('54330f32-70d8-46ea-aa02-4d8ebe060db3','1793529504@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:59:11.000000'),
('5575224b-d89f-426b-9e1b-d3ab4727441a','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:17:07.000000'),
('575f3a0a-3772-4f83-a247-a18172ee0347','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:38:14.000000'),
('58067280-14e4-4607-a9ee-cb1881186147','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:49:24.000000'),
('5c0a0c7b-92b2-4383-873b-28729685b3d8','3505408546@qq.com','查询','河北省','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-20 22:43:04.000000'),
('5cf2d174-bf6d-45c1-9ed4-2082f5cb9ba9','1483618794@qq.com','新增','湖北省咸宁市','com.example.api.controller.CommodityController.save','商品管理','2024-11-20 23:06:19.000000'),
('5d4f368a-403c-44e2-aa1e-929bd8951d1d','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 15:36:07.000000'),
('5f122147-d1e8-4de8-af5d-50c8848b0936','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 16:37:58.000000'),
('604dfe9a-ec4b-48a8-a6f7-b1341779deb1','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:31:52.000000'),
('609f1d87-5653-4eb2-9fcb-f01d000edff2','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 18:36:31.000000'),
('61891762-0af0-425a-a2ca-c1d87344e07f','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:07.000000'),
('6222bb98-f406-466b-bae4-a2bc4dc6cc68','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-18 10:46:43.000000'),
('641c3dee-5021-43c1-aad3-4cfe581ee2f8','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 22:24:36.000000'),
('6544bdeb-0ed0-4750-9a2e-2403531a9f56','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:17:04.000000'),
('65574192-6739-47a2-8a2e-cad259691ec6','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 11:13:21.000000'),
('661a0186-c869-4c31-a6b2-ee64963c24e7','3505408546@qq.com','查询','河北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 22:42:30.000000'),
('67d6a5bb-a828-4606-a78d-e6d13e1fd708','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 20:01:48.000000'),
('6964cb7e-16db-4bed-8c1c-ccb062e18612','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 10:51:32.000000'),
('6a7452a5-03f4-4ce8-bc0f-ad75232e558b','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 16:37:48.000000'),
('6aea4ada-2d05-4b7d-9b73-4d0b126e3bbd','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:17:10.000000'),
('6b437bdb-b0ea-4e33-bcc4-0fa0c6094960','3301750183@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:07:10.000000'),
('6b64975d-71f3-4558-ac82-45a187738912','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 21:59:52.000000'),
('6c72efcd-a411-4391-be92-dc060de5387e','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:17:12.000000'),
('6ccbf426-1252-4ad4-a192-e7922d55e221','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:22:55.000000'),
('6df5dcd3-e2be-48ef-a178-2836c02e78cc','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:22:56.000000'),
('6f1b29db-eb09-400b-900c-74cd8c957793','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:23:11.000000'),
('70ec5bd8-4a3c-40dc-9538-19323e9261d9','123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:21:10.000000'),
('72bd19b2-89a1-4b05-b3e2-243f1b46ae46','3505408546@qq.com','查询','河北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 22:41:02.000000'),
('72dd35f2-55a5-4a56-970d-1b26ee4b6a3c','3505408546@qq.com','新增','河北省','com.example.api.controller.CommodityController.save','商品管理','2024-11-20 22:45:04.000000'),
('73f1177a-3a17-4686-84c8-1436aa22906d','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 21:55:07.000000'),
('759ecbeb-6887-444e-b489-6d4464d40f19','123456@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 16:21:09.000000'),
('78b9a654-2b83-4151-b3af-d5e713b93420','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:22:55.000000'),
('79106cad-0dc9-4ef1-beac-e001020a90ae','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:16:16.000000'),
('79b8f91d-0307-4544-929c-8b427db3a9d0','dkh123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:46:12.000000'),
('7a611533-b52e-425a-bda0-0c1971ee4140','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 18:39:50.000000'),
('7bb9e381-9b83-40ae-859f-a99f99bcf983','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-21 15:36:07.000000'),
('7dd00697-4e10-4579-98e1-4cb655b5dd51','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-21 19:59:49.000000'),
('7e04dff9-2b80-44e1-b665-14267f76fd51','123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:20:50.000000'),
('803e17bc-282d-45bb-b053-68f2b492430a','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 10:23:52.000000'),
('8157d1e1-1714-4741-8f27-57defeb3fff3','3505408546@qq.com','查询','河北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-20 22:41:02.000000'),
('81fd11be-983b-4413-9c29-b0856e734862','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 13:10:55.000000'),
('82b800ac-9f00-4384-9200-478e52d2a617','3505408546@qq.com','查询','河北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:40:49.000000'),
('8403289f-8e49-4626-9be7-d5726796c9a7','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-20 20:28:14.000000'),
('84b1ce4e-9f05-407c-8252-3becd6e4eba6','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:15:59.000000'),
('84efdd9c-90fd-4bc8-b0f6-7682384c91c1','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 21:00:44.000000'),
('87c938ed-b844-4cca-8f61-fef03b5e839a','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-17 21:01:54.000000'),
('88252cea-558f-4886-9910-9f3b6cefa506','2149754832@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:29:01.000000'),
('8938918c-8552-46d1-9225-60719e3c9199','1793529504@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 13:01:54.000000'),
('8bb5dd3e-70d7-48d0-b81f-9d170487ca5f','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:17:05.000000'),
('8df654b1-08bf-41f0-aa16-b5d747269e94','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:31:32.000000'),
('8f49435b-b2c3-44f2-9beb-799f4b1e9810','3301750183@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:04:43.000000'),
('90c12c2f-f6ee-4040-9575-ba6f88658c70','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:12:15.000000'),
('91d098ce-e1e7-41ce-8c41-f70e47f59c0f','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:15:59.000000'),
('92ee882c-cb7e-48f1-8b86-7f93120b3e64','niuiyigeukjidauabi@qq.com','新增','湖北省宜昌市','com.example.api.controller.CommodityController.save','商品管理','2024-11-22 12:22:32.000000'),
('94cd7fa9-9ff6-483e-b37d-060a00b0d943','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 20:27:19.000000'),
('94f39e0a-8912-49fd-9cb9-a2b2b500ffbc','dkh123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:45:34.000000'),
('9586e07d-9142-4fc1-b531-83a1282d82c3','1793529504@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 13:01:19.000000'),
('9613f4ca-f14b-4823-975c-20d2fa11cb55','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:55:00.000000'),
('98aeea50-ac5b-4a9e-80aa-d0d11202abed','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 13:08:40.000000'),
('9b131c72-96c7-4495-ba88-439d8a2c6128','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 20:28:34.000000'),
('9b1949d4-834c-4491-97ed-d4637135bb03','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 13:12:51.000000'),
('9d661ae0-2586-4f05-b546-cd09de70c323','123456@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-20 16:21:00.000000'),
('9f18e6ad-7982-4759-965d-ea1d7adb1814','2149754832@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:26:46.000000'),
('9f76a5f2-d769-4931-ac17-837f862c37c4','1234561@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:24:07.000000'),
('a6d6c41d-643a-4cc2-828a-97bdd2f67476','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:48:58.000000'),
('a955fea0-fc0c-40ea-8045-b514e20eb1ac','123456@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-20 16:21:09.000000'),
('aa52b4f4-3ad8-43c0-8e3a-b3e653e64eed','123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:18:43.000000'),
('ab91d475-6c09-4f5e-9932-0b772b2600d3','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-21 16:37:58.000000'),
('ababd955-99c0-498c-95a8-70a6fa75b53d','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-21 13:10:16.000000'),
('afadd5b7-82b5-41d4-8a4d-f2d03dbf522e','3301750183@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:07:33.000000'),
('b02c7afa-e791-47af-b326-d67c3cacc533','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 20:27:41.000000'),
('b5e8ea0c-3104-49ed-b092-7b6666bca635','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 20:02:00.000000'),
('b789b237-f8d1-4e9a-9e60-473012cb9a79','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:32:16.000000'),
('b95d0908-1b5c-4caa-918b-222e86a9096f','3505408546@qq.com','查询','河北省','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-20 22:42:53.000000'),
('baa0511c-4832-4f73-8200-7f6415932e00','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 16:30:58.000000'),
('bad53560-711c-436c-95dd-de2b0eccb3c8','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:04:10.000000'),
('bdb7b89b-0a17-466b-a3a0-eb561f06ff15','2149754832@qq.com','查询','湖北省','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-20 16:28:34.000000'),
('be5a1bb1-29f1-4cf9-a729-cebc2a1ac27d','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 20:45:38.000000'),
('c3153f78-62a7-41ee-89d2-df6fb5b347df','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 09:55:39.000000'),
('c4664fc7-24e1-4366-9693-54eb9e6d7216','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 20:01:28.000000'),
('c6241a9b-4d6c-4ca4-9aea-5fe960ab6ab2','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-20 22:32:28.000000'),
('c6c8e55c-ca08-4c03-ad9c-0fb51e835383','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 20:45:36.000000'),
('c8f780bd-94d8-42cb-b812-6e881e383618','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:14.000000'),
('ca0cf493-8db9-4a32-a1d5-fe5b810dc03c','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:22:32.000000'),
('ca22abf9-330c-48bb-a512-8a25e9d47ff7','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:19:31.000000'),
('cab1fbbe-3fe2-4560-812a-d8319c81eb32','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:14:34.000000'),
('cb7bd1cf-ce29-4fe1-8e0d-1e6b98ec1f6e','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 21:00:08.000000'),
('cbe4e6f8-5b1f-41e4-8cfc-0b0954c1c468','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:31:36.000000'),
('cce8af68-2c1b-410d-86de-f666e0f944cc','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:16:01.000000'),
('cd567077-3471-439d-b11f-d1473001e0d8','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-20 21:59:49.000000'),
('cdb5fdb9-ab2e-46a7-b91b-6676e4d6e45c','1483618794@qq.com','查询','局域网','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:33:06.000000'),
('d0b6c52e-734c-440f-a175-ee9055c81915','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 22:25:01.000000'),
('d2243b11-7353-4204-8da7-9a80ead3c1e3','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:15:02.000000'),
('d32e2241-0c17-495a-ba32-be7ab1128f55','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-17 20:48:26.000000'),
('d3c77bc5-2f6f-4f44-ace0-c3ac1e418ee2','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 21:01:13.000000'),
('d44dca81-3582-423b-8323-5d5378b6a705','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:09.000000'),
('d46ea721-ebc8-446b-8488-59a8e701d94f','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-21 13:11:04.000000'),
('d712ddfe-227d-4bcb-9a41-83379a18a6da','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:01:02.000000'),
('da09e397-f35f-46b2-9214-fcfcd0825317','2149754832@qq.com','查询','湖北省','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-20 16:28:29.000000'),
('dae22a0c-18d5-4be2-afbb-ae45c2f7b390','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:31:39.000000'),
('db6763aa-adc7-4e09-b975-3f3f3d986801','123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:43:26.000000'),
('dc1f88e6-26eb-4de8-8371-97db3c49fbfc','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:40:53.000000'),
('dd156341-8447-4ee1-bafe-8e44d8688347','1483618794@qq.com','查询','湖北省襄阳市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 17:19:36.000000'),
('dd20f460-cdc5-4006-9fae-c63c0d740db0','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:16:50.000000'),
('dff150f5-002a-423f-924a-aebc7d8c864f','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 20:14:33.000000'),
('e08deafc-263a-4768-a7d5-7abeead7216d','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:17:15.000000'),
('e28b7582-f735-4fa8-8cb0-5810ec30d831','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:15:56.000000'),
('e33e775b-3ca0-4d08-89fe-9c8eb8462a54','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 16:20:28.000000'),
('e561e01f-a09d-4504-b503-841432e216e6','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 20:43:24.000000'),
('e5910c51-9652-4cbb-969f-148e533c8e40','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:15:37.000000'),
('e71036fe-fc10-479c-8728-28d9d81b9714','2149754832@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:28:54.000000'),
('e843b258-8fc4-4cb9-a250-cd947b5ce94d','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:12:15.000000'),
('e897fd18-2b3b-4d9e-aeea-175108f28ebe','1483618794@qq.com','查询','局域网','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:34:52.000000'),
('eb01870a-894e-4617-8968-a2e211806cc3','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:18:09.000000'),
('eb395930-5da3-4110-b672-60282771746e','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 13:12:47.000000'),
('ec66cd07-e14b-45b5-8454-da9ea43c7e88','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 10:39:56.000000'),
('ed07ca9b-f7dc-49f1-aed7-12743cdfd009','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 21:00:44.000000'),
('ef5201aa-3a97-4f34-971b-39986f931a68','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-21 20:01:28.000000'),
('f0a98a27-2991-4f58-a7fd-c5a96dde6892','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:59:26.000000'),
('f1b2c9bf-7968-4941-be09-a7ca976bab16','niuiyigeukjidauabi@qq.com','新增','湖北省宜昌市','com.example.api.controller.EmployeeController.save','员工管理','2024-11-22 12:15:29.000000'),
('f2d6efe5-1b0b-46e2-a1d4-7bd600d94d7a','1483618794@qq.com','查询','湖北省荆门市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:12:30.000000'),
('f36036ef-cb0d-4ce0-98bb-727267813f73','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 15:35:55.000000'),
('f4c5241f-4a46-428d-b439-57b8f621976b','1483618794@qq.com','查询','湖北省襄阳市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:48:41.000000'),
('f759e9d5-06ef-4af9-89f8-e19ce212cc61','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-21 13:10:16.000000'),
('f8365549-a663-4246-8892-2222aaa52578','3301750183@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:04:53.000000'),
('f9d05c02-de16-43d7-be4e-2f286ab63024','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:59:40.000000'),
('fab5ec4b-db19-47d8-9861-b48fa60736de','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:08.000000'),
('fbc8db0e-bd3d-4b6a-98d0-49bf3bfabfcc','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:17:06.000000'),
('fc72779a-2153-4c13-b187-82b852a8971e','2149754832@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:29:29.000000'),
('fc7ac9f4-c33c-46f4-b765-619eac9eedd1','3505408546@qq.com','查询','河北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:41:17.000000'),
('fd004a6e-af7b-4779-a876-f52ed372e70b','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:25:21.000000'),
('fd3bee79-2116-4c65-8d86-67e8345b22ed','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:36:55.000000'),
('fde4be0c-70f5-4859-80d0-c81c835b0dcb','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 16:32:11.000000'),
('fe6607d7-a0c3-4089-adbe-9ac3d2850a68','niuiyigeukjidauabi@qq.com','新增','湖北省宜昌市','com.example.api.controller.EmployeeController.save','员工管理','2024-11-22 12:15:35.000000'),
('fef19425-46f3-4601-a58d-f39803785edd','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:15:42.000000'),
('ff74a4bb-e5e4-46cc-83f2-a9ae832826c4','3505408546@qq.com','查询','河北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-20 22:42:24.000000');
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

-- Dump completed on 2024-11-22 21:28:52
