-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: mysql.sqlpub.com    Database: yunshu
-- ------------------------------------------------------
-- Server version	8.0.40

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
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `roles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES
('172ce119-545a-4f28-9812-2f076f2953ab','2024-12-09 16:25:11','2402871371@qq.com','yx0987654321','ROLE_ADMIN'),
('28c5c41b-935b-46f2-b563-c0a1fbac9f7d','2024-11-20 22:13:06','3505408546@qq.com','lyx2004','ROLE_SUPER_ADMIN'),
('34f2da9e-d2d6-4737-8763-0e9a17796298','2024-11-13 21:37:51','1483618794@qq.com','123456','ROLE_SUPER_ADMIN'),
('35d50aee-390d-4fe6-a33d-f3b0aaf303d5','2024-11-17 19:30:22','dd20041003@qq.com','123456789','ROLE_SUPER_ADMIN'),
('4230e746-2bbf-41cc-a8ca-3d46b19725a4','2024-11-24 21:18:23','2928522155@qq.com','123456','ROLE_SUPER_ADMIN'),
('476e6c45-d84b-49b8-a6f5-915008d924f6','2024-12-04 18:19:53','2149754832@qq.com','123456','ROLE_SUPER_ADMIN'),
('48e1b203-ac0b-45e9-b43f-580435722e70','2024-11-24 20:17:48','hajimi@qq.com','hajimi','ROLE_SUPER_ADMIN'),
('4c388ca5-d167-403e-90a1-1edeee3a6e2c','2024-11-22 12:03:41','niuiyigeukjidauabi@qq.com','abc123456','ROLE_SUPER_ADMIN'),
('6725440b-7c0b-4183-a89f-81fce91588ee','2024-11-21 12:57:57','1793529504@qq.com','QWERTYUIOP666','ROLE_SUPER_ADMIN'),
('675cd52a-2581-4f96-a69d-4976874f2a41','2024-12-09 16:18:30','shawn_xsz@qq.com','123456','ROLE_WAREHOUSE'),
('6a23f627-65fa-45bf-8550-25a715a20ace','2024-11-21 12:45:25','dkh123456@qq.com','123456','ROLE_SUPER_ADMIN'),
('6c38f529-84f0-4abc-9291-a209bff8356a','2024-11-24 21:20:51','2592308316@qq.com','123456','ROLE_SUPER_ADMIN'),
('6c567166-bc47-4c56-bac7-823fe990cfa7','2024-12-09 16:41:19','3057098742@qq.com','123456','ROLE_SUPER_ADMIN'),
('7f85c9bc-641b-4219-9d70-77aafdabd3ed','2024-11-17 16:53:53','2712644979@qq.com','gmzr27126','ROLE_SUPER_ADMIN'),
('8e13e27c-1179-42b3-86f0-d6246c73f4d4','2024-11-20 22:04:36','3301750183@qq.com','123456789','ROLE_SUPER_ADMIN'),
('a3a489a0-9c8e-4153-bcfb-afe69b56e8cb','2024-12-04 15:30:38','1372467989@qq.com','123456','ROLE_SUPER_ADMIN'),
('a425dca6-6307-4570-8793-6777118e14d3','2024-12-05 11:04:04','1559296921@qq.com','123456','ROLE_SUPER_ADMIN'),
('a76de014-34f5-464a-829b-f648ecb997d8','2024-11-25 10:29:16','2873257069@qq.com','123456','ROLE_SUPER_ADMIN'),
('aff3abca-dcac-447d-8bf0-46f7ace86d04','2024-12-05 18:47:27','2759093243@qq.com','123456','ROLE_SUPER_ADMIN'),
('b427895a-b920-4fab-82a2-4d31bf68b7a7','2024-11-20 22:40:31','3505408546@qq.com','lyx20040205','ROLE_SUPER_ADMIN'),
('dbc83523-f788-41a3-8eca-35523f3ace7d','2024-12-09 16:37:06','1483123123@qq.com','123456','ROLE_SUPER_ADMIN'),
('fa93ba1d-0509-4909-989b-32b21e9777ab','2024-12-05 11:22:08','ocmsviettn@iubridge.com','123456','ROLE_SUPER_ADMIN');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `code` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `exp` bigint NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
INSERT INTO `code` VALUES
('1559296921@qq.com',1733368755992,'194375'),
('2759093243@qq.com',1733732260473,'100310'),
('ocmsviettn@iubridge.com',1733369842024,'631242'),
('shawn_xsz@qq.com',1733732283369,'074237');
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodity`
--

DROP TABLE IF EXISTS `commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commodity` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `count` int NOT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` double NOT NULL,
  `update_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
