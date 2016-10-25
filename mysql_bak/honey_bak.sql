-- MySQL dump 10.13  Distrib 5.7.12, for osx10.11 (x86_64)
--
-- Host: localhost    Database: honey
-- ------------------------------------------------------
-- Server version	5.7.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `honey_article`
--

DROP TABLE IF EXISTS `honey_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `honey_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `up` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `honey_article`
--

LOCK TABLES `honey_article` WRITE;
/*!40000 ALTER TABLE `honey_article` DISABLE KEYS */;
INSERT INTO `honey_article` VALUES (8,1,1,NULL,'《北京折叠》读书笔记','2016-10-25 17:01:24'),(9,1,2,NULL,'人工智能','2016-10-25 17:01:57'),(10,1,3,NULL,'清华计算机全球排名','2016-10-25 17:02:56');
/*!40000 ALTER TABLE `honey_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `honey_article_main`
--

DROP TABLE IF EXISTS `honey_article_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `honey_article_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `ua` varchar(128) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `body` varchar(8192) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `honey_article_main`
--

LOCK TABLES `honey_article_main` WRITE;
/*!40000 ALTER TABLE `honey_article_main` DISABLE KEYS */;
INSERT INTO `honey_article_main` VALUES (1,8,'Mac OS X','2016-10-25 17:01:24','hello world!'),(2,9,'Mac OS X','2016-10-25 17:01:57','有多少人工，就有多少智能！'),(3,10,'Mac OS X','2016-10-25 17:02:56','2017 us news 排名世界第二，从此我再也不相信us news给出的排名了！');
/*!40000 ALTER TABLE `honey_article_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `honey_member`
--

DROP TABLE IF EXISTS `honey_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `honey_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nikename` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `head_img` varchar(128) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `honey_member`
--

LOCK TABLES `honey_member` WRITE;
/*!40000 ALTER TABLE `honey_member` DISABLE KEYS */;
INSERT INTO `honey_member` VALUES (1,'huasong','694492007@qq.com','02036692003421A46C26AF077076B35A','http://cn.gravatar.com/avatar/47e23bc9811b23d7f109f05c2bb1eeed','2016-10-25 16:05:24','2016-10-25 16:05:24'),(2,'brother_song','66666@qq.com','02036692003421A46C26AF077076B35A','http://cn.gravatar.com/avatar/9b0dcf5a98f65acf6b763c4da5a843fe','2016-10-25 16:57:57','2016-10-25 16:57:57');
/*!40000 ALTER TABLE `honey_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `honey_reply`
--

DROP TABLE IF EXISTS `honey_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `honey_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `msg` varchar(1024) DEFAULT NULL,
  `up` int(11) DEFAULT NULL,
  `ua` varchar(4096) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `honey_reply`
--

LOCK TABLES `honey_reply` WRITE;
/*!40000 ALTER TABLE `honey_reply` DISABLE KEYS */;
INSERT INTO `honey_reply` VALUES (1,10,1,'顶上去',NULL,'Mac OS X','2016-10-25 17:03:12');
/*!40000 ALTER TABLE `honey_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `honey_type`
--

DROP TABLE IF EXISTS `honey_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `honey_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `desc` varchar(128) DEFAULT NULL,
  `sname` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `honey_type`
--

LOCK TABLES `honey_type` WRITE;
/*!40000 ALTER TABLE `honey_type` DISABLE KEYS */;
INSERT INTO `honey_type` VALUES (1,'Books',NULL,'books'),(2,'AI',NULL,'AI'),(3,'computer science',NULL,'computer science'),(4,'吉他社',NULL,'吉他社');
/*!40000 ALTER TABLE `honey_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-25 17:22:59