('1aa9840c-402b-4e34-9fe2-06ddc4bfde77',0,'2024-12-06 12:45:00','剥离的碎片','天之痕',9.99,NULL),
('2645180d-92d9-416c-985c-129c8547404c',0,'2024-11-17 15:54:12','好心市民金闪闪','金闪闪',4.99,NULL),
('2dd53c37-33d3-416c-b2b9-041c3c3bc75a',4950,'2024-11-20 23:06:19','宛如奔向彼此的我们','绯染天空',9.99,NULL),
('44ae87af-46a3-4db4-acce-9dc81f977576',200,'2024-12-06 12:45:51','风之谷 \n','云之海',4.99,NULL),
('4f32f8be-7aaf-4a74-952d-b74aee756c42',0,'2024-12-09 15:45:05','瑞幸咖啡','经典咖啡',8,NULL),
('6cdd96c5-802d-41a0-8e76-dc6f1e8b1f77',0,'2024-12-02 16:34:19','胜利转誓约之剑','石中剑',9.99,NULL),
('73aa8232-ce5e-4df4-9916-775bc4b08f1e',0,'2024-12-07 17:26:55','商品简介','三养火鸡面',15,NULL),
('8a697d0b-c468-422d-a8ef-d7d8302c6e30',0,'2024-11-22 21:53:30','远程连接数据库11.22','远程连接数据库',9.99,NULL),
('90ee88c0-8a0a-4661-86e8-78be699911cc',110,'2024-12-05 21:20:24','隐约雷鸣，阴霾天空，即使天无雨，我亦留此地','test',9.99,NULL),
('d6e46987-e231-4e61-b4bb-40afebeebc38',0,'2024-12-07 17:27:37','牛奶','蒙牛特仑苏牛奶',6,NULL),
('de52e196-f91b-4b90-86de-f40ae58eebd2',990,'2024-11-23 23:34:42','水中月 镜中花','镜花缘',49.99,NULL),
('def0bca4-75de-437f-8eba-1fb5b5e3fd31',5110,'2024-12-05 10:51:07','隐约雷鸣，阴霾天空，即使天无雨，我亦留此地','雪的彻夜',9.99,NULL),
('f4338ce7-64ab-4de2-b77d-43820d1b4b10',5000,'2024-12-04 15:08:51','隐约雷鸣，阴霾天空，但盼风雨来。','泪的告白',9.99,NULL),
('fde892b0-6a65-4fab-a4f9-0ae4aa28a147',0,'2024-12-06 12:46:47','啊 是雪的季节了','雪之梦',40,NULL);
/*!40000 ALTER TABLE `commodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `care` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `did` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `driver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `time` datetime(6) DEFAULT NULL,
  `urgent` bit(1) NOT NULL,
  `vid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `driving` bit(1) NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `license` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
('fa69d4e3-d0e4-4b02-ac64-7b9570147925','中国 湖北 武汉 洪山 珞喻路','2024-11-17 20:03:39','\0','男性','423423133123543678','342556','泪的告白','15876546557','12',NULL),
('ff214131-e789-41b8-bb2b-aaa7e5311e6e','中国 湖北 武汉 洪山 珞喻路','2024-12-11 22:23:40','\0','男性','423423133123543678','342556','雪的彻夜','15876546557','12',NULL);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
('035ae334-7250-4366-a141-ecb6e218f818','芜湖','2024-12-06 10:00:42','智慧超市','男性','433921200412113737','李师傅','13728461997',NULL),
('3d06684c-0681-4744-bd67-c256414e51ad','芜湖','2024-12-06 10:00:47','智慧超市','男性','1231231231231','胡国昌','123123123123123123123',NULL),
('6a68f788-0e10-47b9-81cd-18225c343aee','芜湖','2024-11-21 20:01:26','智慧超市','男性','420999200411248978','石瑞','15872441267',NULL),
('ff66fad8-518d-42f2-8095-97aa08d06844','芜湖','2024-12-06 10:00:52','智慧超市','男性','0000000000000','向申赤','000000000000',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `count` int DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES
('47e18816-07f6-452b-8e0b-8ebdca807ca4','def0bca4-75de-437f-8eba-1fb5b5e3fd31',5000,NULL,'雪的彻夜','4ce03c2d-1745-40a2-af28-fe10994dad8d'),
('50d167db-0365-4da7-9f30-1286fa3dec30','10bcb016-0163-4825-8eb4-41b6c12fb65d',4500,NULL,'天河水','4ce03c2d-1745-40a2-af28-fe10994dad8d'),
('7eb8f482-8a8e-46b7-826d-31acbc2aa19b','f4338ce7-64ab-4de2-b77d-43820d1b4b10',5000,NULL,'泪的告白','4ce03c2d-1745-40a2-af28-fe10994dad8d'),
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
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `count` int DEFAULT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  `wid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
('1e82f6d2-d213-4f75-9090-8fc305694796','f4338ce7-64ab-4de2-b77d-43820d1b4b10',5000,'2024-12-07 15:28:17','','泪的告白',1,'4ce03c2d-1745-40a2-af28-fe10994dad8d'),
('320d9392-ff6c-4eef-aeec-7e54f1907552','10bcb016-0163-4825-8eb4-41b6c12fb65d',5000,'2024-11-17 20:05:03','紫气东来','天河水',1,'4ce03c2d-1745-40a2-af28-fe10994dad8d'),
('3d91129a-a311-4a7f-b0ab-ea43386308e2','def0bca4-75de-437f-8eba-1fb5b5e3fd31',5000,'2024-12-07 15:28:08','','雪的彻夜',1,'4ce03c2d-1745-40a2-af28-fe10994dad8d'),
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
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_log`
--

LOCK TABLES `login_log` WRITE;
/*!40000 ALTER TABLE `login_log` DISABLE KEYS */;
INSERT INTO `login_log` VALUES
('02542548-53ea-4bc5-8041-89a6e37619e8','Chrome','2024-12-02 16:24:35.311000','1483618794@qq.com','湖北省咸宁市',1),
('025ff232-487c-4dfe-ba4f-c0521e3e8eb9','Chrome','2024-11-24 21:19:58.265000','2928522155@qq.com','湖北省武汉市',1),
('041886fb-bed0-4db3-b3d7-42f0751585de','Chrome','2024-12-08 13:07:18.171000','1483618794@qq.com','湖北省宜昌市',1),
('043c9078-766c-41bf-9243-c4ce3429e3fd','Chrome','2024-12-05 00:01:37.731000','1483618794@qq.com','湖北省宜昌市',1),
('0476792d-91df-4882-b8ac-b788cc94c79f','Chrome','2024-12-11 22:17:42.810000','1483618794@qq.com','湖北省咸宁市',1),
('069f49f7-d522-4d38-9fa8-e9fe2251ceda','Chrome','2024-12-07 19:05:44.975000','shawn_xsz@qq.com','湖北省',1),
('06f457d2-29ea-4b29-8cd7-e6157f8c3e84','Chrome','2024-12-05 10:12:03.760000','1483618794@qq.com','湖北省武汉市',1),
('0a2fc3b6-6a85-4ff1-83d7-47df26786e63','谷歌浏览器','2024-12-09 17:16:12.216000','1483618794@qq.com','浙江省杭州市',1),
('0c279e53-ce94-4bf2-a1b0-e88e99ca5160','Chrome','2024-12-07 20:39:37.801000','1483618794@qq.com','湖北省',1),
('0e6bea3c-959f-4577-a48f-7c0a47944284','Chrome','2024-11-24 21:10:27.943000','2592308316@qq.com','湖北省武汉市',1),
('149b3952-a93b-44b8-8561-b875bf9082cd','Chrome','2024-11-22 22:48:44.436000','1483618794@qq.com','湖北省宜昌市',1),
('15082e9c-3774-45a0-8d62-5861dc93a3f8','Chrome','2024-11-23 11:13:07.206000','1483618794@qq.com','湖北省',1),
('1566de77-9a1c-47f6-963e-3e1b8bfb8ee2','Chrome','2024-11-21 19:54:57.000000','1483618794@qq.com','湖北省咸宁市',1),
('1741ed41-e870-4159-bc99-5f14b0dd213c','Chrome','2024-11-24 21:05:49.898000','2592308316@qq.com','湖北省武汉市',1),
('1ab2f6fc-4aad-4e20-b324-8a579f4737a3','Chrome','2024-11-21 12:36:53.000000','1483618794@qq.com','湖北省咸宁市',1),
('1c2fc333-1bd2-4b86-9118-522c0f9c3d6d','Chrome','2024-11-17 19:30:38.000000','dd20041003@qq.com','111.183.60.149',1),
('1e5a582d-fbd7-4466-8917-66130ca1b1ee','Chrome','2024-11-26 16:39:41.999000','1483618794@qq.com','湖北省',1),
('1f1c6e03-4e85-4be6-82f7-34a4ee3cc252','谷歌浏览器','2024-12-06 09:47:59.331000','1483618794@qq.com','浙江省杭州市',1),
('22723c73-8dd0-4c1c-9c90-b0ae28766e06','Chrome','2024-12-04 21:17:24.700000','1483618795@qq.com','湖北省宜昌市',1),
('22ca5b9a-e2c5-4257-9ea3-935938256d81','Chrome','2024-11-20 16:18:42.000000','123456@qq.com','湖北省',1),
('252e9406-eeaa-466b-b4f3-747c771ac095','Chrome','2024-12-04 15:45:34.955000','1372467989@qq.com','湖北省宜昌市',1),
('25850838-1eac-45b6-b5ac-a0e1e7c1b772','Chrome','2024-11-20 16:18:39.000000','2149754832@qq.com','湖北省',0),
('26f0ad30-2aba-4767-9e9e-c2b8f7a75094','Chrome','2024-12-07 18:55:49.814000','shawn_xsz@qq.com','湖北省',1),
('27a52a6d-ce8c-492d-a4c1-363bcc70f4bb','Chrome','2024-11-20 16:18:45.000000','2149754832@qq.com','湖北省',0),
('29344e9a-8df7-4235-937d-11976d016e15','谷歌浏览器','2024-12-05 10:03:09.739000','1483618794@qq.com','湖北省武汉市',1),
('2b3a3dc0-955f-4a99-a15c-57fd24f1d988','Chrome','2024-12-07 17:49:48.935000','1483618794@qq.com','湖北省',1),
('2cf52c30-3f3b-4229-a663-c9ec47d8f2d3','Chrome','2024-11-21 19:40:51.000000','1483618794@qq.com','湖北省咸宁市',1),
('2f0a510d-49c4-480c-9a1b-cdc73f31a6a1','火狐浏览器','2024-11-20 16:37:15.000000','123456@qq.com','湖北省',1),
('3083984e-bafe-4220-897d-c3f5696361c8','Chrome','2024-11-13 22:12:34.000000','2149754832@qq.com','117.150.0.240',1),
('33408650-2fde-4673-bcb5-b73ee7905abc','Chrome','2024-11-24 19:24:00.538000','shawn_xsz@qq.com','湖北省',1),
('33b387e3-a962-4118-993e-879c50ff8608','谷歌浏览器','2024-12-05 10:08:13.774000','1483618794@qq.com','湖北省武汉市',1),
('34be71d0-642f-41cd-94a9-a3e5056a1437','Chrome','2024-11-24 21:11:18.836000','1483618794@qq.com','湖北省宜昌市',1),
('360c48f8-3de8-49dc-ad6c-128cc481fbc6','Chrome','2024-11-13 22:04:11.000000','shawn_xsz@qq.com','117.150.6.82',0),
('37842f3a-d719-44d2-a72c-41cf7bf6b24c','Chrome','2024-12-02 23:27:20.368000','1483618794@qq.com','湖北省咸宁市',1),
('3930f0ef-082d-48a2-8ff4-0caccbd82cec','Chrome','2024-12-04 17:09:27.717000','1483618794@qq.com','湖北省宜昌市',1),
('3a5a1cd7-51bf-4ee4-a694-bd3b479061c0','Chrome','2024-11-22 22:51:21.191000','1483618794@qq.com','湖北省宜昌市',1),
('3a892839-9a57-4b15-b3e9-cca102943587','Chrome','2024-11-24 21:20:00.449000','2928522155@qq.com','湖北省宜昌市',1),
('3c616395-5576-47ce-8a4a-bbf6370222e1','Chrome','2024-11-20 16:34:50.000000','1483618794@qq.com','局域网',1),
('3c8bfddb-30c6-4cc6-b311-309dc19edc24','Chrome','2024-11-20 16:26:45.000000','2149754832@qq.com','湖北省',1),
('3e319f16-2a44-42db-a687-6a4572b2a1bb','Chrome','2024-11-20 16:18:07.000000','2149754832@qq.com','湖北省',0),
('3f3f999e-dddf-4bac-ae97-1ec721ccafe0','Chrome','2024-11-26 16:39:42.603000','1483618794@qq.com','湖北省',1),
('4050b274-c5dc-4a9f-8a1d-9f7f68e5d83b','Chrome','2024-11-24 21:10:33.280000','1483618794@qq.com','湖北省宜昌市',1),
('40ecfa71-4113-47bb-a0fe-def1f6be213b','Chrome','2024-11-14 16:59:10.000000','1483618794@qq.com','223.104.119.188',1),
('44d4584d-39a9-4b1b-93c1-b4248daf8b93','Chrome','2024-11-20 16:59:17.000000','1483618794@qq.com','湖北省荆门市',1),
('457254bf-2c15-4350-af64-5b76f5b16cc2','Chrome','2024-12-09 15:44:16.023000','shawn_xsz@qq.com','湖北省',1),
('4720556a-6b88-4de8-bfa4-b82a5cd6d620','Chrome','2024-11-24 19:50:18.156000','1483618794@qq.com','湖北省宜昌市',1),
('473db7e3-cf33-4abe-b08a-ebfe82b9801b','谷歌浏览器','2024-12-05 17:05:45.910000','1483618794@qq.com','浙江省杭州市',1),
('4797850d-8cec-43e2-8d7e-4b9881153f74','Chrome','2024-11-20 16:19:30.000000','1483618794@qq.com','湖北省',1),
('4d1a51f9-a8ab-4864-98f7-1907d4ed1155','Chrome','2024-12-07 20:44:11.753000','1483618794@qq.com','湖北省',1),
('4d707ba2-a0f8-4a4d-8d77-bd12b2f8bd9d','Chrome','2024-11-23 11:11:44.479000','1483618794@qq.com','湖北省',1),
('50dd06d9-ce82-46ff-adfa-151ab26eb7bb','Chrome','2024-11-22 22:57:06.953000','1483618794@qq.com','湖北省宜昌市',1),
('53c26825-3d89-487a-9207-9b69469cba47','Chrome','2024-11-13 21:37:58.000000','1483618794@qq.com','223.104.119.188',1),
('558a7cec-bb16-4ab4-8a2e-984acfb82eff','Chrome','2024-11-24 19:14:26.307000','shawn_xsz@qq.com','湖北省',1),
('57325d92-a59c-4b84-bec3-d153f0cdbec6','Chrome','2024-11-17 21:00:07.000000','1483618794@qq.com','223.104.119.181',1),
('584225cf-f357-4eda-82e7-339f57d4114b','Chrome','2024-12-09 16:18:43.204000','shawn_xsz@qq.com','湖北省',1),
('5dbe26ec-f2a9-424b-8e25-1e8512493d65','Chrome','2024-11-24 21:20:38.327000','2592308316@qq.com','湖北省武汉市',1),
('5e09855b-86f1-41a3-bd0d-f7e2c347822f','Chrome','2024-11-21 12:58:25.000000','1793529504@qq.com','湖北省咸宁市',1),
('5ed351ca-f1ab-48fe-adb1-a3d16b2debf5','Chrome','2024-11-21 10:51:09.000000','1483618794@qq.com','湖北省',1),
('5f905429-fc37-4241-ba52-f3d00d59d2bc','Chrome','2024-11-16 22:38:11.000000','shawn_xsz@qq.com','117.150.6.82',0),
('66e33455-0fcf-432c-ac3e-4a3f1c8f69c5','Chrome','2024-11-14 09:48:22.000000','123456@qq.com','117.150.0.219',1),
('69434d75-4764-46ca-b78a-86c2833d1799','谷歌浏览器','2024-12-04 23:19:09.051000','1483618794@qq.com','湖北省宜昌市',1),
('6d02fcd4-adf2-4ca2-8048-2545403c1b75','Chrome','2024-12-06 16:51:04.117000','1483618794@qq.com','湖北省宜昌市',1),
('6e05642c-4f34-4a06-9771-a91a6006c768','火狐浏览器','2024-11-20 16:12:19.000000','1483618794@qq.com','湖北省荆门市',1),
('77115b5c-442c-4c3b-83e7-3b74992572ad','Chrome','2024-11-13 22:18:54.000000','2149754832@qq.com','27.21.10.45',1),
('773c426b-b39e-4a26-92cb-c1f722df1393','Chrome','2024-11-13 22:04:08.000000','shawn_xsz@qq.com','117.150.6.82',0),
('77635d20-aa6a-457e-8e03-805e990241b5','Chrome','2024-11-14 10:05:07.000000','1483618794@qq.com','223.104.119.188',1),
('78357ff3-fc28-4aac-baa6-52d39934021c','Chrome','2024-11-16 22:38:14.000000','shawn_xsz@qq.com','117.150.6.82',1),
('7a60c858-00f2-40fb-bfce-16043fbb5c61','谷歌浏览器','2024-12-05 17:00:30.489000','1483618794@qq.com','浙江省杭州市',1),
('7b0fab4e-1006-4ea5-98a8-73ac3c365249','Chrome','2024-11-23 11:14:48.395000','1483618794@qq.com','湖北省',1),
('7c2486c1-a5da-457a-8754-7723847073cc','Chrome','2024-11-24 19:12:16.572000','shawn_xsz@qq.com','湖北省',1),
('7ca1182c-facb-48dd-8356-a6e26d02c894','Chrome','2024-12-08 13:07:23.797000','1483618794@qq.com','湖北省宜昌市',1),
('8031ed3b-fe6b-4946-8030-8f64d3f03f44','Chrome','2024-11-24 20:29:16.740000','1483618794@qq.com','湖北省宜昌市',1),
('883395c2-2212-4c03-be2e-689bae9a50f4','Chrome','2024-12-09 16:11:37.776000','shawn_xsz@qq.com','湖北省',1),
('8d2d41c5-97b3-4e64-96ee-2d7aa7d9190c','Chrome','2024-12-09 16:41:28.496000','3057098742@qq.com','湖北省',1),
('8d7ad4aa-f7be-4bb6-9110-a1cd446200aa','Chrome','2024-11-14 17:53:44.000000','1483618794@qq.com','117.150.6.220',1),
('8e24bd49-1a31-4150-8967-24e27ff11625','Chrome','2024-11-16 18:13:53.000000','1483618794@qq.com','117.150.6.17',1),
('9142c937-66f4-41a0-a010-0f3f49700393','Chrome','2024-11-20 16:48:39.000000','1483618794@qq.com','湖北省襄阳市',1),
('91453a5e-5748-471d-b340-710b7fbcb7ff','火狐浏览器','2024-11-20 16:12:19.000000','1483618794@qq.com','湖北省荆门市',1),
('95e8cb1d-6221-4a21-afd2-1649a31ee961','Chrome','2024-11-20 18:49:20.000000','1483618794@qq.com','湖北省咸宁市',1),
('96f54374-bd83-49db-9ebe-bbb8b71049c0','Chrome','2024-12-04 15:04:00.828000','1483618794@qq.com','湖北省宜昌市',1),
('9935472e-69a9-46e8-b94b-5d355346f105','Chrome','2024-11-20 21:26:14.000000','1483618794@qq.com','湖北省咸宁市',1),
('9f40926c-91c9-415b-99e6-cfedaf5603c5','Chrome','2024-12-11 18:52:21.121000','1483618794@qq.com','湖北省咸宁市',1),
('a30db947-4c8c-4723-95ab-daf3f3800fbe','Chrome','2024-11-22 12:04:09.000000','niuiyigeukjidauabi@qq.com','湖北省宜昌市',1),
('a437e531-8a7a-44a7-8b2d-0752d7c563ba','Chrome','2024-11-26 16:39:42.871000','1483618794@qq.com','湖北省',1),
('a445cb04-f833-40b0-b8c5-d8a6ed5a854a','Chrome','2024-11-20 10:23:50.000000','1483618794@qq.com','223.104.119.181',1),
('a4bad5fe-63b5-4256-b2a4-dacc2ca5be8e','Chrome','2024-11-26 16:39:34.209000','1483618794@qq.com','湖北省',1),
('a77e5978-0af0-495e-925d-3e8307065385','Chrome','2024-12-09 16:11:40.339000','shawn_xsz@qq.com','湖北省',1),
('abc8cd97-7e06-4a46-a52a-6221ab5e0523','Chrome','2024-11-21 17:05:33.000000','1483618794@qq.com','湖北省咸宁市',1),
('adad7ce2-1e59-49be-9f07-8515d00d8585','Chrome','2024-11-20 16:33:03.000000','1483618794@qq.com','局域网',1),
('b2580a75-f6f1-40a4-a557-b0fef8d83342','Chrome','2024-11-24 21:05:28.938000','2592308316@qq.com','湖北省武汉市',1),
('b28ecfb8-1da6-4ac3-93c1-d212394ee6ff','谷歌浏览器','2024-12-05 10:07:02.397000','1483618794@qq.com','湖北省武汉市',1),
('b7541bcd-3412-47cb-85aa-3615ba5d7181','Chrome','2024-11-20 16:18:45.000000','2149754832@qq.com','湖北省',0),
('b89f89d4-86cd-4d13-a62a-626be031e888','Chrome','2024-11-26 16:39:42.393000','1483618794@qq.com','湖北省',1),
('ba7d802f-2a49-45ec-9189-c583e6763560','Chrome','2024-11-21 12:45:33.000000','dkh123456@qq.com','湖北省',1),
('bb96d23e-f383-434f-8caf-6c6e0a0370a8','Chrome','2024-11-17 16:53:58.000000','2712644979@qq.com','183.95.49.72',1),
('bbaa4fe7-9180-417b-a8b6-c611286b0c79','火狐浏览器','2024-11-20 16:12:16.000000','1483618794@qq.com','湖北省荆门市',1),
('bcc60d5a-4f3f-43ee-8571-531e5abe3e52','Chrome','2024-11-17 19:44:23.000000','1483618794@qq.com','223.104.119.181',1),
('bd6ef130-da81-459d-ba87-5b71313a0ea7','Chrome','2024-11-21 11:01:02.000000','1483618794@qq.com','湖北省',1),
('be85ce5b-a325-491c-a8ca-5ef7ed8de19d','Chrome','2024-11-20 20:24:03.000000','2402871371@qq.com','湖北省',1),
('bf1220e0-ef22-436e-8a72-626e73393b21','Chrome','2024-11-13 22:05:34.000000','shawn_xsz@qq.com','117.150.6.82',1),
('bf32ae0d-8ab8-43ee-8dab-f3701c257a03','Chrome','2024-11-13 22:04:03.000000','shawn_xsz@qq.com','117.150.6.82',0),
('bf6a90c8-90b6-4ccf-8516-064958022830','Chrome','2024-11-21 12:15:01.000000','1483618794@qq.com','湖北省咸宁市',1),
('c021a9b7-ddc7-4caf-a25a-43519a59c4eb','谷歌浏览器','2024-12-04 21:18:33.745000','1483618794@qq.com','湖北省宜昌市',1),
('c3cd03a2-9c9d-418d-87c8-d9fd72f9a610','Chrome','2024-12-09 16:24:16.651000','3147338305@qq.com','湖北省',1),
('c561eb7c-0feb-4d37-8c94-b319fd974621','火狐浏览器','2024-11-20 16:12:14.000000','1483618794@qq.com','湖北省荆门市',1),
('cb675672-4eee-4e15-8f38-ef84ef053b82','Chrome','2024-11-27 09:39:46.359000','1483618794@qq.com','湖北省宜昌市',1),
('cbfcf0f2-9458-40ae-bc3f-ad8178c0276f','谷歌浏览器','2024-12-11 22:37:39.128000','1483618794@qq.com','浙江省杭州市',0),
('cd27ac81-ff45-4b1a-9c9b-e17e54c228c9','Chrome','2024-11-16 18:07:35.000000','1483618794@qq.com','117.150.6.17',1),
('ce482377-9370-4cea-8a99-629e2678ab8b','Chrome','2024-11-13 21:59:45.000000','1483618794@qq.com','223.104.119.188',1),
('ce67eb38-6001-41f5-a86b-5bf1909b7e0f','Chrome','2024-11-22 22:57:38.386000','1483618794@qq.com','湖北省宜昌市',1),
('cf9cf8fb-f32d-4397-8598-4340dd3de613','Chrome','2024-11-16 09:36:17.000000','1483618794@qq.com','117.150.6.14',1),
('cfc95d01-507d-4037-b643-0733cb7e4e34','Chrome','2024-11-25 10:29:51.567000','2873257069@qq.com','湖北省',1),
('d6c5396d-febb-4855-a665-09e6ec00776b','火狐浏览器','2024-11-20 16:12:20.000000','1483618794@qq.com','湖北省荆门市',1),
('d7652bce-3907-43ab-9f51-11695e693af9','Chrome','2024-11-20 16:24:06.000000','1234561@qq.com','湖北省',1),
('d8f95883-86f5-4e89-ac32-ea2d05a24db3','Chrome','2024-11-21 13:08:31.000000','1793529504@qq.com','湖北省武汉市',1),
('dba2cfea-d4e9-470a-9631-4b3cafc1fbdf','Chrome','2024-11-24 19:26:01.127000','shawn_xsz@qq.com','湖北省',1),
('dd139d0e-24d4-4890-8c50-dfd03f761ecf','Chrome','2024-11-20 16:19:17.000000','2149754832@qq.com','湖北省',0),
('de15e4eb-0ded-4e9c-b8cb-ad2e5cd5c9e8','Chrome','2024-11-17 09:51:13.000000','1483618794@qq.com','117.150.6.226',1),
('df2503ad-9ee3-4859-aa62-9b0768c536a9','Chrome','2024-11-21 12:32:01.000000','1483618794@qq.com','湖北省咸宁市',1),
('e158f7ec-0e0c-4ccf-9a4c-7a0b5d0ff887','Chrome','2024-11-23 11:16:47.451000','1483618794@qq.com','湖北省',1),
('e2e50f54-badd-4adc-9550-51e27f123705','Chrome','2024-11-22 23:05:37.748000','1483618794@qq.com','湖北省宜昌市',1),
('e2f2cce7-e56b-4101-b234-976c02681111','Chrome','2024-11-20 22:04:43.000000','3301750183@qq.com','湖北省武汉市',1),
('e3ae2e89-e2f0-4412-9efd-ca5eb5ad7330','Chrome','2024-11-23 11:08:40.837000','1483618794@qq.com','湖北省',1),
('e4e381da-e445-41f1-8e43-bd312a97b816','Chrome','2024-12-09 16:11:42.071000','shawn_xsz@qq.com','湖北省',1),
('e55cc205-1329-435c-8dc5-4cb8214e5ace','Chrome','2024-11-20 22:40:47.000000','3505408546@qq.com','河北省',1),
('e66e1e48-0555-495e-b076-746901a0f713','Chrome','2024-11-24 20:16:03.728000','1483618794@qq.com','湖北省宜昌市',1),
('e74d5ed9-2ab8-4430-ab5c-1ba982008538','Chrome','2024-11-20 17:21:11.000000','1483618794@qq.com','湖北省荆门市',1),
('e754cd67-6a7e-4aab-a258-d4659b198422','Chrome','2024-12-06 12:59:42.810000','shawn_xsz@qq.com','湖北省',1),
('ec12b7c8-29a8-4d0f-a890-e2d46020920f','Chrome','2024-11-26 16:39:37.439000','1483618794@qq.com','湖北省',1),
('ec57a216-4ddf-45d5-9696-759dcfdcdd82','Chrome','2024-11-22 21:50:48.333000','1483618794@qq.com','湖北省宜昌市',1),
('ecba313a-ccb2-42d1-8056-ca78a69d5dde','quark浏览器','2024-11-14 09:46:29.000000','123456@qq.com','117.150.0.219',1),
('f21f64e6-aefd-4e2d-bdce-c42b856261fa','Chrome','2024-11-21 10:39:45.000000','1483618794@qq.com','湖北省',1),
('f25239ea-d879-402a-b188-604eb97424fa','Chrome','2024-11-16 21:28:48.000000','1483618794@qq.com','117.150.6.110',1),
('f354d0db-e8ff-4b82-8802-1e7eb77cb558','Chrome','2024-12-06 09:50:06.028000','1483618794@qq.com','湖北省',1),
('f4e15a6a-f5c4-4bc1-9b48-9aaec89c255d','Chrome','2024-12-07 18:33:40.437000','shawn_xsz@qq.com','湖北省',1),
('f5e3ed05-77c4-42ac-8e22-8d0d77712e3e','Chrome','2024-11-17 20:02:03.000000','1483618794@qq.com','223.104.119.181',1),
('f6857dd3-1f71-4fae-b062-d1594b0f3c1d','Chrome','2024-12-04 23:20:32.901000','1483618794@qq.com','湖北省宜昌市',1),
('f77308af-fcfc-4050-b67e-72982bfe75bc','Chrome','2024-12-07 17:22:42.651000','shawn_xsz@qq.com','湖北省',1),
('f883c175-44d6-4298-84aa-2555141ad2fe','Chrome','2024-11-22 22:55:30.257000','1483618794@qq.com','湖北省宜昌市',1),
('fa76b17d-b7f7-45b5-842e-1a07bfbe798f','Chrome','2024-11-20 22:04:41.000000','3301750183@qq.com','湖北省武汉市',1),
('fb2868b6-22de-40c2-ae23-716520dcd9f6','Chrome','2024-11-22 23:01:08.805000','1483618794@qq.com','湖北省宜昌市',1),
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
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `commodity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pay` bit(1) NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
('3a535dec-2a13-48df-82a9-9c62b144bc81','天河水','test','50','2024-12-05 21:53:31','path','1321231','\0','15872461789',499.5),
('5a8d2bf9-ea3a-4948-9bb6-19076da894c9','天河水','志泽供应test','50','2024-12-06 17:48:51','志泽供应售卖冰红茶','2344253452342','\0','15872461966',499.5),
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
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `busincess_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'LTD',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
('007d87b2-d77a-4abc-a3a5-24a8eb0354e2','1483618794@qq.com','删除','浙江省杭州市','com.example.api.controller.EmployeeController.delete','员工管理','2024-12-06 09:56:06.976807'),
('009d6d43-824d-417f-a2e8-1292fb09a4d8','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 23:16:54.305164'),
('0109b064-9da8-494f-a22e-b2f4d0eafacf','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 22:32:20.272713'),
('0145d2fc-1911-4024-9ef3-05356c6c6aa0','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-04 15:09:34.143147'),
('014e7d94-5a7e-478d-ba62-7acb065c24ad','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 17:27:38.543615'),
('01b2c0fe-c7e1-4284-b368-024a7b693e6f','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 23:16:56.610374'),
('02284788-ed01-4343-ae89-79d8bc5efb16','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-05 21:40:06.984482'),
('02482d7c-99a2-4cd7-bf82-1fc3f30e62d5','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-06 09:57:10.049342'),
('02caf2e5-2376-44bf-b601-e5ac90532381','1483618794@qq.com','新增','湖北省武汉市','com.example.api.controller.CommodityController.save','商品管理','2024-12-05 10:51:07.350373'),
('0308725e-1ae6-4d2a-8b39-ae2586752868','3505408546@qq.com','查询','河北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:45:05.000000'),
('037aff45-92ea-4150-b727-aa91b5eb05cf','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-06 09:51:18.733395'),
('04a000be-7875-43d9-9e1b-0f03b430e820','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-09 15:45:45.066437'),
('05287e7c-9fbb-46d3-a759-738f4c8789bb','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:07:05.000000'),
('05b61d17-66bc-4a98-98b2-c2f9c1179c3f','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 18:22:33.000000'),
('074857e9-0472-499d-bfe7-f8baa112299f','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:25:02.000000'),
('07e26f3a-db0f-425d-b9da-d298ed3e7984','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-09 16:19:16.208149'),
('08512d41-48ec-4c87-92b9-c2c9f95814dc','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-20 20:28:06.000000'),
('08517ba2-d220-4153-853c-c29eb0a8cda2','1483618794@qq.com','新增','湖北省宜昌市','com.example.api.controller.CommodityController.save','商品管理','2024-12-06 12:46:47.783826'),
('0899ec73-afc3-44a2-95da-20a5c01eb020','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 19:12:25.769445'),
('08be45a8-ab63-419e-adcb-05c0f3122803','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 23:17:21.181851'),
('094063bf-7804-460b-b2ae-924f9a363a11','1234561@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:24:35.000000'),
('0aeff8dc-ce1c-4adb-a234-03d29375a4c9','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 22:55:01.983512'),
('0b9967a8-3309-43f8-9221-80fde7e123f9','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-17 20:48:47.000000'),
('0c1dc18e-879e-42fe-9771-b7934eca0668','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 20:45:36.000000'),
('0c278d2e-bb8f-419d-86e3-cf3b96e7de64','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 19:59:48.000000'),
('0ce18d00-378d-409f-b78e-758cfbd56e38','1483618794@qq.com','新增','湖北省武汉市','com.example.api.controller.CommodityController.save','商品管理','2024-12-05 10:29:16.892162'),
('0d1610c8-a836-4a3a-a04b-9f28f09319ca','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-17 21:01:56.000000'),
('0da14b79-8faa-467f-baac-63e5c0b2180f','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 23:04:51.000000'),
('0ddc76f8-54a8-487a-be8f-cf5ac00f3fcb','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-08 13:07:51.493618'),
('0e15761a-acfd-43a6-948e-322a62206df5','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-07 13:42:33.181328'),
('0e21b0ab-b09d-41fc-99a4-69fb5661f492','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 00:06:12.256500'),
('0e42ed61-5fa2-47c7-90f4-af917cf3cc7e','2592308316@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-24 21:06:08.946228'),
('0e62f9ac-d74e-41a6-8a88-84ae629a7185','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 20:28:06.000000'),
('0ebfc0f7-1ded-4c96-a6cb-804bf63ff2ef','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-02 16:34:38.812888'),
('0f0c27cc-16e9-4f5e-8528-29ec997f3826','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 15:36:08.000000'),
('0fabbe36-1989-4878-adc9-429ff57b1e76','2873257069@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-25 10:29:53.460984'),
('0ff14f46-7c21-498b-ae31-fac16feddd9a','niuiyigeukjidauabi@qq.com','新增','湖北省宜昌市','com.example.api.controller.EmployeeController.save','员工管理','2024-11-22 12:15:23.000000'),
('0ff8614b-7905-4fcc-9c59-dd51da4c892f','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 21:52:21.729959'),
('104f7061-6226-491b-84ca-7c9f9d8d5b28','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 23:02:22.000000'),
('107f3c35-a25e-487a-8792-b7dd34f72a86','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:07:59.000000'),
('1090f10c-fedd-4fb2-834a-5964191f5085','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 12:59:44.314984'),
('10f6fd0b-d629-4a1d-bdff-d1ca68426e2c','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 15:08:02.284215'),
('1129c3f3-e9f8-43fa-a9d4-214ad9e668c6','2149754832@qq.com','查询','湖北省','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-20 16:28:31.000000'),
('115f3019-e18f-4cde-8d2f-f34d2744d7bf','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-18 11:11:45.000000'),
('118d05ff-d314-4ff7-ba38-b61ff06907f6','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 15:48:06.449503'),
('11c2cf38-dddb-441c-b2a7-53af511dcd1f','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-11 18:52:53.640755'),
('139b417c-c138-4b28-90ba-4bff1d1ff421','1483618794@qq.com','新增','湖北省咸宁市','com.example.api.controller.CommodityController.save','商品管理','2024-11-20 20:27:18.000000'),
('143907f0-e7ba-4da2-bf29-60f6f12c972c','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 10:51:35.000000'),
('14af41e2-1d93-4f8e-aee4-15a79b4fb40f','1483618794@qq.com','新增','湖北省宜昌市','com.example.api.controller.CommodityController.save','商品管理','2024-11-22 21:53:30.782090'),
('1511f7ac-02bd-413e-966a-19623b2b0087','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 13:11:04.000000'),
('152338b7-7905-4603-bd98-d4f90a7d841c','1483618794@qq.com','删除','湖北省武汉市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-05 20:31:24.618117'),
('152c669f-3afe-4d59-8320-ed850522aee1','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 17:44:04.410122'),
('158bba41-fd2f-4508-a047-be5d90a8ae56','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 15:44:24.358566'),
('15d3ea79-f30b-41f3-871c-a6b8a2e39d8f','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-07 17:23:12.115134'),
('17ed2137-18a4-453f-9506-e90a2fb266cd','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-11 22:32:01.075414'),
('1896bbf8-46f1-47b7-bd7d-0e600e2eeb39','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 18:49:22.000000'),
('18bd4f60-57f8-4bdd-9bf7-df34314b5f2b','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 23:32:53.340524'),
('18eeede3-d825-43a8-bfba-c6cd5991c529','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:05.000000'),
('1904c85d-197f-40dc-8126-b23d1bea17b2','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-07 14:01:44.203516'),
('192e3322-ba40-49a9-9ebb-e14c026a084f','2928522155@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-24 21:21:20.764379'),
('1a75c9f3-27dc-4f46-ac07-bb757ccaf3a2','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 23:06:19.000000'),
('1b503862-8d7b-4815-baf4-c265015e0192','1483618794@qq.com','新增','湖北省宜昌市','com.example.api.controller.CommodityController.save','商品管理','2024-11-22 21:53:03.218009'),
('1c2bd9db-ba85-4366-a30f-56c9e8e9407a','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 19:10:18.748251'),
('1c5f356d-2291-416f-a060-0a829da30b58','1483618794@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-06 09:55:51.439163'),
('1d4b4bea-925c-4202-ad50-62ab6b3e3005','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 23:11:05.522394'),
('1d94af17-217d-4bf4-8d33-a0c2d0d6fa32','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 18:50:34.000000'),
('1da4a060-4a2f-4e45-8242-251a09fb7112','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-02 16:34:20.277052'),
('1db30f82-9335-4b8e-8e16-07db473c4199','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 19:54:14.000000'),
('1dbe4f0c-2c25-4cea-a884-fb2ce9413938','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 16:17:54.847060'),
('1e03f556-c1da-48ee-b81b-ae16c4f04536','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-07 15:27:53.793449'),
('1ece2761-2d75-4914-8eb7-cad4ef73a71d','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-08 13:08:14.156458'),
('1f999b38-d8b8-43f1-83d2-876225d2bdd7','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-04 23:52:00.623543'),
('2096f4e9-2625-4e0d-b47f-55e37ad98f63','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.EmployeeController.findById','员工管理','2024-12-06 09:57:57.450900'),
('213c3296-6bea-4483-be5b-5119fa11b31a','1483618794@qq.com','新增','浙江省杭州市','com.example.api.controller.VehicleController.save','车辆管理','2024-12-11 22:25:34.203816'),
('21422823-acc8-4f63-bb76-134733baac52','1483618794@qq.com','新增','湖北省宜昌市','com.example.api.controller.CommodityController.save','商品管理','2024-12-04 15:08:01.243540'),
('2229afeb-5b86-4528-a0a4-84778eaba60a','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-26 16:39:43.990928'),
('225ff3be-93fa-45d6-85c5-796d17665e40','3505408546@qq.com','查询','河北省','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-20 22:43:07.000000'),
('230e2f6a-409e-47b4-b4e4-58154f37739c','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-06 12:47:48.432172'),
('2315c389-50d1-49da-8f6b-0b0c81eb7da4','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 15:45:06.635956'),
('2461608e-ddd8-49c1-a52c-6fad8b0fc562','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 20:48:51.000000'),
('24ce9f97-a742-4d2e-94aa-634ff3270551','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 20:28:07.000000'),
('24da5b82-e9a0-4cc3-a465-7bac401fe9d9','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-22 21:53:53.698071'),
('24db34c2-871a-478d-a1c0-5c9c0cb2fb9d','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-04 23:47:04.182130'),
('24efac5c-a9f4-4129-be61-87b87df33c5e','3057098742@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 16:43:49.478563'),
('254b1cd8-2994-44b4-bfdf-5cb1efd2134a','2928522155@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-24 21:21:17.996577'),
('254ffdc8-22df-45ca-bf61-3a34d9d27807','123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:37:17.000000'),
('25e138a7-fc9a-4cf0-87ba-6d68d0ec061a','3057098742@qq.com','查询','湖北省','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-09 16:45:36.940135'),
('2626aef5-5f15-45fc-ae88-2f1306916acd','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 23:33:14.650090'),
('264a5e6f-4bea-4bdc-b68f-4775bf24622e','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-11 22:29:25.578453'),
('26555228-f32e-480c-9ae4-aa94f6fe5fb3','1483618794@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-06 09:50:32.153410'),
('26692e14-4516-4d81-8ab0-53e53c2f28f8','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-11 22:32:04.047385'),
('26bc521b-1ca8-4105-b9b9-46520d890672','1372467989@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:01:18.630466'),
('272f8e4c-8b63-4bf4-8cdb-f78e29a5c2fd','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 21:50:00.407058'),
('279842d8-8fb5-4b98-a4a8-76d9f64ac8b3','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-09 15:45:43.339341'),
('298f20ad-dad4-4c81-9131-11d93941f19b','123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:21:00.000000'),
('2a3292ad-23c4-450d-990c-c8621c1ddc62','1483618794@qq.com','新增','湖北省咸宁市','com.example.api.controller.EmployeeController.save','员工管理','2024-11-21 20:01:27.000000'),
('2accbd1f-3b39-47ca-8b0b-5dbb54ded082','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-07 15:30:27.953849'),
('2ae075a7-e571-4f17-9ead-3d80b073c138','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 22:49:43.110844'),
('2b086446-1f7b-4a0e-8841-5609def7a336','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 23:28:36.759908'),
('2c23bf2c-5146-4ea6-b2d5-5ce68f727170','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-11 22:24:22.408487'),
('2c3afabb-32bd-41eb-be23-281541ecfe8a','1483618795@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 21:17:26.622340'),
('2caa2d77-5adb-4660-9d70-9e68669cd34e','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-11-17 20:43:33.000000'),
('2cc43b50-2e8a-4c40-937d-868ca0b2da42','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 22:57:39.895162'),
('2d45d716-9746-4ca1-9428-ca74b8f03c38','2402871371@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 20:24:05.000000'),
('2ddc1d2d-7e20-48e7-bfc1-302a44052a3c','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 21:00:26.000000'),
('2de09b5c-9889-4c5d-99f5-e46fa1a9fbda','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:14.000000'),
('2df2852e-47e7-4138-b7a7-3c9bf7045c1e','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-09 16:19:12.133500'),
('2df97b2e-da51-490b-8af4-09225205c31d','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:20:24.000000'),
('2e2effad-aed0-4e3b-a083-3393f3bb32b8','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 16:50:41.560180'),
('2ea374f4-ab12-4d63-bc98-5ce5cf327b5e','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 22:29:20.652190'),
('2eb917ca-912f-4e25-a750-b9327e0df77b','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 23:51:27.488357'),
('2f07bf44-918d-44af-985f-e5b4cc95032e','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-11 22:22:26.858375'),
('2fe5023b-f096-45f4-92e7-1de603e59223','1483618794@qq.com','删除','湖北省武汉市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-05 10:30:49.212189'),
('30043b19-688a-401e-a389-2031dea4ab45','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:56:34.000000'),
('30258072-7ffe-4b8e-9c05-e229c3fb4e57','3057098742@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-09 16:45:41.863808'),
('316a6346-5bc1-4d22-bead-661c678394eb','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 23:17:58.408196'),
('32c78202-ba0b-4413-aff9-2a25383f4096','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 15:38:06.144949'),
('3305c975-e613-4398-a96d-086adcd98baa','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 21:26:15.000000'),
('33916738-da6c-47f3-bc42-6ee0a1b2ed34','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-17 21:01:50.000000'),
('33ca8276-9b36-4f81-bc93-4ab9a6cb255d','1483618794@qq.com','查询','湖北省荆门市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 17:21:12.000000'),
('342d9f3c-44fe-411b-bb52-50f56b2b0da8','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-07 13:38:42.810300'),
('343ba83e-38ab-4e70-aec6-3293566a05ab','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 17:49:15.038382'),
('34d7e163-2496-4a30-8885-697ebf5fa019','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-07 14:01:39.474983'),
('34fa8686-658f-4a10-bbdc-9078b3550370','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 15:04:02.882516'),
('354c9226-2b63-4aab-9e20-7e56c664ed82','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-09 16:19:17.376194'),
('3582e558-7ab9-4643-ac1f-a4a1fa3041f2','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 19:05:46.762833'),
('36549edc-74fc-4dea-a53e-ff860a130610','3505408546@qq.com','查询','河北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:43:58.000000'),
('368d30aa-d5fe-4590-9c23-f1faab284e97','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 23:39:35.819786'),
('36c71407-f620-4e0e-84d6-1a19f20e742b','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:17:13.000000'),
('36f72eb3-94c1-4fda-ae03-bee7b1330d57','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 17:54:22.536989'),
('37470f90-7a57-4236-97ea-55da4e905fc7','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 22:48:59.734421'),
('37b3dcc8-6b9b-46b6-a7d5-259f21a1fac1','1483618794@qq.com','删除','湖北省宜昌市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-05 00:08:17.084604'),
('37b6086b-49bc-471a-a1ee-a62666bad857','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 23:47:48.000000'),
('37e4570b-80d9-42cd-b9b0-c5931761a320','3057098742@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 16:44:07.875196'),
('37f67881-de05-46a5-81ec-2d204331c002','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-08 13:08:08.075307'),
('3806e264-2c95-4c74-8c77-292433bd7000','niuiyigeukjidauabi@qq.com','新增','湖北省宜昌市','com.example.api.controller.EmployeeController.save','员工管理','2024-11-22 12:14:34.000000'),
('382879f0-cc95-4038-bb9d-fa2f6964392e','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 19:50:30.299939'),
('38ecd03d-e083-42ca-adcf-56ab127b3e27','1483618794@qq.com','查询','局域网','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:53:06.000000'),
('39f6df71-0d7a-4dd1-8821-4e8a956f8e67','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-07 15:31:00.598467'),
('3b8ef202-e307-44a6-8b7f-beff3d94f71c','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-12-04 23:55:57.142472'),
('3baa09a5-eb3a-47c4-b597-5d6bd009a426','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-11 22:27:33.691042'),
('3bb70253-d4da-42ef-aa4c-2b70de3626d3','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 22:48:58.767522'),
('3bf82d7f-18af-448c-adba-1be4ae29cd24','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-02 16:35:06.391210'),
('3c156ba2-eb6c-4a27-8bb9-75ec98a001f7','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 10:52:21.000000'),
('3cf86383-ea4b-4bf3-a6ff-570a07d0b96c','1483618794@qq.com','新增','湖北省','com.example.api.controller.EmployeeController.save','员工管理','2024-12-06 10:00:47.399896'),
('3db886cc-bc6b-4e43-8520-fff3d1e8c57d','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-24 21:08:31.957522'),
('3dc7d234-1649-4b7f-aafe-7889ede5fbba','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 00:07:40.543988'),
('3dd97ca9-ef90-4a5f-9a97-3ff6d956c65b','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 22:49:47.955346'),
('3e380d15-571a-4b6e-91bf-7e2fa1578428','2149754832@qq.com','新增','湖北省','com.example.api.controller.CommodityController.save','商品管理','2024-11-20 16:29:29.000000'),
('3f50401c-53db-45a3-b359-a1b3e6334c49','3301750183@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 22:04:54.000000'),
('3f548f48-af34-4f2b-8f3b-18659ad277f2','2592308316@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 21:06:14.014570'),
('3f608aa3-fa2a-470c-8bca-294bb61a2788','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 16:57:20.122805'),
('3f631853-5607-4bb0-99af-8d86fe74a1c6','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-11 22:31:55.146147'),
('3f76001a-a76e-4ff1-8fc6-0344305f3173','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 23:21:56.399693'),
('3fcb2c75-2811-43ed-be94-3d9e9cfcd5f4','1483618794@qq.com','新增','湖北省','com.example.api.controller.WarehouseController.save','仓库管理','2024-11-23 11:20:24.698742'),
('4028e0c6-6706-4ce0-9d26-ea0a76481a14','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:03.000000'),
('4073bbe0-cf36-4f6d-ae46-2e13476292f7','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 13:11:53.614914'),
('409aad71-d6bd-4535-a624-7b0f38b65726','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:54:00.040495'),
('40bc98f6-c275-4497-8a4a-aa5d95d87d0e','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 18:33:41.905411'),
('410f6d68-c4e8-48ea-baf5-40bb7a30223c','1483618794@qq.com','新增','湖北省宜昌市','com.example.api.controller.CommodityController.save','商品管理','2024-12-06 12:45:01.261956'),
('41734fbf-b2c4-4cc9-bf1d-477e6b1deaa3','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 21:35:55.704610'),
('417752f1-db67-4a29-a717-ccb3279fde7a','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 23:04:53.000000'),
('41c29217-26de-4ed5-ae61-48d908ef0ab6','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:14:34.000000'),
('42113652-cd4a-419f-a858-4c6a8746d0a7','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-05 21:40:07.062784'),
('4219f13c-0ce2-414d-aede-e863d1d5fb51','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 22:49:48.406436'),
('42761d72-eb31-4065-a3e2-008afb2139e3','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:22:55.000000'),
('42d6edfa-1757-42f0-8ced-aa98bd24ea13','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 21:11:20.315890'),
('42fc477e-7958-4552-8e67-1ccc336c09b2','1483618794@qq.com','查询','湖北省荆门市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:59:18.000000'),
('434e68e4-27d7-46e5-9b0e-cd66f83caadf','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 16:38:00.000000'),
('43a531e8-989a-4a4b-b658-5c1dc95ff171','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:04.000000'),
('44054021-7555-400c-9d8f-3de46ca9ed76','2928522155@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-25 16:30:15.559704'),
('45721da9-ccd5-4e91-80f6-e4b764e24001','123456@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 16:21:00.000000'),
('4581fe85-4eae-45fc-984c-962bacf52eda','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 16:51:05.698103'),
('45849ec4-b518-4324-80e1-0b1d58780d24','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-07 17:23:29.275744'),
('45b12db3-7487-4347-aaa3-fbbe874f1d95','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 00:01:43.797252'),
('45f45304-30c0-460b-a156-717b370095a4','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:17:14.000000'),
('476b1040-16d0-4050-9299-08cf7260303d','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 15:13:07.000000'),
('479581f4-1fa9-4a65-b947-0707950434fc','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-24 21:08:40.840828'),
('47c05c07-b833-48b8-a58f-179d81cfeefe','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-20 22:32:22.000000'),
('480f79ef-7472-4f3b-8c33-4e229c074c9a','1483618794@qq.com','查询','局域网','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 17:20:32.000000'),
('492051e8-0128-4ada-bfa3-907c8c7af858','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-11 18:52:35.536566'),
('49982bd3-c619-4238-87dc-8343816de0f1','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 19:11:18.993408'),
('4a3a94d1-d8ae-4c5f-a1e7-2bb8c2e98ea2','3505408546@qq.com','查询','河北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 22:42:24.000000'),
('4a4c68cb-6d8c-43cc-9f84-affaba432592','1483618794@qq.com','新增','湖北省','com.example.api.controller.EmployeeController.save','员工管理','2024-12-06 10:00:53.051401'),
('4aa5eb8d-a6c1-4a72-b4fb-f91cffab52d0','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-07 13:43:04.484285'),
('4b99b3dc-2df2-4032-980c-e50298ab28c0','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-09 16:18:54.475067'),
('4bac33b3-5441-40c1-b20e-53c0d7647310','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-07 15:30:53.593488'),
('4c008706-0560-4e53-910f-6459932f4ad6','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 16:47:58.000000'),
('4c0fa32a-68b2-4cd6-9b39-6db8480cdcca','3301750183@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:04:59.000000'),
('4c4bb693-3ccc-498c-b21c-33c929a4614a','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 17:05:34.000000'),
('4c5859bb-a0b9-4435-ab2b-35726e5bb531','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 20:28:11.000000'),
('4c92902c-4d11-4ca6-8469-9caa37cf13b4','1793529504@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:58:26.000000'),
('4d335d81-2bbc-4b58-ae6f-10343241cf17','1483618794@qq.com','新增','湖北省咸宁市','com.example.api.controller.CommodityController.save','商品管理','2024-12-02 16:34:19.204407'),
('4d395666-7a7e-4f5d-b975-905f0812b3a1','3505408546@qq.com','查询','河北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 22:41:07.000000'),
('4dc474ee-544b-4140-8267-fa42af3435d5','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-11 22:31:48.472970'),
('4e52a5a2-6168-4ef8-bdf2-8f18a1090a10','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 20:26:48.000000'),
('4e6b5ba4-35dc-4636-bc54-1358e68540f0','1483618794@qq.com','删除','湖北省武汉市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-05 10:44:57.434629'),
('4e6d954e-10a9-4747-bd41-a8faf3abeaec','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 21:59:49.000000'),
('4f2501c0-12bc-477b-90d9-5dae33b6c971','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 18:52:40.346242'),
('4f7fc9e5-42d8-4fb7-9729-863fb7234c20','1483618794@qq.com','新增','浙江省杭州市','com.example.api.controller.CommodityController.save','商品管理','2024-12-05 20:31:07.161636'),
('4fd1854f-8f3c-493c-9b3c-cf9c6e98aff4','1483618794@qq.com','删除','湖北省武汉市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-05 10:39:42.340167'),
('4fe67e97-c5d9-453a-8d7b-5e1f43b82047','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 12:45:52.444193'),
('5034b7ee-ff8c-422a-b35b-96b937258f71','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 20:43:32.000000'),
('5077e3dc-9323-4288-afad-d298b52abed1','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 20:45:24.000000'),
('508e94e8-a1ba-40bb-9987-aa68f3aafaee','3505408546@qq.com','查询','河北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:42:39.000000'),
('509a6a89-caf8-40e1-a250-110b70747bdd','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 17:22:56.230948'),
('50dc51f8-5312-4b9d-ab21-fc58e7df5537','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-05 10:21:01.873750'),
('50ea59f2-540b-4137-b70c-230c72fae1d8','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 23:43:56.000000'),
('50f01351-0303-4d33-8ef5-ba5055cc1a70','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:17:09.000000'),
('51e51bd5-2bac-4b02-8f0b-63f4a46a7d23','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-02 16:35:08.374455'),
('523c987a-af28-442b-972c-52b92d2b054b','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 10:51:22.000000'),
('52a651a5-2085-4b39-8cd9-064906156083','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 17:49:21.197477'),
('52a99449-4323-4697-b597-04bd02492228','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-24 21:08:28.987331'),
('52b20b34-0f82-4dcb-85ce-0250cc878ebe','1483618794@qq.com','删除','湖北省宜昌市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-05 00:09:57.152143'),
('52b64207-436e-4cd8-96ef-d7c2bf205701','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:39:39.000000'),
('52be2fac-cb92-4b90-a700-af8656422e34','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 21:01:10.000000'),
('52fe75a1-dd26-42a4-8e54-e44e1eae9e11','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 21:53:31.920470'),
('53b914c6-f571-48db-8c28-ab62bfa35524','1483618794@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-06 09:57:15.340588'),
('53bcb218-2882-426f-8f6a-2df4589087ee','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 17:44:14.791266'),
('53d0eed7-b037-4bdd-aaa7-637c25e77048','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 11:01:04.000000'),
('54330f32-70d8-46ea-aa02-4d8ebe060db3','1793529504@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:59:11.000000'),
('544e51cf-9aa8-45f7-8c79-2cd760caf3e0','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-11 22:29:25.670946'),
('547d4ce6-c9cb-45b0-a9d0-ddeaf8886778','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-11 22:29:29.745810'),
('550ff66c-323b-4558-aecf-cfbb17569491','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 14:01:32.928033'),
('555e6628-629e-4035-aabe-4c55d7394b70','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 22:49:43.476071'),
('5575224b-d89f-426b-9e1b-d3ab4727441a','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:17:07.000000'),
('5608b416-b4d2-481f-8ccf-f54ee1dc6556','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:12:05.608522'),
('575f3a0a-3772-4f83-a247-a18172ee0347','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:38:14.000000'),
('57682fe0-b578-4c1e-872e-bf643b59a6a0','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 22:57:09.302055'),
('58067280-14e4-4607-a9ee-cb1881186147','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:49:24.000000'),
('5812e48c-1fe5-43cf-bab9-e6c925e1e670','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-09 16:12:50.795072'),
('584d9259-c37d-40d2-bb9d-ba984ed9bfac','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 21:51:44.655883'),
('58da9a66-50c0-4fc4-b3bf-b59d441d2e69','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 17:09:29.387330'),
('5939bfde-5f21-4c7b-b703-9f1d2b012e98','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-07 14:02:07.859376'),
('5b9531fa-0c9f-4e9d-8f86-956af140cc70','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-11 22:16:26.924464'),
('5bbd67df-9f8d-419b-be2e-cc92bfa91b0f','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 23:28:36.812454'),
('5c0a0c7b-92b2-4383-873b-28729685b3d8','3505408546@qq.com','查询','河北省','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-20 22:43:04.000000'),
('5c12b83a-0dce-4f15-a66a-06a4af4f861a','2592308316@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 21:20:39.774515'),
('5c1313b8-324b-41c3-bd81-8db723026539','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-06 09:57:15.341991'),
('5cf2d174-bf6d-45c1-9ed4-2082f5cb9ba9','1483618794@qq.com','新增','湖北省咸宁市','com.example.api.controller.CommodityController.save','商品管理','2024-11-20 23:06:19.000000'),
('5d4f368a-403c-44e2-aa1e-929bd8951d1d','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 15:36:07.000000'),
('5dd586e0-2601-44ba-a644-1b6f4ac22b37','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-02 16:34:42.499260'),
('5ec9cc3e-8c6a-4228-a679-77bdd123fa80','2592308316@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 21:05:30.680057'),
('5f0109c3-0fab-4cf5-87e2-ce3f221281b1','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-06 12:47:28.054623'),
('5f122147-d1e8-4de8-af5d-50c8848b0936','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 16:37:58.000000'),
('5fb08b6a-6016-4792-8114-aefa69749be5','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 23:45:12.069076'),
('5fe6372b-8f0b-4d34-a725-942b6b89b1a3','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-04 15:09:34.163231'),
('604dfe9a-ec4b-48a8-a6f7-b1341779deb1','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:31:52.000000'),
('607bb7bb-1a92-4642-9229-a30df6183ecd','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-05 15:51:27.932953'),
('608e1f4c-2641-4e8c-8a67-3f33fcf3521f','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-12-11 23:05:08.173784'),
('609f1d87-5653-4eb2-9fcb-f01d000edff2','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 18:36:31.000000'),
('6148dcb1-eb16-4718-94fd-8243a5474741','3057098742@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-09 16:49:06.974298'),
('61891762-0af0-425a-a2ca-c1d87344e07f','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:07.000000'),
('6222bb98-f406-466b-bae4-a2bc4dc6cc68','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-18 10:46:43.000000'),
('628cc061-eff9-4aac-b3c5-44542ab19a5c','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 20:31:30.944834'),
('62d153f1-27fa-4cbc-97ec-9cf0ee643a89','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-04 23:52:04.195556'),
('6330d5d9-da9b-4b22-bc11-16d60512616b','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-11 23:17:18.020902'),
('641c3dee-5021-43c1-aad3-4cfe581ee2f8','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 22:24:36.000000'),
('6544bdeb-0ed0-4750-9a2e-2403531a9f56','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:17:04.000000'),
('654500e6-162d-4eaf-acd6-67093b6d6614','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 17:45:29.403178'),
('65574192-6739-47a2-8a2e-cad259691ec6','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 11:13:21.000000'),
('661a0186-c869-4c31-a6b2-ee64963c24e7','3505408546@qq.com','查询','河北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 22:42:30.000000'),
('66ca01c7-6917-4e2f-855c-38ee8e3e7714','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-11 23:17:30.064759'),
('6764bd8c-f4cc-4334-943c-e79b787ef8a1','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 15:26:12.950264'),
('67792e43-7be8-4a15-bd0d-60cba0aeb970','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 22:49:42.410157'),
('67d6a5bb-a828-4606-a78d-e6d13e1fd708','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 20:01:48.000000'),
('68449a67-f23e-467a-81bb-6116e3c09106','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 17:26:26.923413'),
('68db87aa-3125-44e5-9c85-4e76d81b532b','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-09 16:11:49.356037'),
('68e75b5a-fbce-45ad-bd71-edf0127683d8','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 20:29:18.218344'),
('68f27ba6-b15f-40ab-91c7-d91abce04b30','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 19:24:02.175618'),
('6964cb7e-16db-4bed-8c1c-ccb062e18612','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 10:51:32.000000'),
('6a365dbf-cfe8-45ce-90b2-5035aff41381','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 15:26:43.731410'),
('6a7452a5-03f4-4ce8-bc0f-ad75232e558b','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 16:37:48.000000'),
('6ab142cb-507c-4b17-b92a-9ed319cca2c9','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-06 09:56:45.301401'),
('6ad26dcc-cc7c-4414-a33a-b36aa05e622b','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-07 14:02:02.012265'),
('6ae3117a-9292-4be8-ab50-4376a92a4a94','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-06 12:47:46.056754'),
('6aea4ada-2d05-4b7d-9b73-4d0b126e3bbd','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:17:10.000000'),
('6b0bcd65-4ca2-40da-b9be-cc976ef83667','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 09:50:24.732740'),
('6b437bdb-b0ea-4e33-bcc4-0fa0c6094960','3301750183@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:07:10.000000'),
('6b64975d-71f3-4558-ac82-45a187738912','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 21:59:52.000000'),
('6bc1a7e3-3951-4e03-b353-d67401ccf968','1483618794@qq.com','删除','湖北省武汉市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-05 10:30:25.271991'),
('6c180891-82c4-486b-8fa6-b30634629928','1483618794@qq.com','新增','湖北省','com.example.api.controller.EmployeeController.save','员工管理','2024-12-06 10:00:43.413574'),
('6c21a565-9a25-4d7e-8fce-a7243e2813db','1483618794@qq.com','新增','湖北省宜昌市','com.example.api.controller.CommodityController.save','商品管理','2024-12-05 00:01:59.405621'),
('6c296463-1714-40d4-9d00-2f8e33596431','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 17:45:36.230744'),
('6c72efcd-a411-4391-be92-dc060de5387e','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:17:12.000000'),
('6ca4505e-3555-4da9-84f6-011c5f985522','1372467989@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 16:09:30.818402'),
('6ccbf426-1252-4ad4-a192-e7922d55e221','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:22:55.000000'),
('6d0b31eb-531d-4dfb-87ca-8030810a5c2f','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 17:22:44.100563'),
('6d6f67ff-332a-4490-904c-175a31ffcb78','1483618794@qq.com','删除','浙江省杭州市','com.example.api.controller.VehicleController.delete','车辆管理','2024-12-07 13:38:21.551325'),
('6d8d223e-d96d-4d88-88a5-ac8092fa2481','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 21:53:58.603839'),
('6dc7c414-fd82-492b-8afc-7e255e62a1e1','1483618794@qq.com','查询','湖北省','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-07 20:44:29.771938'),
('6df5dcd3-e2be-48ef-a178-2836c02e78cc','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:22:56.000000'),
('6e80ae70-d61d-41ce-8896-a4c414622a2c','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-12-05 21:39:36.114452'),
('6f1b29db-eb09-400b-900c-74cd8c957793','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:23:11.000000'),
('6fcf1a3f-8cdc-4b95-90fa-7f66ce72ed80','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-05 10:20:26.770202'),
('6fe99db4-5f47-44d1-a158-b63dd34fe403','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-07 14:01:50.891404'),
('70ec5bd8-4a3c-40dc-9538-19323e9261d9','123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:21:10.000000'),
('717c45d6-5c53-4773-8a40-7cbf1b62fdda','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-04 15:05:39.892585'),
('7188a778-2091-42f4-b535-a99b4a53e7f6','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-05 21:36:24.660909'),
('72bd19b2-89a1-4b05-b3e2-243f1b46ae46','3505408546@qq.com','查询','河北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 22:41:02.000000'),
('72c30e58-adc4-4adf-9f5a-73a0bd723a8d','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 23:45:12.069098'),
('72dd35f2-55a5-4a56-970d-1b26ee4b6a3c','3505408546@qq.com','新增','河北省','com.example.api.controller.CommodityController.save','商品管理','2024-11-20 22:45:04.000000'),
('7325e51a-c8f9-4035-9782-1461ba678705','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-24 19:26:10.853648'),
('73e68fba-d3f5-453d-a932-093eeb053d0c','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 20:29:26.790890'),
('73f1177a-3a17-4686-84c8-1436aa22906d','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 21:55:07.000000'),
('749fd852-85c3-4357-830d-03703b295a66','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:19:48.749004'),
('74da9ea5-314c-4d2b-aa8c-2b246c99996a','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 19:22:56.614358'),
('750050e9-ce57-4f25-9658-87a5312ec52e','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 22:49:05.966935'),
('7501fcc8-cf04-43d7-a6f7-7788a7098587','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 18:18:39.805174'),
('759ecbeb-6887-444e-b489-6d4464d40f19','123456@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 16:21:09.000000'),
('75df19b5-6dd3-436f-b39c-89d186577367','1483618794@qq.com','删除','浙江省杭州市','com.example.api.controller.DriverController.delete','驾驶员管理','2024-12-11 22:23:18.917958'),
('75e3c4e4-3a60-49b7-8839-fb009b5f3033','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 20:39:39.754096'),
('76268ecf-ffb8-4e38-bd69-e48ef82cc643','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 23:30:04.874557'),
('76373e6f-2281-4eef-ad8e-21cae0bc1961','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-07 15:30:58.267333'),
('77277a05-4e2a-4d78-8f88-cb0be88c990a','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-12-05 21:52:23.101362'),
('77305e85-3648-4ab5-9e80-fa074f7eef4a','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-02 23:27:21.880528'),
('78766d74-84f2-49b9-a67b-431dea7fb849','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-06 10:00:59.132619'),
('789c4999-0f1c-48d9-8658-e5a3dfc75594','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 18:39:41.122156'),
('78b9a654-2b83-4151-b3af-d5e713b93420','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:22:55.000000'),
('78d6b816-8858-4b76-a2dc-828a76b52fbe','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 22:49:07.146138'),
('78de843d-0577-403b-ad72-35e92aeb028e','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 23:28:47.008194'),
('78f65ed9-48b8-4e48-a39e-0ae71f10fa74','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-05 10:20:36.132483'),
('79106cad-0dc9-4ef1-beac-e001020a90ae','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:16:16.000000'),
('79b8f91d-0307-4544-929c-8b427db3a9d0','dkh123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:46:12.000000'),
('7a611533-b52e-425a-bda0-0c1971ee4140','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 18:39:50.000000'),
('7b308af0-65b7-45fe-9d52-ad3a39ea61ae','2592308316@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 21:05:51.434019'),
('7b560d1d-bbe1-4c82-a80c-fa6a40fe03ec','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-02 16:24:40.994934'),
('7bb9e381-9b83-40ae-859f-a99f99bcf983','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-21 15:36:07.000000'),
('7cc16775-534b-4efd-9f2e-d8d43eaf751c','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-11 22:32:09.779168'),
('7d4471a1-751c-4045-8aa5-0c15d3228771','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 22:49:42.744921'),
('7dd00697-4e10-4579-98e1-4cb655b5dd51','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-21 19:59:49.000000'),
('7e04dff9-2b80-44e1-b665-14267f76fd51','123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:20:50.000000'),
('7e2c1513-a8f1-45e4-8cec-3fc0a7c93d18','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-09 16:17:51.297171'),
('7e65acdd-a3c2-479c-b0c3-23aa6cb208e9','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-09 16:18:56.117340'),
('7e734028-a482-4b40-9d73-5e66b14764f2','2928522155@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 21:20:02.180443'),
('7f268a15-2626-40b5-aee9-8f38f0acae07','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.VehicleController.findById','车辆管理','2024-12-11 22:25:54.729021'),
('7f32bb7b-7e84-45bd-83fc-aeefb79f66f9','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-12-11 22:49:55.737939'),
('7f36f57e-10e3-43ce-b9d3-dec062749fed','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 18:39:13.869153'),
('7f456357-61a0-4bab-bd87-705d60a336cd','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 23:34:45.832055'),
('7ff009de-d6ca-412a-9d45-881baf85eed7','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:48:14.130899'),
('803e17bc-282d-45bb-b053-68f2b492430a','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 10:23:52.000000'),
('80e79a7a-ba9a-4ec0-9b4f-4ef8282a2021','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 11:11:46.653675'),
('8117f30b-ec04-41b5-9062-838c827f140b','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-07 17:23:35.504640'),
('8157d1e1-1714-4741-8f27-57defeb3fff3','3505408546@qq.com','查询','河北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-20 22:41:02.000000'),
('81fd11be-983b-4413-9c29-b0856e734862','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 13:10:55.000000'),
('828fa15b-2014-4d53-b534-5ac55ed13206','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-08 13:07:51.487336'),
('82b800ac-9f00-4384-9200-478e52d2a617','3505408546@qq.com','查询','河北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:40:49.000000'),
('82e56b71-216b-43d5-a174-ea0b97435381','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 23:16:01.714235'),
('835515d4-5719-4792-ad70-4efb384ed6f9','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 22:57:04.057065'),
('83c3a7af-6649-4b8b-a730-54585e3f0c6c','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 17:49:50.359202'),
('83d31a21-a306-4b00-b56d-1ff596ebaef2','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:50:55.221464'),
('83f9a29a-51ca-42ed-a683-70c20d36cd04','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-05 21:20:52.518792'),
('8403289f-8e49-4626-9be7-d5726796c9a7','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-20 20:28:14.000000'),
('84b1ce4e-9f05-407c-8252-3becd6e4eba6','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:15:59.000000'),
('84c7f94b-7066-4c99-bdeb-afbd14cd3392','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 21:52:47.708463'),
('84efdd9c-90fd-4bc8-b0f6-7682384c91c1','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 21:00:44.000000'),
('86286a77-a8a1-41a2-8b4b-6ec8216c277a','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-09 16:47:13.770496'),
('864bbff2-d9f2-44dd-90d4-9a9515945bc3','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-08 13:07:41.137830'),
('86d6b7d0-5ae3-4157-92e3-e56e6ec90c9b','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-12-06 16:59:39.569585'),
('87ab958a-8f9e-4d6f-99c4-1f75ae021910','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-23 11:19:48.984705'),
('87c938ed-b844-4cca-8f61-fef03b5e839a','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-17 21:01:54.000000'),
('88252cea-558f-4886-9910-9f3b6cefa506','2149754832@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:29:01.000000'),
('887a32d7-aa82-4b6c-bdc4-6de2320b20db','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-11 22:32:43.388313'),
('88d218b1-bfa8-400a-b8aa-975f9056fdf3','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 15:04:35.788334'),
('8938918c-8552-46d1-9225-60719e3c9199','1793529504@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 13:01:54.000000'),
('894ba977-1f73-4ba5-a67f-ab3de30f0813','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-06 16:54:51.660977'),
('8a704907-74f5-46ab-b925-dac6de43433c','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:42:57.673520'),
('8afedf5c-78e8-4335-8a79-cbfd74f6ed65','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-05 00:05:42.263779'),
('8bb55547-91de-467d-9499-afd165ff9a9e','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 23:34:50.998373'),
('8bb5dd3e-70d7-48d0-b81f-9d170487ca5f','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:17:05.000000'),
('8c218a26-c1b7-45c6-b287-8abea90a551e','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 22:59:21.019005'),
('8c3b9172-4cfa-4091-a50c-30763c4a481d','2592308316@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-24 21:06:07.883333'),
('8dd3eb87-af4e-49c5-a4e7-b8bb6ee94e6b','3057098742@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-09 16:45:41.633802'),
('8df654b1-08bf-41f0-aa16-b5d747269e94','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:31:32.000000'),
('8e3e3bab-e31e-4381-acba-54e4d89d8d1c','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.EmployeeController.findById','员工管理','2024-12-06 09:51:49.836978'),
('8f49435b-b2c3-44f2-9beb-799f4b1e9810','3301750183@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:04:43.000000'),
('8f50186d-aeff-421e-96f8-649d59a03b7c','2592308316@qq.com','查询','湖北省武汉市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-24 21:06:07.905652'),
('8f62b712-848d-45dc-aeff-e7226beb53e7','1483618794@qq.com','新增','浙江省杭州市','com.example.api.controller.WarehouseController.save','仓库管理','2024-12-11 22:27:16.193212'),
('8f69aa9c-e364-489a-bdaf-4f2848500b8c','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 15:08:39.638573'),
('8f7ffd65-5b2f-401f-bb12-27d8c01df8b8','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 18:52:28.876243'),
('8f8b69b9-35e9-40ad-b66f-456bb6668db8','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 21:10:34.837027'),
('906368a3-291c-4a61-82b3-075cd2146751','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 22:50:02.145716'),
('90c12c2f-f6ee-4040-9575-ba6f88658c70','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:12:15.000000'),
('914e5c8f-565e-4e6e-8542-56629d0efcb7','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 21:50:16.202058'),
('91d098ce-e1e7-41ce-8c41-f70e47f59c0f','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:15:59.000000'),
('92ec7ca3-25cf-47f2-9cc7-912a1206f330','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 17:23:17.488069'),
('92ee882c-cb7e-48f1-8b86-7f93120b3e64','niuiyigeukjidauabi@qq.com','新增','湖北省宜昌市','com.example.api.controller.CommodityController.save','商品管理','2024-11-22 12:22:32.000000'),
('92f83fee-8971-48a7-8522-77f68bbd2e81','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-05 17:14:55.762056'),
('9376e133-dcb2-4948-b3ce-0c9b01b0dba5','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-06 09:50:32.128483'),
('93f6b509-5696-49b8-839b-20fc7e91cfbd','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:41:04.682393'),
('94cd7fa9-9ff6-483e-b37d-060a00b0d943','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 20:27:19.000000'),
('94f39e0a-8912-49fd-9cb9-a2b2b500ffbc','dkh123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:45:34.000000'),
('9578618e-2e59-4765-b112-3defe42926db','2592308316@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 21:06:27.915655'),
('9586e07d-9142-4fc1-b531-83a1282d82c3','1793529504@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 13:01:19.000000'),
('9589609f-240a-47fd-9a79-401e9d8d6050','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 23:05:03.740096'),
('95ee4490-aff7-429c-9aa8-09a7df9259f5','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 22:55:05.254384'),
('9602253b-f7a6-4408-bd9a-9621cb57cd25','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.EmployeeController.findById','员工管理','2024-12-07 13:32:31.812560'),
('9613f4ca-f14b-4823-975c-20d2fa11cb55','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:55:00.000000'),
('962dbc67-00a4-4a7a-80d5-453b1071c46b','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-11 23:17:18.083412'),
('97014287-956e-4547-b3fb-51294a60a4c1','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:39:42.858172'),
('979d83d1-fb4a-4f4f-a036-8809c0bd6fc3','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-07 17:23:13.848561'),
('981c8175-e716-4d16-8688-6c55ea3a82ae','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 12:46:48.959621'),
('9842aef2-8d29-4dc0-97b6-760bdfcc25d6','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-09 16:15:59.936329'),
('98aeea50-ac5b-4a9e-80aa-d0d11202abed','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 13:08:40.000000'),
('99688e68-9ff9-4bc2-a0c6-813b2b4a01d3','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-06 12:47:49.607752'),
('99ab52ec-33a4-4ba1-a36d-6c5d6bc0548b','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-09 16:17:49.166983'),
('99eff822-ff35-4244-9d83-b7d4d0dab6ac','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 15:33:41.129553'),
('9b131c72-96c7-4495-ba88-439d8a2c6128','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 20:28:34.000000'),
('9b1949d4-834c-4491-97ed-d4637135bb03','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 13:12:51.000000'),
('9b20e930-2536-4d11-8c70-76edb6e213eb','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 23:39:40.895797'),
('9c2bbc82-6511-410f-9ac3-0bc015ee44d7','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 16:15:39.429186'),
('9c74246d-f4ca-482f-9e2d-55832ba4f133','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 20:16:05.477154'),
('9d076058-84a7-447f-b700-9009f2004f60','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 18:39:27.580059'),
('9d661ae0-2586-4f05-b546-cd09de70c323','123456@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-20 16:21:00.000000'),
('9de226b0-48c6-44b0-902f-f143bf355dbb','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 20:44:19.605891'),
('9e5a83b6-da78-4ef3-ab08-55c4eff52567','1483618794@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 23:39:37.076233'),
('9f18e6ad-7982-4759-965d-ea1d7adb1814','2149754832@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:26:46.000000'),
('9f76a5f2-d769-4931-ac17-837f862c37c4','1234561@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:24:07.000000'),
('a2288885-fe43-44d1-8560-e818608adba6','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 19:22:46.881108'),
('a2a56d68-f8bd-4d15-b43f-8e4dd5d48a54','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 15:27:03.035026'),
('a2b0797d-50d6-4fe9-8253-e1b6bbf4e3a6','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 16:11:45.071798'),
('a3b03892-b32b-4ea3-a6b6-1be0d862405f','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-24 21:08:29.041017'),
('a3bb406b-3631-45c6-a7f0-3b83638d5db7','2928522155@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 21:21:24.441972'),
('a452a255-59e2-4db7-95e4-f9d401afa65c','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-12-05 21:21:36.284642'),
('a4beac1f-2d32-4ef2-a9f0-581717a0894e','1372467989@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 15:45:45.419317'),
('a532ece0-edf9-4899-a288-826757715ac1','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 12:44:31.139782'),
('a541a119-9f39-4aa2-9fac-599ae46d77fc','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-12-04 23:56:10.730344'),
('a57421aa-a2d2-4ce3-8a81-9fb49c508946','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-08 13:08:11.934037'),
('a582e953-5d77-4755-ae6f-22254cfb6c42','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-12-11 23:11:13.629786'),
('a5b13263-5e64-4dd0-877d-267e4cffc65a','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 22:56:57.192281'),
('a5c81b3b-6e90-46c8-bba4-35c5329f4a21','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-09 16:15:48.592023'),
('a5facff3-cab3-4d31-8dd0-4adb2a295ca4','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.DriverController.findById','驾驶员管理','2024-12-07 13:36:27.755503'),
('a62e6dc5-3db7-4a08-ba7b-57f9c9339d6c','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-06 16:54:51.654220'),
('a6d6c41d-643a-4cc2-828a-97bdd2f67476','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:48:58.000000'),
('a7fa600c-2a12-4e5b-9d69-e1e404529eb8','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-27 09:40:01.404703'),
('a8b94243-250a-42e4-b7ca-5f3f09cb6444','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-05 21:36:24.649239'),
('a955fea0-fc0c-40ea-8045-b514e20eb1ac','123456@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-20 16:21:09.000000'),
('a9f55f35-172f-4783-8ff1-8ffac6be89d8','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-07 14:01:55.503713'),
('a9f657a8-ecb6-4bc5-9da3-340db498fa59','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 22:49:43.870163'),
('aa178186-db4c-45c1-9be9-6d3e173fea76','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 23:10:49.058420'),
('aa52b4f4-3ad8-43c0-8e3a-b3e653e64eed','123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:18:43.000000'),
('aae62dd6-0718-4a33-8b00-75892fae8446','1483618794@qq.com','新增','湖北省宜昌市','com.example.api.controller.CommodityController.save','商品管理','2024-12-04 15:08:51.594176'),
('ab91d475-6c09-4f5e-9932-0b772b2600d3','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-21 16:37:58.000000'),
('ab9fa34a-7a97-48b7-9d91-f5356b9bf0fc','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-11 18:52:48.221244'),
('ababd955-99c0-498c-95a8-70a6fa75b53d','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-21 13:10:16.000000'),
('abe3ddf5-1996-419b-8017-abb8eb3a729c','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-02 16:34:38.906526'),
('ac532a83-a082-49ba-9d85-664281d93f46','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-06 09:57:13.963483'),
('ac5d7880-fad7-4894-b0c7-5d110125fa8b','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-05 17:19:28.043694'),
('ac66b2ee-e31d-4a74-b127-a22e3e9dfd40','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:42:04.379477'),
('ac9245dc-8fd8-47f4-8741-83fdfc41619e','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-06 09:55:51.452804'),
('ade116bc-80e5-4d20-8550-a759942cdd0c','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 15:45:46.111514'),
('ae4d44e4-e4fd-44e6-b835-2e3d33147519','1483618794@qq.com','新增','湖北省武汉市','com.example.api.controller.CommodityController.save','商品管理','2024-12-05 10:46:50.641570'),
('ae850750-d805-4a15-abb5-85afb97a170f','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-11 22:23:47.802310'),
('afadd5b7-82b5-41d4-8a4d-f2d03dbf522e','3301750183@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:07:33.000000'),
('afcd1d50-3cb3-40eb-a58a-fad79e3fedbc','3057098742@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-09 16:49:06.964307'),
('afe47d2f-5e63-43cc-8f1d-56dff58abd57','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-08 13:07:25.832091'),
('b02c7afa-e791-47af-b326-d67c3cacc533','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 20:27:41.000000'),
('b0ce1fdb-717f-453a-8545-a2e72d7496ec','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 23:12:26.995021'),
('b159ce27-f785-48df-9ad4-c968336b851e','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 23:16:23.050585'),
('b18bcb68-ca9d-47fa-aeb4-3846f6150fb1','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 21:53:04.388388'),
('b2b9ff46-2b1d-4e93-a1f7-571347f3f0fe','1483618794@qq.com','新增','浙江省杭州市','com.example.api.controller.EmployeeController.save','员工管理','2024-12-06 09:55:25.606382'),
('b2d7136e-aae5-4fa5-9610-6826bcda4416','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-12-05 17:18:00.791084'),
('b342f9a5-e938-44f0-86da-e9d8868305dc','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-07 13:37:28.194106'),
('b3441e03-a0c0-4bff-8b07-2b890ee96cae','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 13:11:53.615000'),
('b3bad3d6-bfd5-46d8-8581-874fd9efa538','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 23:31:26.545872'),
('b3cceb19-d0bd-4fc3-9ee1-92b81776ad9e','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-07 13:35:36.157132'),
('b4201650-66f3-4081-b3c2-3b4703dd4428','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:45:12.103885'),
('b59127a7-da2c-481e-88b5-f688dea69ffc','1483618794@qq.com','新增','浙江省杭州市','com.example.api.controller.DriverController.save','驾驶员管理','2024-12-11 22:23:40.673571'),
('b5c3d774-ff81-43bf-934a-b93c1c208daf','2928522155@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-25 16:36:05.471307'),
('b5e8ea0c-3104-49ed-b092-7b6666bca635','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 20:02:00.000000'),
('b5f84862-c760-4b19-a9cb-855fb457753e','3147338305@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 16:24:18.064443'),
('b6b1838f-7697-49bc-8862-d6280edec34f','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-04 23:46:32.153174'),
('b7075d7c-a381-49a4-b6b6-8eaca9cd8835','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 23:27:21.933852'),
('b718d164-70ed-4d57-bc28-8368d424d0ca','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 22:55:33.212547'),
('b720a9a8-537f-4d79-b6a8-323a75b3d59e','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 09:50:16.255288'),
('b789b237-f8d1-4e9a-9e60-473012cb9a79','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:32:16.000000'),
('b79254fd-0a72-4bb7-b9e1-36968d31a450','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 23:16:25.433730'),
('b794ff8c-f8fb-4492-b7f0-dab86e55af91','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-08 13:07:54.307546'),
('b7bd33ab-7bdc-45a6-a04f-3ea7dcc82123','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 11:14:49.869825'),
('b7d2646e-61b8-4ac7-ae72-76af759f70e3','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 15:27:56.038230'),
('b81bc8ab-00f6-43b1-9087-f0a13168da20','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 11:08:42.354786'),
('b8af3999-db32-48e1-b068-795ad7b5c38d','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 21:38:35.577458'),
('b8c75cfa-5258-4eef-b364-1cb7b752181c','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 23:20:34.431322'),
('b95d0908-1b5c-4caa-918b-222e86a9096f','3505408546@qq.com','查询','河北省','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-20 22:42:53.000000'),
('b95fcefd-3817-4a66-9a9e-2dbd24b559c6','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 21:50:09.993630'),
('b9b831b2-ca0c-49fd-8a35-6b9aa29c84fe','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 15:05:57.035578'),
('b9d17535-4dae-48cd-bc03-7283f9841095','1483618794@qq.com','删除','浙江省杭州市','com.example.api.controller.VehicleController.delete','车辆管理','2024-12-07 13:38:04.857119'),
('ba246ede-e6de-4a45-b54d-b405469b1f4a','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:40:00.439178'),
('ba970318-94a7-4c10-abce-693a670a779e','3057098742@qq.com','查询','湖北省','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-09 16:45:34.187225'),
('baa0511c-4832-4f73-8200-7f6415932e00','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 16:30:58.000000'),
('bad53560-711c-436c-95dd-de2b0eccb3c8','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:04:10.000000'),
('bb887b66-e20f-48b7-900e-295ae01373d7','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-07 15:26:40.234821'),
('bbb89859-6d18-49e0-ab43-483db165510b','1483618794@qq.com','删除','湖北省武汉市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-05 20:31:44.848644'),
('bbd5accf-4b5b-4f11-b1e5-83f38b4a3f24','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 11:08:39.088728'),
('bd9c69d1-b485-437b-b827-3aa4813a77ad','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 17:26:56.152861'),
('bdb7b89b-0a17-466b-a3a0-eb561f06ff15','2149754832@qq.com','查询','湖北省','com.example.api.controller.DistributionController.findAll','配送管理','2024-11-20 16:28:34.000000'),
('be0552ce-4406-4a3f-8cd1-ea6c55c4b7a1','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 11:16:49.945451'),
('be4ddf3c-b12b-4555-bbe2-4180ddb344fa','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-24 19:26:09.876885'),
('be5a1bb1-29f1-4cf9-a729-cebc2a1ac27d','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-17 20:45:38.000000'),
('be5aab3d-e239-49ab-873c-255dcf7e8e26','shawn_xsz@qq.com','新增','湖北省','com.example.api.controller.CommodityController.save','商品管理','2024-12-09 15:45:05.357274'),
('bea4f708-5993-4c52-8dfa-237ed58aff8d','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 00:02:00.475434'),
('beb565b2-9ac9-4975-8d81-67ad4805b93b','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 15:39:51.153237'),
('bf6351e9-7b6e-4db6-be7f-39c1cff638b4','1483618794@qq.com','新增','湖北省武汉市','com.example.api.controller.VehicleController.save','车辆管理','2024-12-07 14:01:55.176721'),
('c024f697-1c76-400f-b086-57f206a13f19','1483618794@qq.com','删除','湖北省武汉市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-05 10:31:34.379983'),
('c0847d67-4b66-4ad9-bfb5-4a8244c666ce','1483618794@qq.com','删除','湖北省武汉市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-05 17:21:06.660341'),
('c0badbdf-ba5c-4703-9d7f-6627932891fb','shawn_xsz@qq.com','新增','湖北省','com.example.api.controller.CommodityController.save','商品管理','2024-12-07 17:27:37.627499'),
('c105675c-2bdc-437d-8fb8-8f55f8756609','1483618795@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 21:18:14.267649'),
('c19a6e9e-23ea-49f5-a3cf-2d022b1416ad','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-04 23:55:40.100856'),
('c2feec2d-552b-45f5-a692-38812de09ea7','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-04 23:47:15.856486'),
('c3153f78-62a7-41ee-89d2-df6fb5b347df','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 09:55:39.000000'),
('c4664fc7-24e1-4366-9693-54eb9e6d7216','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-21 20:01:28.000000'),
('c514319d-3bdb-48a4-b78a-6e99313b956b','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-09 16:17:49.167304'),
('c5c91b62-6041-4be2-9a92-13229f93eaaf','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-02 16:34:44.895802'),
('c5f8b446-e5e9-4030-a07b-2ae3c91ad8c8','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-12-05 10:21:09.177552'),
('c6241a9b-4d6c-4ca4-9aea-5fe960ab6ab2','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-20 22:32:28.000000'),
('c64df1c9-0efb-4f39-9081-226829497eb3','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-11 22:26:44.897336'),
('c6c475c5-85ce-4873-93b3-400282de6d4f','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 09:50:07.793885'),
('c6c8e55c-ca08-4c03-ad9c-0fb51e835383','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 20:45:36.000000'),
('c6dd486b-d629-4b89-bf24-cd797a988807','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-11 23:17:19.419282'),
('c78dfa0a-f4ce-41b9-84e6-7682745d90eb','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-11 18:52:35.510751'),
('c8880b61-4fac-4220-8a23-0a1c19eb3a87','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 17:23:09.502836'),
('c8f780bd-94d8-42cb-b812-6e881e383618','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:14.000000'),
('c9e728ba-d2fa-4310-87b0-ee15903a807b','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 00:01:40.426680'),
('c9ecf9ea-247c-4a71-bda0-b20b032472ce','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 17:10:02.416284'),
('ca0cf493-8db9-4a32-a1d5-fe5b810dc03c','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:22:32.000000'),
('ca22abf9-330c-48bb-a512-8a25e9d47ff7','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:19:31.000000'),
('ca8534ef-6487-4c31-9ba1-4a8abecb39cb','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-09 16:16:02.386529'),
('cab1fbbe-3fe2-4560-812a-d8319c81eb32','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:14:34.000000'),
('cb19cb90-5f89-4c83-b5d0-c37cc58fefff','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-11 23:17:25.721140'),
('cb7bd1cf-ce29-4fe1-8e0d-1e6b98ec1f6e','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 21:00:08.000000'),
('cbe4e6f8-5b1f-41e4-8cfc-0b0954c1c468','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:31:36.000000'),
('cc4f6975-88b1-4b12-8f3d-e1b98e5e46d4','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-08 14:37:49.276612'),
('cce8af68-2c1b-410d-86de-f666e0f944cc','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:16:01.000000'),
('cd567077-3471-439d-b11f-d1473001e0d8','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-20 21:59:49.000000'),
('cdb5fdb9-ab2e-46a7-b91b-6676e4d6e45c','1483618794@qq.com','查询','局域网','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:33:06.000000'),
('cdb9c923-38fd-4c3c-bd24-3d0b93981b42','1483618794@qq.com','查询','湖北省','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-07 20:44:31.658999'),
('cdff29d2-48de-4a6b-bf1f-408b6fdd78f5','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 23:34:40.058796'),
('ce0db120-f34d-40d7-9514-2dac6a32e96e','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 16:17:43.603748'),
('ce2b51c4-392b-4fe2-b5b5-3d9c5fcb3b58','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 12:47:31.106690'),
('ce6dde7a-fdf3-409c-a7ad-e8b14a80bbf5','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-07 15:30:27.993824'),
('ce7c8dd4-2c78-4570-8cbd-73d454a95735','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 22:57:14.983350'),
('ceec499b-25ad-46a9-8f42-bcb6563e680f','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 21:54:01.186698'),
('cfb4bb93-c0df-45ee-9a4e-88a94c5e6906','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 23:05:39.352338'),
('d0202ae1-7598-433f-a593-a74f229aaaad','1483618794@qq.com','新增','湖北省宜昌市','com.example.api.controller.CommodityController.save','商品管理','2024-12-06 12:45:51.355920'),
('d0735daf-4bfd-4138-871c-ae5f48d1e351','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-09 16:11:49.349217'),
('d0a18407-6abe-44bb-a6dc-21bf92d3363c','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-09 15:45:43.402590'),
('d0b6c52e-734c-440f-a175-ee9055c81915','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 22:25:01.000000'),
('d0b911dc-7104-47a9-bf76-ccabcc4b2f56','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-05 15:51:27.932153'),
('d17b9719-7b38-47d3-88e0-4255bd70ccd8','1483618794@qq.com','新增','湖北省武汉市','com.example.api.controller.VehicleController.save','车辆管理','2024-12-07 14:02:01.649714'),
('d1cb73c7-6464-4078-a1c8-e103ade42921','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-07 17:23:33.988594'),
('d200d5e8-2956-4909-98fb-c6e123b4c80e','3057098742@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 16:42:56.460699'),
('d2243b11-7353-4204-8da7-9a80ead3c1e3','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:15:02.000000'),
('d24703cc-44dd-4fb3-bbec-3b630cb78cb8','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 23:07:07.112252'),
('d31f16b7-7698-49f6-9aa2-06866b01eedb','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-08 13:08:01.476030'),
('d32e2241-0c17-495a-ba32-be7ab1128f55','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-17 20:48:26.000000'),
('d3347bf6-6da4-4d16-90a1-3cf198e8d04e','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 17:45:04.543794'),
('d3c77bc5-2f6f-4f44-ace0-c3ac1e418ee2','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 21:01:13.000000'),
('d42cda13-6d3d-40bf-b6a2-01b7e93032d4','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 23:28:36.759994'),
('d44dca81-3582-423b-8323-5d5378b6a705','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:09.000000'),
('d45be468-4b13-4e0b-a7f2-9b56e53977d9','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 09:55:49.473572'),
('d46ea721-ebc8-446b-8488-59a8e701d94f','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-21 13:11:04.000000'),
('d51b44a0-c5e8-4c2b-a810-b9968e78ce2f','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 18:55:51.361070'),
('d52b7539-940b-4938-b87a-4562b7ab9e04','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 23:26:20.874991'),
('d564d044-7c9e-469b-bef3-2cfc3dee166e','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-24 21:08:40.820206'),
('d5e81228-4d39-4164-bf70-6fee44a4e83e','2928522155@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 21:19:59.977995'),
('d667b06b-6fab-486c-8f4c-1207d396e520','shawn_xsz@qq.com','新增','湖北省','com.example.api.controller.CommodityController.save','商品管理','2024-12-07 17:26:55.189771'),
('d67b299e-024d-4b85-b0da-cea3f4058252','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 19:26:02.662707'),
('d712ddfe-227d-4bcb-9a41-83379a18a6da','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:01:02.000000'),
('d806e165-60c0-4a10-9906-68c28fc42e56','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-09 16:12:50.807281'),
('d83bd5d9-a734-44e8-a478-70fdad170d62','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 22:51:22.971842'),
('d88ec8c2-2c15-4942-8050-b51207e82b46','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 21:07:31.222683'),
('d9965c94-cce9-41dc-a8bf-8decec346477','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 23:39:37.046072'),
('d9a54cb0-45c9-4ec7-926b-1175dd3e0b01','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 19:14:27.765073'),
('d9c20528-70c3-4f30-a750-98bc71374523','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 20:42:30.524562'),
('d9ff14c4-0d05-40f3-af58-9ee82dee2469','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-11 22:32:47.258012'),
('da09e397-f35f-46b2-9214-fcfcd0825317','2149754832@qq.com','查询','湖北省','com.example.api.controller.VehicleController.findAll','车辆管理','2024-11-20 16:28:29.000000'),
('da4d4365-6201-4974-8655-01704f8f75fe','986437891@qq.com','查询','湖北省荆门市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-02 20:05:46.724033'),
('daa8316d-a176-45c6-91df-66d4cef22523','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 22:32:13.665375'),
('dae22a0c-18d5-4be2-afbb-ae45c2f7b390','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:31:39.000000'),
('db6763aa-adc7-4e09-b975-3f3f3d986801','123456@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:43:26.000000'),
('dbb31927-9666-473d-a46f-28513d7de631','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-11 18:52:37.707445'),
('dc1f88e6-26eb-4de8-8371-97db3c49fbfc','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:40:53.000000'),
('dd156341-8447-4ee1-bafe-8e44d8688347','1483618794@qq.com','查询','湖北省襄阳市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 17:19:36.000000'),
('dd20f460-cdc5-4006-9fae-c63c0d740db0','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:16:50.000000'),
('deb14972-64cf-492c-b396-f0e8ad81f60d','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-04 15:05:44.759344'),
('deeb7d1b-4840-4a4d-9c11-c60556d2d302','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findByLikeName','商品管理','2024-12-06 16:59:43.948249'),
('df672e9c-9e47-46b6-9175-80fb8fd5fa1d','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 00:10:03.944722'),
('dff150f5-002a-423f-924a-aebc7d8c864f','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 20:14:33.000000'),
('e034331e-69a3-4aa8-b8ce-df361bfdfc0c','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 11:13:09.360846'),
('e059d311-653d-48e0-b654-8bd2649940c9','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:47:00.792938'),
('e05ce068-0819-4486-bf30-de3669f8322f','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-23 11:20:25.071278'),
('e08deafc-263a-4768-a7d5-7abeead7216d','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:17:15.000000'),
('e13b4517-0020-4abb-835f-4a27dfaf5320','1483618794@qq.com','删除','湖北省武汉市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-05 10:48:08.389333'),
('e21aeb55-1b49-470d-b6ec-15e41d36d2dc','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:17:24.735176'),
('e28b7582-f735-4fa8-8cb0-5810ec30d831','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:15:56.000000'),
('e2aa2f71-a007-4bbe-9093-6af4e88f82c4','1483618794@qq.com','删除','湖北省咸宁市','com.example.api.controller.DriverController.delete','驾驶员管理','2024-12-11 22:32:00.628326'),
('e30e711b-116f-4a59-9b31-9f6c3a0805d0','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 23:25:09.726200'),
('e33e775b-3ca0-4d08-89fe-9c8eb8462a54','1483618794@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-20 16:20:28.000000'),
('e34d2c95-d78c-4777-a7df-fd387f259d97','2592308316@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-24 21:10:29.838039'),
('e396a0be-fdab-4c11-af0e-1d5151932e0e','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 22:49:41.970212'),
('e4093d9b-3c9b-4171-8ea8-3aea980971fd','2928522155@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-24 21:21:18.088226'),
('e46ca627-de97-4a00-8d55-9ad8c0b06f6f','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-06 16:54:56.948618'),
('e4aa7c71-64cd-42e2-b4f4-a9afa100fba3','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 12:45:02.265897'),
('e55cd2e3-6330-4405-8fa1-85c103f7f1c9','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 15:08:52.595287'),
('e561e01f-a09d-4504-b503-841432e216e6','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-17 20:43:24.000000'),
('e5910c51-9652-4cbb-969f-148e533c8e40','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:15:37.000000'),
('e5abc36f-4348-4133-a2a6-613eb3151d9d','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 23:05:31.781779'),
('e5f059c2-a3eb-4aba-ae11-50be3ae2b747','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-11 23:17:28.576375'),
('e5f54293-dede-4912-ab50-c301acb0cb5a','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 16:53:31.406206'),
('e6a7055f-dead-4d50-98a0-66b2c9f84c17','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.DriverController.findById','驾驶员管理','2024-12-11 22:21:10.365865'),
('e6cae206-ef48-4e5b-a90d-1f649cb40173','1483618794@qq.com','查询','湖北省','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-07 20:44:25.718173'),
('e71036fe-fc10-479c-8728-28d9d81b9714','2149754832@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:28:54.000000'),
('e734b5c7-4d07-4fbe-a32d-f997db10f5f6','3057098742@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 16:44:38.665456'),
('e7c554b9-17ee-4aa6-91fe-fd15d66234f7','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 19:10:20.695427'),
('e812f02d-f2e8-4560-a6e0-285a5dba904d','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:25:24.072203'),
('e843b258-8fc4-4cb9-a250-cd947b5ce94d','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-22 12:12:15.000000'),
('e897fd18-2b3b-4d9e-aeea-175108f28ebe','1483618794@qq.com','查询','局域网','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:34:52.000000'),
('e8b29255-91ff-40b4-9963-d2f02658cc95','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 22:49:47.347992'),
('e8f5dca2-8b7c-4720-8cbd-7a4783fec0a2','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-02 16:31:31.789372'),
('e9ae7e41-4339-45fe-8f9c-d47feae71b46','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.DriverController.findById','驾驶员管理','2024-12-11 22:21:43.379335'),
('ea741689-494d-4b19-817a-8ed090ce0513','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-12-11 22:32:43.454472'),
('eb01870a-894e-4617-8968-a2e211806cc3','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:18:09.000000'),
('eb395930-5da3-4110-b672-60282771746e','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 13:12:47.000000'),
('eb7ce4b7-1f8f-452f-b5c5-db1cec5394a3','1483618794@qq.com','删除','浙江省杭州市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-09 17:01:38.441909'),
('eb8902dc-c208-4001-b5be-b11ca2032e0d','1483618794@qq.com','新增','浙江省杭州市','com.example.api.controller.DriverController.save','驾驶员管理','2024-12-11 22:23:03.088937'),
('eb9c0900-000f-4547-8d14-17033c2e7069','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.DistributionController.findAll','配送管理','2024-12-09 16:15:54.989370'),
('ebc72026-b4e8-4413-908c-1ddc05af35d7','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 20:44:14.011684'),
('ebe61cfe-1edf-407a-9225-4e7c3f8479ca','3057098742@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-09 16:41:31.023849'),
('ec66cd07-e14b-45b5-8454-da9ea43c7e88','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 10:39:56.000000'),
('eca42373-9557-4e8a-9297-befd0e62b5b8','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-07 15:30:33.902090'),
('ed07ca9b-f7dc-49f1-aed7-12743cdfd009','1483618794@qq.com','查询','223.104.119.181','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-17 21:00:44.000000'),
('ef5201aa-3a97-4f34-971b-39986f931a68','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-21 20:01:28.000000'),
('ef63ad47-77f6-4883-95f7-f6066d6bef46','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-07 17:23:12.095880'),
('efdd324f-5c29-404e-8ca4-bfad668e7421','1483618794@qq.com','删除','湖北省武汉市','com.example.api.controller.CommodityController.delete','商品管理','2024-12-05 10:33:49.121684'),
('efe91d66-fef5-4598-966c-30c06d848a9e','shawn_xsz@qq.com','查询','湖北省','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-12-09 16:13:04.046100'),
('f03e1aee-56e9-43f0-8cb7-33ce3c2680cd','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 23:57:50.000635'),
('f0a98a27-2991-4f58-a7fd-c5a96dde6892','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:59:26.000000'),
('f0ace375-9bca-4a29-9bb1-050ca1516629','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-11 22:17:44.346704'),
('f1632d4b-b5f6-42b4-9f2a-287b33a9274b','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.VehicleController.findAll','车辆管理','2024-12-11 18:52:51.621962'),
('f1b2c9bf-7968-4941-be09-a7ca976bab16','niuiyigeukjidauabi@qq.com','新增','湖北省宜昌市','com.example.api.controller.EmployeeController.save','员工管理','2024-11-22 12:15:29.000000'),
('f206e724-23ae-423b-bcdb-b7f8fb79ff34','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-04 17:09:45.130161'),
('f256e8f0-acbc-471d-b0ee-975bc3e2dd35','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-06 16:59:39.570756'),
('f2d6efe5-1b0b-46e2-a1d4-7bd600d94d7a','1483618794@qq.com','查询','湖北省荆门市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:12:30.000000'),
('f36036ef-cb0d-4ce0-98bb-727267813f73','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 15:35:55.000000'),
('f3b5028a-9332-46d0-a7b3-9bbd765ad4a1','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-12-04 15:05:46.350510'),
('f4c5241f-4a46-428d-b439-57b8f621976b','1483618794@qq.com','查询','湖北省襄阳市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:48:41.000000'),
('f52a19ad-f572-4606-8053-403eaef2c14e','1483618794@qq.com','新增','浙江省杭州市','com.example.api.controller.CommodityController.save','商品管理','2024-12-05 21:20:24.272673'),
('f53f80d0-a829-4a46-9197-37ed888cfcb3','1483618794@qq.com','新增','湖北省武汉市','com.example.api.controller.CommodityController.save','商品管理','2024-12-05 10:44:25.124267'),
('f5dbbee7-a669-4856-8af6-31f86b3f71f7','1483618794@qq.com','查询','浙江省杭州市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 17:12:32.153174'),
('f7226255-486f-445f-9428-4e05c6a97306','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-07 15:28:21.783274'),
('f759e9d5-06ef-4af9-89f8-e19ce212cc61','1793529504@qq.com','查询','湖北省武汉市','com.example.api.controller.DriverController.findAll','驾驶员管理','2024-11-21 13:10:16.000000'),
('f7e6e4c1-9378-4e67-be2d-445958c76e3b','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 21:51:00.355673'),
('f8365549-a663-4246-8892-2222aaa52578','3301750183@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:04:53.000000'),
('f8372248-4fb3-4759-ab34-16e226aadadc','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findById','商品管理','2024-12-11 23:05:12.567890'),
('f911cc00-3d42-43a1-ab9f-9ca69bd0b1b7','1483618794@qq.com','查询','湖北省武汉市','com.example.api.controller.CommodityController.findAll','商品管理','2024-12-05 10:29:17.978632'),
('f9d05c02-de16-43d7-be4e-2f286ab63024','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 19:59:40.000000'),
('fab56159-7e3f-4876-803f-691814c772f2','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 23:01:10.261386'),
('fab5ec4b-db19-47d8-9861-b48fa60736de','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.WarehouseController.findAll','仓库管理','2024-11-22 12:17:08.000000'),
('fbc8db0e-bd3d-4b6a-98d0-49bf3bfabfcc','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:17:06.000000'),
('fc36da88-b763-4699-8fb9-2c4634748fba','1483618794@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-23 23:28:43.609488'),
('fc72779a-2153-4c13-b187-82b852a8971e','2149754832@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:29:29.000000'),
('fc7ac9f4-c33c-46f4-b765-619eac9eedd1','3505408546@qq.com','查询','河北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 22:41:17.000000'),
('fc901fff-4bab-4995-ae73-7b3843b0446d','1483618794@qq.com','新增','湖北省宜昌市','com.example.api.controller.CommodityController.save','商品管理','2024-11-23 23:34:44.163128'),
('fd004a6e-af7b-4779-a876-f52ed372e70b','1483618794@qq.com','查询','湖北省','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-20 16:25:21.000000'),
('fd3bee79-2116-4c65-8d86-67e8345b22ed','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 12:36:55.000000'),
('fde4be0c-70f5-4859-80d0-c81c835b0dcb','1483618794@qq.com','查询','湖北省咸宁市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-21 16:32:11.000000'),
('fe6607d7-a0c3-4089-adbe-9ac3d2850a68','niuiyigeukjidauabi@qq.com','新增','湖北省宜昌市','com.example.api.controller.EmployeeController.save','员工管理','2024-11-22 12:15:35.000000'),
('fef19425-46f3-4601-a58d-f39803785edd','niuiyigeukjidauabi@qq.com','查询','湖北省宜昌市','com.example.api.controller.CommodityController.findAll','商品管理','2024-11-22 12:15:42.000000'),
('ff74a4bb-e5e4-46cc-83f2-a9ae832826c4','3505408546@qq.com','查询','河北省','com.example.api.controller.EmployeeController.findAll','员工管理','2024-11-20 22:42:24.000000'),
('ff91b4f0-df61-4113-8099-b7cb29705d0b','1483618794@qq.com','新增','湖北省宜昌市','com.example.api.controller.CommodityController.save','商品管理','2024-12-04 15:08:38.607455');
/*!40000 ALTER TABLE `system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `driving` bit(1) NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES
('0c199f7d-3900-4a79-ac7e-9659a2262c61','2024-12-07 14:02:01','\0','京A0000','卡车'),
('aad2e6d8-3a27-42e0-8823-65e639b5d636','2024-12-11 22:25:34','\0','鄂A0000','卡车'),
('ebcee56f-3838-4f21-9783-0d587cb495a3','2024-12-07 14:01:55','\0','京A0000','货车');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `principle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES
('1c71da40-877d-4743-92a1-ccd3f900be57','2024-12-11 22:27:16','梦华录','雪月'),
('4ce03c2d-1745-40a2-af28-fe10994dad8d','2024-11-17 16:02:01','智慧超市','梦生'),
('cfca7ed3-d000-4e6f-9408-4c90b64f122d','2024-11-23 11:20:22','梦华录','雨月');
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

-- Dump completed on 2024-12-12 10:00:15
