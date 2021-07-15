-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'amet','1987-12-04 01:01:19','2002-03-01 02:29:46'),(2,'nostrum','2017-02-24 08:29:23','2001-04-09 19:53:51'),(3,'velit','2006-07-17 01:39:56','1989-07-11 13:25:50'),(4,'qui','1989-04-26 15:07:33','2009-03-18 09:02:57'),(5,'nihil','1979-10-01 10:33:10','2021-03-28 04:09:08'),(6,'blanditiis','1993-12-16 23:15:15','1994-01-21 07:30:43'),(7,'hic','2008-09-21 10:15:39','2021-07-05 17:07:51'),(8,'est','1987-09-09 22:04:36','2009-03-04 10:43:17'),(9,'sed','1995-12-08 22:42:26','2012-08-17 17:44:40'),(10,'esse','1980-02-15 22:30:51','2011-09-10 20:28:02'),(11,'dolores','1994-11-24 17:08:21','2007-07-04 11:00:27'),(12,'similique','2006-06-09 23:51:09','2014-04-01 14:09:58'),(13,'fugiat','2005-12-12 00:42:12','1973-03-13 05:45:48'),(14,'exercitationem','1990-01-25 02:29:27','1972-01-17 18:41:28'),(15,'voluptas','1981-06-11 06:26:27','1980-02-12 09:23:11'),(16,'animi','1971-09-24 05:00:50','2004-05-05 23:21:45'),(17,'dolorem','1992-10-26 15:41:01','1997-07-05 18:13:03'),(18,'porro','1974-02-21 18:53:04','1983-10-01 06:34:53'),(19,'facilis','1992-12-30 19:46:39','1989-04-22 01:36:09'),(20,'ut','2005-04-11 22:38:37','1970-03-11 22:11:24');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ',
  KEY `fk_cu_user_id` (`user_id`),
  CONSTRAINT `fk_cu_community_id` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `fk_cu_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_users`
--

LOCK TABLES `communities_users` WRITE;
/*!40000 ALTER TABLE `communities_users` DISABLE KEYS */;
INSERT INTO `communities_users` VALUES (2,1,'2003-04-14 13:57:52'),(2,2,'1981-12-09 19:16:48'),(3,1,'1999-09-23 16:11:32'),(4,2,'1978-08-07 07:44:43'),(4,4,'2020-09-03 11:52:38'),(5,6,'1993-10-02 21:32:19'),(5,8,'1996-03-19 10:53:51'),(6,6,'1994-09-17 05:05:50'),(6,7,'1980-03-27 13:57:00'),(6,9,'1995-11-20 11:17:18'),(7,3,'1972-03-30 16:37:46'),(8,2,'1982-11-20 00:57:53'),(8,6,'2008-07-26 04:19:56'),(8,9,'2020-03-14 09:03:56'),(9,8,'2005-07-12 10:52:40');
/*!40000 ALTER TABLE `communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_types`
--

DROP TABLE IF EXISTS `entity_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_types` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя сущности',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Справочная таблица с перечнем сущностей, которым можно поставить лайк';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_types`
--

LOCK TABLES `entity_types` WRITE;
/*!40000 ALTER TABLE `entity_types` DISABLE KEYS */;
INSERT INTO `entity_types` VALUES ('media'),('posts'),('users');
/*!40000 ALTER TABLE `entity_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status` enum('FRIENDSHIP','FOLLOWING','BLOCKED') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Cтатус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ',
  KEY `fk_friendship_friend_id` (`friend_id`),
  CONSTRAINT `fk_friendship_friend_id` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friendship_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (1,2,'FOLLOWING','1977-03-02 20:25:23','2014-11-28 14:28:14','1994-07-22 18:52:45','2021-07-15 10:55:01'),(1,3,'FRIENDSHIP','1990-11-23 21:19:56','1998-06-01 09:08:36','1995-08-17 02:28:04','2021-07-15 10:55:01'),(1,4,'BLOCKED','2004-10-10 22:50:33','2015-04-11 13:24:01','1977-10-28 00:19:25','2021-07-15 10:55:01'),(1,5,'FOLLOWING','2001-06-16 06:50:26','1974-02-04 06:15:05','1985-09-17 18:45:01','2021-07-15 10:55:01'),(1,6,'FOLLOWING','1987-02-19 14:18:22','2000-07-02 01:33:20','1982-03-18 10:57:53','2021-07-15 10:55:01'),(1,7,'FRIENDSHIP','2000-05-05 06:44:51','1977-06-18 20:49:12','1972-06-18 18:18:53','2021-07-15 13:14:33'),(1,8,'FRIENDSHIP','2012-11-14 08:26:39','1995-11-11 06:27:33','1989-01-30 17:24:08','2021-07-15 10:55:01'),(1,10,'FRIENDSHIP','1995-06-22 19:40:59','1979-11-06 00:03:08','1971-10-30 21:15:22','2021-07-15 10:55:48'),(4,5,'FRIENDSHIP','1990-02-17 11:34:19','1985-12-15 05:50:15','2018-10-05 11:12:14','1973-07-27 22:28:45'),(4,6,'FOLLOWING','1980-04-06 11:43:03','2017-09-04 03:22:47','1970-04-27 09:14:35','1975-01-15 11:01:07'),(5,5,'FOLLOWING','1975-02-08 19:24:00','1979-12-08 08:12:43','1999-11-27 10:36:59','2019-04-24 01:49:11'),(6,8,'BLOCKED','2011-04-07 12:51:15','1976-11-13 22:10:45','1977-09-10 13:53:00','1998-01-17 01:33:24'),(7,8,'FOLLOWING','2009-07-09 20:17:22','2007-08-11 11:36:49','2000-02-08 22:29:14','2018-07-31 07:48:47'),(8,3,'FOLLOWING','1993-02-10 18:31:11','1998-11-11 05:51:52','2005-09-28 06:00:23','2011-12-12 05:26:11'),(8,5,'FRIENDSHIP','2008-09-15 07:05:09','1992-07-31 23:28:53','1984-12-31 21:26:35','2006-04-09 09:39:34'),(9,1,'FRIENDSHIP','1997-10-22 20:03:32','1991-01-19 01:23:38','1971-01-22 10:21:18','2021-07-15 13:37:57');
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя лайкнувшего пост',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на другую сущность',
  `entity_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ссылка на медиа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `fk_likes_entity_name` (`entity_name`),
  CONSTRAINT `fk_likes_entity_name` FOREIGN KEY (`entity_name`) REFERENCES `entity_types` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица лайков';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (103,3,2,'users','2021-07-15 14:40:43','2021-07-15 14:40:43'),(104,2,3,'users','2021-07-15 14:40:44','2021-07-15 14:40:44'),(105,8,10,'users','2021-07-15 14:41:03','2021-07-15 14:41:03'),(106,6,1,'users','2021-07-15 14:41:03','2021-07-15 14:41:03'),(107,6,7,'users','2021-07-15 14:41:03','2021-07-15 14:41:03'),(108,7,1,'users','2021-07-15 14:41:04','2021-07-15 14:41:04'),(109,5,6,'users','2021-07-15 14:42:16','2021-07-15 14:42:16'),(111,8,5,'users','2021-07-15 14:42:18','2021-07-15 14:42:18'),(112,2,5,'users','2021-07-15 14:42:18','2021-07-15 14:42:18'),(113,9,8,'users','2021-07-15 14:42:18','2021-07-15 14:42:18'),(114,2,7,'users','2021-07-15 14:42:19','2021-07-15 14:42:19'),(115,10,5,'users','2021-07-15 14:45:08','2021-07-15 14:45:08'),(117,6,7,'users','2021-07-15 14:45:10','2021-07-15 14:45:10'),(118,7,2,'users','2021-07-15 14:45:10','2021-07-15 14:45:10'),(119,8,2,'users','2021-07-15 14:45:10','2021-07-15 14:45:10'),(129,2,7,'media','2021-07-15 15:20:22','2021-07-15 15:20:22'),(130,1,55,'media','2021-07-15 15:20:23','2021-07-15 15:20:23'),(131,6,42,'media','2021-07-15 15:20:24','2021-07-15 15:20:24'),(132,1,11,'media','2021-07-15 15:20:24','2021-07-15 15:20:24'),(133,8,5,'media','2021-07-15 15:20:30','2021-07-15 15:20:30'),(134,3,55,'media','2021-07-15 15:20:30','2021-07-15 15:20:30'),(135,10,4,'media','2021-07-15 15:20:31','2021-07-15 15:20:31'),(136,4,38,'media','2021-07-15 15:20:31','2021-07-15 15:20:31'),(137,2,246,'posts','2021-07-15 15:20:43','2021-07-15 15:20:43'),(138,1,166,'posts','2021-07-15 15:20:43','2021-07-15 15:20:43'),(139,8,195,'posts','2021-07-15 15:20:43','2021-07-15 15:20:43'),(140,5,182,'posts','2021-07-15 15:20:44','2021-07-15 15:20:44'),(141,1,162,'posts','2021-07-15 15:20:44','2021-07-15 15:20:44'),(142,8,217,'posts','2021-07-15 15:20:44','2021-07-15 15:20:44'),(143,2,149,'posts','2021-07-15 15:20:45','2021-07-15 15:20:45');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `link` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ссылка на файл',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  `metadata` json DEFAULT NULL,
  `media_type` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_media_type_id` (`media_type`),
  CONSTRAINT `fk_media_type_id` FOREIGN KEY (`media_type`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'http://krajcik.com/6fbc263cd9.avi','1971-06-25 10:51:29','2021-07-15 10:36:04','{\"name\": \"6fbc263cd9\", \"size\": \"296356KB\", \"extention\": \"avi\"}',0),(7,'http://www.kutch.info/472e162a47.avi','2006-03-04 12:19:59','2021-07-15 10:36:04','{\"name\": \"472e162a47\", \"size\": \"476527KB\", \"extention\": \"avi\"}',0),(16,'http://www.marks.biz/3ad9ad4001.wav','1983-06-02 09:56:44','2021-07-15 10:36:04','{\"name\": \"3ad9ad4001\", \"size\": \"386815KB\", \"extention\": \"wav\"}',0),(21,'http://www.ledner.net/db490ddd1d.wav','1983-01-26 04:40:55','2021-07-15 10:36:04','{\"name\": \"db490ddd1d\", \"size\": \"60753KB\", \"extention\": \"wav\"}',0),(24,'http://www.larkinmarks.biz/0376a9fe78.png','2015-11-28 06:28:50','2021-07-15 10:36:04','{\"name\": \"0376a9fe78\", \"size\": \"672966KB\", \"extention\": \"png\"}',0),(29,'http://parisian.biz/7bddf6c9eb.png','1983-02-25 21:36:16','2021-07-15 10:36:04','{\"name\": \"7bddf6c9eb\", \"size\": \"239593KB\", \"extention\": \"png\"}',0),(34,'http://larkin.com/7218553f37.gif','1986-08-21 00:31:46','2021-07-15 10:36:04','{\"name\": \"7218553f37\", \"size\": \"495578KB\", \"extention\": \"gif\"}',0),(35,'http://www.lynch.com/22c3d51d88.gif','2000-06-18 18:12:58','2021-07-15 10:36:04','{\"name\": \"22c3d51d88\", \"size\": \"259653KB\", \"extention\": \"gif\"}',0),(36,'http://franecki.info/cbefdbc45d.avi','2017-03-10 03:52:09','2021-07-15 10:36:04','{\"name\": \"cbefdbc45d\", \"size\": \"473205KB\", \"extention\": \"avi\"}',0),(37,'http://www.larkin.org/181f597c4d.avi','1988-05-28 04:09:23','2021-07-15 10:36:04','{\"name\": \"181f597c4d\", \"size\": \"654027KB\", \"extention\": \"avi\"}',0),(38,'http://www.lockman.biz/7ce307df0e.avi','2020-07-15 16:44:21','2021-07-15 10:36:04','{\"name\": \"7ce307df0e\", \"size\": \"167669KB\", \"extention\": \"avi\"}',0),(39,'http://williamson.net/fa2eb17da2.wav','1994-05-02 06:06:07','2021-07-15 10:36:04','{\"name\": \"fa2eb17da2\", \"size\": \"299483KB\", \"extention\": \"wav\"}',0),(43,'http://www.labadie.com/226ba22244.png','2020-06-19 19:44:03','2021-07-15 10:36:04','{\"name\": \"226ba22244\", \"size\": \"181157KB\", \"extention\": \"png\"}',0),(44,'http://my-server/dir/9ecde8f1ca.avi','2021-07-15 10:24:16','2021-07-15 10:36:04','{\"name\": \"9ecde8f1ca\", \"size\": \"746647KB\", \"extention\": \"avi\"}',0),(45,'http://my-server/dir/8e1a764fed.avi','2021-07-15 10:26:33','2021-07-15 10:36:04','{\"name\": \"8e1a764fed\", \"size\": \"555876KB\", \"extention\": \"avi\"}',0),(46,'http://my-server/dir/d61c054eda.png','2021-07-15 10:26:35','2021-07-15 10:36:04','{\"name\": \"d61c054eda\", \"size\": \"841821KB\", \"extention\": \"png\"}',0),(47,'http://my-server/dir/0289484669.gif','2021-07-15 10:26:36','2021-07-15 10:36:04','{\"name\": \"0289484669\", \"size\": \"991719KB\", \"extention\": \"gif\"}',0),(48,'http://my-server/dir/916ca8c8b6.png','2021-07-15 10:26:37','2021-07-15 10:36:04','{\"name\": \"916ca8c8b6\", \"size\": \"266274KB\", \"extention\": \"png\"}',0),(49,'http://my-server/dir/9a0d106688.avi','2021-07-15 10:26:37','2021-07-15 10:36:04','{\"name\": \"9a0d106688\", \"size\": \"133741KB\", \"extention\": \"avi\"}',0),(50,'http://my-server/dir/b005636b17.avi','2021-07-15 10:26:38','2021-07-15 10:36:04','{\"name\": \"b005636b17\", \"size\": \"144615KB\", \"extention\": \"avi\"}',0),(51,'http://my-server/dir/5cdea3a4f2.avi','2021-07-15 10:26:38','2021-07-15 10:36:04','{\"name\": \"5cdea3a4f2\", \"size\": \"544030KB\", \"extention\": \"avi\"}',0),(52,'http://my-server/dir/48c5c12f1a.wav','2021-07-15 10:26:39','2021-07-15 10:36:04','{\"name\": \"48c5c12f1a\", \"size\": \"35043KB\", \"extention\": \"wav\"}',0),(53,'http://my-server/dir/a2c041a200.avi','2021-07-15 10:26:39','2021-07-15 10:36:04','{\"name\": \"a2c041a200\", \"size\": \"769555KB\", \"extention\": \"avi\"}',0),(54,'http://my-server/dir/a515e20c78.avi','2021-07-15 10:26:40','2021-07-15 10:36:04','{\"name\": \"a515e20c78\", \"size\": \"306162KB\", \"extention\": \"avi\"}',0),(55,'http://my-server/dir/f278542bc0.gif','2021-07-15 10:26:40','2021-07-15 10:36:04','{\"name\": \"f278542bc0\", \"size\": \"891086KB\", \"extention\": \"gif\"}',0),(56,'http://my-server/dir/31f6564f64.png','2021-07-15 10:26:41','2021-07-15 10:36:04','{\"name\": \"31f6564f64\", \"size\": \"175180KB\", \"extention\": \"png\"}',0),(57,'http://my-server/dir/8b5939c3b0.wav','2021-07-15 10:26:41','2021-07-15 10:36:04','{\"name\": \"8b5939c3b0\", \"size\": \"308646KB\", \"extention\": \"wav\"}',0),(58,'http://my-server/dir/5dc6b01872.png','2021-07-15 10:26:42','2021-07-15 10:36:04','{\"name\": \"5dc6b01872\", \"size\": \"287664KB\", \"extention\": \"png\"}',0);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'VIDEO'),(2,'AUDIO'),(3,'IMAGE'),(4,'GIF');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `message_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Заголовок сообщения',
  `message_body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_delivered` tinyint(1) NOT NULL COMMENT 'Признак доставки',
  `was_edited` tinyint(1) NOT NULL COMMENT 'Признак правки заголовка или тела сообщения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `fk_messages_from_user_id` (`from_user_id`),
  KEY `fk_messages_to_user_id` (`to_user_id`),
  CONSTRAINT `fk_messages_from_user_id` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_messages_to_user_id` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица сообщений пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,10,1,'Ut dignissimos minus et. Accusantium cum et dolorem cum minima ut. Architecto facilis molestiae dolorem in occaecati. Sunt ipsam provident deserunt ut est non et.','Odit porro ut et qui voluptatem voluptatum nulla reiciendis. Est laborum nihil quia et sit sunt. Debitis architecto molestias temporibus totam sed nulla debitis.',1,0,'1972-01-21 05:46:37','2021-07-15 11:03:45'),(2,8,1,'Quidem quo exercitationem placeat non aperiam. Cumque natus eius molestias et tempora. Nihil numquam ea libero molestiae sint. Ad magni repellendus minus ducimus consequatur soluta odit quia.','Rem hic perferendis et ut culpa. Sit dolore nulla perferendis cumque. Nesciunt doloremque omnis harum amet sequi. Voluptas expedita minus incidunt vel ipsa.',0,0,'1999-05-28 18:47:57','2021-07-15 11:03:45'),(4,10,1,'Ut rem dignissimos voluptatem velit. Officia enim placeat velit nostrum nesciunt nesciunt. Occaecati vel aut dignissimos. Earum in alias quidem consequatur.','Accusantium aliquam incidunt nihil ut expedita aut. Dolor sunt cupiditate excepturi aut. Provident perspiciatis perspiciatis omnis temporibus et. Reiciendis tempore commodi reprehenderit.',0,0,'1991-10-27 08:44:10','2021-07-15 13:33:32'),(5,8,1,'Optio sit qui fugit quis et. Pariatur qui est deleniti et.','Libero voluptas omnis dolores nulla. Facilis et laborum distinctio. Placeat et aut atque voluptas.',0,0,'1997-10-07 21:42:36','2021-07-15 13:33:32'),(7,8,1,'Non architecto minima harum ratione. Vel ullam et dignissimos sunt itaque molestias. Ut nisi qui fuga iusto hic at nulla. Eum qui praesentium explicabo dolorem enim.','Tempora in quidem ipsum sit quasi eius. Officia facere sit ut excepturi. Qui odit ad vel nihil neque.',0,0,'1972-10-24 23:13:14','2021-07-15 13:33:32'),(8,3,1,'Nobis velit quaerat tempora occaecati qui necessitatibus. Amet eaque est hic aliquid velit nihil laudantium. Qui in eos cum impedit sit omnis quo.','Quo aspernatur nesciunt corporis debitis quas delectus. Iste dolor et autem nihil. Doloribus architecto libero a voluptatibus earum.',1,0,'1989-07-23 06:41:39','2021-07-15 13:33:32'),(9,3,1,'Nulla quidem inventore repellat architecto aspernatur eos quia. Aut est minima et. Dolorum repellendus praesentium laboriosam sit rerum eos. Aut blanditiis suscipit ut corporis vel non.','Voluptatem et possimus aliquam molestiae nisi officia doloribus. Dolor odio doloremque unde sint distinctio.',0,0,'1977-05-05 18:57:21','2021-07-15 13:33:32'),(10,7,1,'Iste ea repudiandae mollitia assumenda quos blanditiis. Eum at culpa qui ut placeat maiores nam. Quia expedita ut ea consequatur consectetur et. Optio cupiditate maiores molestiae maxime voluptatem provident voluptate explicabo. Nemo molestiae sit in a si','Pariatur rerum ratione ut. Accusamus nobis est odit illo aut molestiae qui labore. Natus recusandae et enim sint.',1,0,'1982-11-10 15:22:54','2021-07-15 13:33:32'),(13,8,1,'Accusantium rerum at ut qui sapiente nobis. Error a sequi eos earum sapiente. Neque fugit voluptatem ut nulla ut velit quia. Omnis dolorum dolore fuga tempore ipsam. Velit quo dolores repellat eum non dolorem temporibus consequatur.','Quae eos quos recusandae atque. Sequi provident nobis non exercitationem nobis earum qui. Iusto voluptatum numquam sint ipsum.',0,0,'2005-09-06 00:29:00','2021-07-15 13:33:32'),(14,8,1,'Dolorum voluptatem nihil consequatur nihil sunt qui minus. Ut pariatur non beatae id a quaerat vel. Aperiam qui quo porro quod est atque tempore.','Est sit dolor non est. Sit quos quod non corporis hic aut. Et et et tempore magnam. Labore nostrum iusto molestiae voluptates hic.',1,0,'2009-02-28 00:58:01','2021-07-15 13:33:32'),(15,3,6,'Eos repellat quam impedit debitis. Odio ipsam rerum sequi veniam. Doloremque possimus distinctio exercitationem hic.','Culpa beatae soluta sint est ipsa omnis eligendi. Dignissimos neque ut et suscipit ipsam. Eum et at optio ea quia. Qui in tenetur ex sit.',1,0,'1990-02-19 17:33:56','2017-10-20 10:44:08'),(16,7,3,'Et fugit tempore repellendus tempora labore asperiores. Repellendus dolor nesciunt expedita hic odio provident.','Et blanditiis facere est. Tenetur nemo sed deserunt incidunt qui quidem sint. Repudiandae quas dolores explicabo voluptas est nobis autem. Reiciendis sunt corporis reiciendis fuga.',1,0,'2016-05-17 11:18:26','1977-11-04 01:29:54'),(17,8,5,'Hic dolores aut adipisci distinctio. Sunt sed reprehenderit autem velit dignissimos qui. Nesciunt et aspernatur iste sed harum.','Rerum placeat non error placeat aperiam sint. Quasi dolor voluptatem facere repellat incidunt quia perferendis.',0,0,'2002-07-17 01:11:20','1976-12-07 09:37:16'),(18,3,2,'Aut quo explicabo sed soluta. Saepe ipsum dolorum voluptatem perspiciatis fugit eaque enim maxime. Provident velit animi error recusandae ut iusto quod.','Qui aliquam corporis voluptatum rerum facilis odio. Ea officia est distinctio neque placeat porro. Rerum maxime voluptates ullam saepe velit dolorum. Perspiciatis error sequi labore distinctio ut corrupti. Dolores dolorem tempore voluptatem placeat.',1,0,'2003-07-16 07:49:00','2007-09-12 05:30:46'),(21,4,2,'Laudantium vel quis doloribus molestiae ducimus ea at. Asperiores omnis consequatur quo alias officiis ad. Sunt eos facere nesciunt nesciunt facere. Ex sit voluptatem repellat sunt neque beatae. Atque eum et rerum molestiae et excepturi.','Possimus libero non suscipit aliquid expedita fuga facere. Nisi cupiditate omnis labore et et sit reiciendis labore.',1,0,'2003-04-01 18:27:17','2019-12-09 10:31:08'),(22,3,9,'Corporis quibusdam esse est et. Aut sapiente commodi vel aut quo. Suscipit quo ut totam amet est repellat sed.','Nostrum est sit omnis ipsam qui hic tenetur. Nihil sequi autem enim quam qui. Accusantium quia amet delectus aperiam qui ut possimus accusamus. Inventore iure voluptatem atque quam ex eum.',0,0,'1973-05-29 02:16:59','1970-01-30 13:46:16'),(24,7,1,'Amet omnis sed deleniti dolor dicta velit. Ducimus qui autem facilis architecto. Ratione rem error aut minus cumque omnis laborum. Laboriosam est eos et perspiciatis quis dolorum.','Expedita facilis aut accusamus. Eaque nulla facilis nesciunt et error velit quia.',0,0,'2017-10-19 04:01:00','2021-07-15 13:33:32'),(25,2,1,'Quis autem quis quae nobis adipisci reiciendis. Similique autem aliquam nesciunt quia. Eum sit voluptas et iusto vel autem natus et. Dolor iste nemo rerum quisquam in.','Ratione ratione in ut at rem voluptatem voluptatum. Accusantium et tenetur aperiam expedita est quod voluptatem. Ratione rerum voluptatem tenetur consequatur sapiente rem.',1,0,'1977-06-29 00:18:47','2021-07-15 13:57:01'),(26,9,5,'Molestiae et a distinctio fugiat. Est ut sed atque at vitae. Consectetur molestias possimus est minima. Sunt dolor nulla ipsum eum.','Nostrum debitis ducimus et ratione voluptas adipisci sed ut. Odit dolor mollitia recusandae repudiandae quaerat facere.',0,0,'1974-03-05 12:26:21','1999-09-27 03:57:00'),(27,3,2,'Explicabo nobis deserunt delectus doloremque rerum aut. Aut sequi omnis autem autem eius consequuntur repellat. Et nemo molestiae voluptatibus quia occaecati reiciendis.','Ratione error dolorem quae et esse. Atque aut quod minus dolorem. Officiis nobis aut amet tenetur sit sed.',0,0,'1984-08-10 13:24:58','1980-11-24 19:10:07'),(28,7,4,'Nihil autem eaque quis id exercitationem delectus sint ut. Qui dolor sint quis illo distinctio aut aliquid delectus.','Blanditiis et enim quia rerum autem molestiae. Voluptas laborum rem est qui et officiis eligendi. Labore quas quod quia est. Voluptates blanditiis ut natus dolorum veniam velit.',0,0,'1985-03-28 04:13:02','2012-10-17 00:14:29'),(29,3,6,'Quia atque molestias repudiandae tempore temporibus id quaerat. Dolore est dolore corrupti velit quae voluptas ea pariatur. Esse qui dolore soluta fugiat maiores ratione. Dolores explicabo vel illo consequuntur.','Occaecati dolor deleniti iusto dignissimos atque aut voluptas veniam. Aliquid in dolor expedita qui doloremque nostrum. Qui qui sed dolorum eius et magni.',1,0,'1971-10-29 23:01:39','1972-04-14 12:28:47'),(30,6,6,'Quidem reprehenderit aut ut. Blanditiis officia magni et dolorem esse animi reprehenderit. Aperiam dolor earum assumenda ducimus blanditiis et veniam. Quod repudiandae iure quae quas omnis.','Velit suscipit natus nisi soluta veniam. Officia molestias quia dolore quisquam. Aut autem quo veniam fugit est.',1,0,'1970-06-02 10:41:05','1995-04-30 05:35:09'),(32,2,1,'Modi eum et laboriosam magnam illo blanditiis sed voluptas. Culpa consectetur ut molestiae debitis possimus pariatur est.','Amet atque voluptas quam voluptatum et. Rerum molestiae consequatur ea dolorem consequatur minima. Omnis eveniet magni laboriosam iste dolorum rem nostrum. Ea possimus autem sed.',0,0,'1992-05-02 20:14:25','2021-07-15 13:56:59'),(34,5,2,'Adipisci tempore eaque pariatur dolorem est molestiae ipsum. Ut consequuntur porro et voluptas porro. Sed voluptatum illo nulla.','Nam nisi facilis consequatur animi blanditiis vel. Quod tempora aut dicta minima et sunt provident adipisci.',1,0,'1982-04-23 15:48:20','1997-04-06 21:53:01'),(35,4,3,'Ut adipisci est ipsam. Laborum harum ea et.','Sit modi incidunt aut perferendis quis veniam. Possimus aut iste vel veniam. Tempore illum libero sint voluptatibus numquam nihil.',1,0,'2020-06-02 12:18:02','1993-01-14 12:56:10'),(36,8,3,'Reiciendis distinctio delectus et nihil et omnis. Sint cumque atque accusantium cupiditate quod aut quia ad. Saepe voluptatem rerum eum beatae nesciunt et iste incidunt. Sit debitis voluptas aut dolorum harum.','Voluptas fuga quod ad voluptatem ea. Rem quo repellendus ipsa. Neque facilis culpa quod ipsum magni qui corrupti.',1,0,'1974-09-17 00:20:47','1991-04-25 09:54:25'),(37,8,1,'Eius et ipsa iure sint. Ad dolore nihil debitis sit tempore. Vero ducimus nihil temporibus laudantium facilis dolores ut aliquam. Et voluptatem exercitationem rem.','Corporis dolore consequatur vel qui corporis quis. Ut corrupti nostrum fuga veritatis. Explicabo voluptas officia facilis quaerat ratione perferendis.',0,0,'2014-10-13 22:39:07','2021-07-15 13:33:32'),(38,7,1,'Et facere cumque perferendis. Eos ullam laboriosam quaerat. Maiores velit animi corporis cumque.','Voluptatem fuga repellendus alias aut qui facilis maiores. Ut aut quasi omnis maiores doloribus dolores. Aspernatur nostrum odit nostrum eveniet recusandae sed architecto laboriosam. Et quod cum aliquam.',0,0,'2017-09-13 17:10:11','2021-07-15 13:33:32'),(39,4,4,'Qui nisi harum exercitationem. Natus quisquam aut officia blanditiis qui. Eaque porro qui eos. Quas fuga sed eligendi libero expedita qui. Maxime non quia ut ut quae cupiditate.','Nulla quae illum unde error aut. Eligendi laborum ut ut natus. Ea sed sed aperiam et dolores blanditiis. Sed expedita non ipsum voluptas sequi maxime.',1,0,'2009-12-08 21:05:16','1988-12-01 01:38:30'),(40,4,7,'Suscipit in iure consequuntur dolores vel. Ut molestiae omnis commodi.','Atque necessitatibus quo rerum harum laborum debitis ut. Qui reprehenderit maiores tempora et. Neque magni vel illo voluptas. Quia eligendi asperiores possimus.',0,0,'2004-11-30 05:38:15','2015-04-20 03:33:57'),(41,3,3,'Ut aut est dolorum et. Ab ullam quasi aut. Non commodi iusto quis aliquam totam. Porro perspiciatis rerum culpa aliquid molestiae fugit officiis.','Eligendi et ratione est saepe. Voluptatem nemo aut molestiae atque consequuntur porro. Nemo minima voluptates et magnam et ut provident ipsa. Exercitationem laudantium ut consequuntur perferendis.',1,0,'1990-08-29 16:53:53','1991-10-21 04:48:16'),(43,6,4,'Voluptatem aliquid voluptas accusamus vero repellat aut accusamus. Quia impedit dolor velit molestiae doloremque et. Iusto totam deleniti voluptates voluptas. Est sapiente enim pariatur id veniam eos.','Occaecati ut magnam numquam ea et. Quibusdam architecto molestiae asperiores omnis ab veritatis. Culpa veritatis qui sunt debitis ut similique.',1,0,'1976-12-18 06:21:40','1977-02-19 18:10:55'),(45,5,9,'Odit doloribus vel soluta aperiam necessitatibus quasi. Incidunt ipsam velit autem eum. Minima numquam ipsam repellat veniam quae nisi. Accusamus id earum et mollitia.','Rerum nihil numquam incidunt sapiente neque. Dolores molestias qui consectetur aspernatur aut neque. Iste consequatur modi a ea alias.',0,0,'2014-04-12 17:18:42','1981-10-22 22:20:23'),(46,9,5,'Accusamus omnis velit voluptatem consequatur neque ad. Quae quia nesciunt fugiat magnam asperiores eveniet officia. Molestias provident sit dolor. Autem voluptate dolor alias illum quis.','Dolor commodi deleniti est voluptas. Incidunt qui commodi doloribus. Ad quas culpa unde temporibus.',1,0,'2020-07-31 02:17:23','2016-08-03 14:38:06'),(47,1,8,'Cumque quo quidem rem odio vero aut ipsam. Odit veritatis sed rerum quia aut consequatur. Et beatae sequi eius nihil numquam earum.','Sit id quod dolorem qui nemo. Eaque rerum omnis omnis quidem est natus. Non reprehenderit iste adipisci quo laborum et ut. Culpa et perferendis dignissimos ipsa minima.',1,0,'1973-12-28 06:18:55','1989-10-15 18:10:58'),(48,4,8,'Tempore error adipisci vel maxime facilis. Tempore consequatur similique voluptatem repudiandae facilis nobis consequatur eos. Qui saepe quaerat non fugiat iusto et.','Accusantium aut molestiae nostrum et. Qui ut at dolores quam exercitationem et. Quibusdam numquam dolor autem repudiandae accusantium. Et error architecto nulla consequatur.',1,0,'1970-03-07 13:57:13','1975-01-18 23:32:20'),(49,6,4,'Odit aut consequatur possimus minima corrupti molestiae. Molestias nobis officiis quasi. Nihil beatae et sit et. Quia eos perspiciatis nam voluptate id voluptas doloremque.','Nobis aperiam voluptatem quam. Molestias ab voluptatibus cupiditate veniam in ex eum. Hic deserunt est et facilis et illum quis vel.',1,0,'1987-01-28 06:50:42','1995-07-24 23:39:02'),(50,3,5,'Non rerum qui aut quos qui voluptatibus aut rem. Laboriosam culpa sed voluptas unde nulla est. Quae commodi consequatur commodi minima illo rerum quos. Excepturi consequuntur id porro molestias perspiciatis accusamus ducimus.','Optio quidem sint laudantium ipsa nobis qui sapiente. Est et est alias rerum eligendi. Illo qui aut alias vero est quasi quisquam. Voluptatem quaerat eaque voluptatem in sed.',0,0,'1979-08-25 02:16:48','1995-11-15 17:48:43'),(51,4,9,'Quia est dolor occaecati et reiciendis ea. Natus quas fugit voluptate delectus laborum molestias dignissimos. Aperiam velit deserunt sed non.','Perspiciatis repellat sit in est facere officiis placeat. Nihil et quia recusandae et ex dolorem. Placeat rerum quo incidunt.',0,0,'1973-09-02 16:40:30','1981-02-22 22:42:15'),(52,6,5,'Repellendus consequuntur voluptas qui sed. Maxime illo non a voluptatem. Iure rerum aliquam repellendus molestiae sit.','Voluptatum iusto accusamus repellendus qui dolorum eos natus. Doloremque alias eum reprehenderit atque accusantium dolores eaque. Sint quo reiciendis ut voluptatum quas. Doloremque ex tempore aut ut modi eaque qui dolor.',0,0,'2000-10-20 03:05:22','2019-04-29 11:20:29'),(53,1,2,'Illo aspernatur eveniet non qui ullam et. Qui sint molestiae recusandae nemo autem nihil dolore. Expedita sequi eum et voluptas totam. Et et officia veniam nesciunt commodi.','Consequatur architecto quod ut ad dicta. Sint architecto modi alias dolor sed vero eaque. Numquam quasi et voluptatem quas officia et possimus.',0,0,'1970-04-29 16:08:00','2000-07-30 09:58:00'),(54,8,9,'Dolor ut dignissimos ad inventore sit deleniti qui. Culpa beatae quae laboriosam aut.','Dolorem sapiente corporis non quia qui voluptatem alias ab. Ea repellat adipisci et provident quod eos.',1,0,'2020-07-11 07:25:07','2012-09-18 02:19:13'),(55,6,7,'Qui eligendi aspernatur quasi. Possimus aut voluptas ullam eos beatae consequatur quaerat. Debitis nam et ad sapiente debitis reprehenderit. Quia reprehenderit nihil nesciunt ipsam temporibus earum.','Quam aut assumenda consequatur a magnam. Ut fugit sunt et voluptatibus quo.',0,0,'2014-06-17 10:55:11','1986-09-26 00:13:07'),(56,1,8,'Suscipit ut aut iste cum facilis. Natus quis tempore nihil quaerat. Et officiis distinctio magnam libero. Eos eligendi delectus nam mollitia qui commodi.','Praesentium hic voluptatem eos totam provident. Nostrum enim laborum est iusto aut voluptates. Similique qui aspernatur labore aut. Inventore facilis dolorem dicta fugit molestias.',0,0,'2011-11-18 11:56:40','2004-05-12 14:19:04'),(58,8,4,'Fugiat in corrupti illum. Ut est ut officiis omnis ipsum laboriosam. Natus odit voluptas ea vero ex laudantium suscipit vitae.','Et saepe id est qui ea natus. Reiciendis voluptatem et id voluptatem eum rerum molestias. A deserunt velit exercitationem.',1,0,'2012-11-22 18:03:38','1991-06-14 02:40:51'),(59,7,1,'Cupiditate aliquam voluptas sit fugit sit labore autem. Excepturi dolores eligendi mollitia corporis et aliquid. Velit aut sit voluptatem eligendi sequi numquam.','Asperiores at quia minus deleniti cupiditate ab ipsum. Itaque expedita iure dicta quis repudiandae sed aut. Velit est quidem ut magnam est id.',1,0,'1996-04-22 08:14:18','2021-07-15 13:33:32'),(60,7,4,'Sit consequuntur aut laudantium voluptas minus. Ut voluptatem hic fugit ut enim. Natus sapiente praesentium pariatur corporis tempore.','Corporis quaerat qui provident veritatis illo enim. Beatae dolorem non iste ipsum vitae quia animi. Dicta qui illum recusandae atque culpa. Enim aspernatur velit nihil qui id ullam.',1,0,'1992-09-26 19:32:02','2016-06-24 02:41:39'),(61,2,8,'Minus consectetur maxime eos delectus nemo eveniet molestiae. Dolores eos magnam id. Ut exercitationem soluta occaecati quasi soluta eaque. Soluta non ipsam fugiat magni vel iusto.','Recusandae omnis qui nihil. Dolor ratione dolore repellat tenetur quidem beatae. Non beatae repellendus cum minima sit. Qui et voluptatem sed laboriosam.',1,0,'1992-07-01 08:35:18','2018-09-29 11:19:07'),(62,8,5,'Recusandae error ea autem ipsum. Provident fugit asperiores non facere. Sint et consequatur non nam porro eius.','Commodi odit in perspiciatis commodi incidunt ea. Voluptatibus qui aliquam mollitia nulla consectetur. Ea temporibus a rerum vel quas. Ea reiciendis a quis voluptatum.',0,0,'2008-06-08 19:00:02','1992-08-12 15:04:53'),(63,4,5,'A laborum incidunt autem placeat. Delectus autem possimus a. Nulla aut facere et officiis. Amet quas voluptates quasi.','Nemo rerum aut nam ut quidem assumenda. Omnis saepe id ipsum eius. Rerum mollitia voluptas voluptate maiores ut repudiandae temporibus voluptas.',1,0,'2008-02-14 02:13:04','1989-04-05 03:59:42'),(65,3,9,'Consequatur quas molestiae ea. Nulla quasi aspernatur animi et. Omnis expedita nihil ut vel laborum. Magnam sed nemo cupiditate recusandae cupiditate quis accusantium.','Quia nihil est quasi fugit dolores. Nemo quia nemo quasi est consequatur doloribus sequi veritatis. Ut odit possimus assumenda distinctio.',1,0,'2013-03-12 11:22:41','2020-10-15 02:48:30'),(67,10,1,'Nihil velit maxime porro a officia et eligendi rerum. Voluptate laboriosam qui minus sunt. Commodi blanditiis animi nostrum incidunt. Repudiandae commodi qui assumenda natus ullam pariatur.','Consequatur magnam consectetur deserunt deleniti. Voluptas aut ut repudiandae.',0,0,'2004-11-13 02:38:57','2021-07-15 13:33:32'),(68,8,2,'Rerum aperiam iure culpa sint et. Repudiandae itaque harum voluptas pariatur ut asperiores. Sunt ad dolores nihil adipisci architecto dolores temporibus ab. Non sunt quis consequuntur rerum at expedita et.','Eligendi cum quisquam tenetur quam vitae. Magni debitis maiores ut.',0,0,'1976-06-08 20:05:17','2012-08-13 19:20:42'),(69,8,2,'Rem molestiae ducimus dolor. Veritatis et est voluptates et nostrum. Tenetur autem ullam in sint suscipit eius quidem. Harum at iusto temporibus omnis.','Consequatur beatae esse quia molestiae. Praesentium quia odio eaque nisi quos debitis eum. Quod numquam velit modi. Aut quisquam magnam officia architecto repellat.',1,0,'1987-10-11 19:21:17','2016-11-08 05:44:01'),(71,4,2,'Aut aperiam fuga nisi quasi sequi rerum. Est ipsam cupiditate quia aut consequatur. Officiis corporis et distinctio vero aut autem.','In non voluptas placeat qui a dolores ducimus sed. Asperiores minus ea tempora qui dolorum similique consequatur magnam. In at cumque et culpa voluptas rerum. Nulla nulla modi excepturi saepe libero et.',0,0,'2021-05-05 16:58:54','1998-08-31 12:58:47'),(73,3,2,'Libero est sunt qui quo amet. Laboriosam animi saepe asperiores neque blanditiis voluptas error. Eos similique consectetur fuga.','Nihil in omnis cumque in nulla omnis animi. Magni voluptas rerum aliquam voluptatem et eum. Modi sint placeat voluptatem neque aut.',1,0,'1977-04-28 08:39:50','1991-10-07 14:37:21'),(74,5,7,'A sed voluptate nihil corporis sit architecto vel. Repellat debitis consequatur consequatur consequuntur. Necessitatibus debitis aut quia ut ex alias. Eaque illum et iure et ex eum.','Mollitia porro facilis ducimus libero. Consequatur impedit repudiandae fugiat eum. Quibusdam repellendus et aliquid voluptates a sed adipisci. Quia id quidem unde aspernatur tempore.',1,0,'2020-02-10 20:47:05','1995-06-23 15:55:23'),(75,1,2,'Dolores voluptatibus animi est sunt dolores ullam ea. Voluptas natus omnis vel consectetur est molestiae laborum. Perferendis magni corrupti fugit quae vitae.','Omnis qui nam eius quae voluptates velit. Ullam sunt ullam minus. Dolores voluptates veritatis deserunt ullam perspiciatis temporibus sed error. Ipsam est provident nobis.',1,0,'1996-12-19 08:03:33','1982-07-22 19:24:18'),(76,9,3,'Quam quidem culpa dolorem minima totam autem. Impedit ipsa aut enim sapiente natus neque. Deserunt autem minus sunt asperiores reprehenderit et dolorem. Voluptates labore accusamus dolorem est nisi officiis a.','Asperiores corrupti beatae eum dolore nostrum. Rem qui totam voluptates ea et natus ea. Cupiditate dolore quam eum molestiae ipsa magnam ea.',1,0,'1971-11-24 16:47:08','2006-04-13 15:48:02'),(77,9,2,'Quidem ipsum enim ut cupiditate repellendus et facilis. Ex numquam cum autem impedit sit id esse minima. Quia minima illo eum atque vel. Deleniti consectetur accusamus adipisci incidunt nisi quo.','Neque consequuntur consequatur laudantium suscipit nam voluptatem. Magnam dicta sint libero ab.',0,0,'2002-01-06 03:20:41','1988-11-18 11:35:03'),(78,2,8,'Enim quo cupiditate ex quo tempore sint. Aut nobis quidem beatae qui. Quaerat sed et ipsam.','Sint voluptas autem voluptatum non id ut. Voluptates praesentium laudantium dolores accusamus ad ullam. Dolores optio ut iusto sint sequi. Vero distinctio omnis consequatur ut in quae quo hic.',0,0,'2015-08-13 13:00:29','1972-03-15 11:52:44'),(79,1,5,'Ut ut velit soluta maiores est ducimus placeat facilis. Vel ea ut cupiditate possimus voluptas. Sunt adipisci tempore animi omnis dolor sed sunt. Aut omnis adipisci tempore nam magni.','Qui dignissimos inventore et ex voluptatem omnis assumenda. Voluptatum soluta quia non voluptas accusamus vel sapiente. Qui velit provident id fugiat libero atque.',1,0,'1990-06-21 21:58:22','1994-10-06 11:39:52'),(80,3,2,'Ipsam dolor totam velit doloremque quam. Facilis qui quae reprehenderit nam aut aut. Non minus voluptas maiores enim.','Laborum culpa est et doloremque. Voluptatum aut eius nisi sunt voluptatem necessitatibus iste. Quia dolor qui eaque expedita at.',1,0,'2019-10-15 06:01:00','1972-02-15 18:28:47'),(81,5,5,'Et magni ratione eius molestiae error nihil. Maxime reprehenderit atque facere ut animi aperiam magnam. Sunt quia vel nulla placeat velit sed. Praesentium pariatur ullam eos debitis atque. Exercitationem tempora sed modi sequi vel ipsam.','Dolore aut sit consequatur veniam voluptatibus eligendi. Deleniti earum quod sed. Amet nam velit asperiores consequatur. Molestias voluptas enim nisi non veritatis ratione non. Voluptate consequuntur quae rerum amet.',0,0,'2014-02-08 12:12:32','2014-07-29 12:20:14'),(82,3,2,'Ut atque rerum quam dicta ut non. Possimus accusamus voluptas est explicabo facere ut. Error dolores quos ab repellendus omnis.','Fugiat cumque non et et sit sint consequuntur. Dolor iure dolorum ea aliquid debitis. Reprehenderit eum consequatur aut perspiciatis ut sapiente.',1,0,'2020-05-19 06:26:33','1995-03-06 19:45:11'),(83,1,7,'Accusamus aspernatur facilis quia et similique itaque architecto reiciendis. Saepe maxime corporis eos quo. Vel ex velit placeat atque.','Labore debitis modi impedit. Dolores hic quaerat ut quas quo. Omnis asperiores laudantium facilis ut.',0,0,'1974-03-31 14:33:04','1976-10-27 18:18:10'),(84,8,2,'Veritatis et beatae enim velit nostrum omnis. Et sequi voluptas magni eos ut qui. Illum voluptatem qui omnis.','Autem perferendis quam cum dolor rerum. Modi id corrupti voluptas et aliquid explicabo.',1,0,'1978-01-05 00:08:14','1985-12-24 23:54:55'),(85,5,9,'Dolorem officiis omnis similique minus eligendi velit in eum. Cum est at officiis impedit a. Omnis qui explicabo et magni cumque iusto et cupiditate. Autem velit illum debitis dolorem.','Repudiandae pariatur aut beatae expedita. Fugiat et quibusdam molestiae provident at. Praesentium distinctio inventore odio sapiente. Explicabo eum aut qui dolorem sed.',1,0,'1972-04-29 13:32:57','2002-05-09 23:18:00'),(86,1,3,'Facere voluptatem quidem similique tempora ut eum. Amet eos eligendi illo rerum repudiandae. Laudantium eum vero in in.','Natus esse qui quo ut. Error dicta doloremque molestiae id aut. Itaque officia sunt occaecati eum in quo eius. Soluta dolorem qui sed fugiat. Aliquam est veritatis est a aut.',0,0,'2009-12-26 02:54:57','2013-04-04 15:39:30'),(87,6,6,'Optio nesciunt consequatur nisi et dolorem qui odio sapiente. Et laborum esse aut omnis alias ipsum. Aspernatur quas id neque omnis et.','Repudiandae dolore illo dolores consequatur architecto reprehenderit. Non ut porro non aut. Repudiandae omnis nostrum sed et qui et. Culpa praesentium iste consequatur doloribus quod.',1,0,'1995-03-15 10:22:00','1992-09-17 09:13:56'),(88,2,1,'Magnam atque ut consequuntur asperiores voluptatem. Minus blanditiis dicta reiciendis. Molestias asperiores nulla et quia qui itaque.','Delectus delectus dicta doloremque totam consequatur et. Aut illo atque ut minima. Corporis accusamus iusto sint molestias.',1,0,'1978-02-15 16:10:44','2021-07-15 13:56:47'),(89,8,8,'Harum mollitia necessitatibus ratione. Rem eligendi rem sint quas sunt ut non. Assumenda architecto temporibus eos libero et est.','Excepturi tempora at assumenda excepturi enim aut enim. Quia doloribus atque consectetur eius praesentium. Nostrum in ducimus tempora qui natus molestiae delectus quia. Eum explicabo facilis quia culpa totam.',0,0,'2013-01-04 21:26:05','1991-04-08 20:03:29'),(90,6,8,'Explicabo qui velit est necessitatibus eum. Sequi eligendi fugiat adipisci praesentium distinctio quis maiores. Odio et occaecati ut fugit labore quibusdam. Illo aspernatur natus eaque.','Ad dolorum voluptatem ipsa ab et nemo qui. Et non odio tempora nam delectus rem.',0,0,'1977-06-18 22:48:21','1988-05-23 13:32:04'),(92,4,7,'Veritatis consequatur voluptas et est. Iure optio dolores tenetur tempore sed. Sed illo laudantium maxime.','Ad voluptatum ullam deserunt corrupti quod quia ut. Ab sit sit aut cupiditate ex iure aut qui. Quo voluptates ipsum quas minima unde. Ut ut neque vel veniam dolor.',1,0,'1998-05-22 18:19:17','1979-02-02 02:43:34'),(93,1,5,'Labore architecto cumque at. Labore velit deserunt voluptas enim praesentium dolor nostrum. Nobis beatae illo laudantium qui. Voluptatem facere nihil ut velit.','Nihil sapiente et placeat exercitationem perferendis in. Sint aperiam id non culpa laborum a reprehenderit. Repellat sit minima cupiditate quo delectus quia suscipit. Similique recusandae reiciendis laudantium doloremque.',0,0,'2017-04-05 11:03:40','1982-03-23 12:48:58'),(94,7,3,'Harum provident saepe quisquam fugiat in voluptate omnis. Mollitia suscipit dolorem libero aliquid necessitatibus. Ipsum cum voluptatum sed quisquam officia ipsa.','Ullam odit eveniet quam totam eveniet. Aperiam et voluptate voluptatum omnis et. Rerum vero similique error aut tempora magni. Ut doloribus perspiciatis sequi voluptatem reiciendis voluptatibus.',0,0,'1972-03-10 19:04:10','2013-12-06 17:19:15'),(95,8,9,'Eligendi quis voluptatibus qui ipsa. Modi itaque tempore omnis vero. Voluptatem voluptatibus delectus sequi et. Harum et eos ut eum pariatur.','Aperiam et accusamus neque corporis ratione fugiat id. Sint ut qui alias quidem. Architecto dolorem odio voluptas inventore animi quo. Ratione eius minima id ut molestiae excepturi.',0,0,'1997-02-16 01:20:08','1980-11-14 03:25:31'),(96,10,1,'Harum deserunt facere facere atque reiciendis et. Tempora qui ab similique aut rerum voluptatum qui. Enim qui est unde recusandae officia nesciunt nihil. Aut reprehenderit vero vel.','Iure vel sint et consectetur voluptas molestiae qui. Sed voluptas dolores quas iusto occaecati corporis. Voluptas voluptas ab accusantium totam debitis minima.',0,0,'1972-08-20 15:08:26','2021-07-15 13:33:32'),(97,8,6,'Aut consequatur qui laudantium ea et magni cumque. Velit debitis veritatis aliquam quis.','Eius eius doloremque aut dolores eveniet praesentium. Minus nesciunt nostrum quaerat expedita.',0,0,'2005-09-23 17:08:26','2020-01-10 11:49:57'),(99,2,1,'Magni non ea animi voluptas. Autem vitae aperiam ut laudantium voluptatem omnis. Delectus voluptas autem illo eos laudantium et. Autem est accusantium dolorem temporibus.','Id labore blanditiis tempora maiores repellat quia mollitia quibusdam. Odit corrupti repellat porro delectus a. Aut ea quo velit consequuntur dignissimos dicta.',1,0,'1974-11-01 03:30:10','2021-07-15 13:56:45'),(100,5,7,'Suscipit aut fugit molestiae quo labore. Sint laborum et perspiciatis et. Beatae blanditiis dolorem incidunt totam officia.','Fugiat rerum unde et ea enim provident. Deleniti nihil est et quos architecto sit labore. Accusamus repellendus necessitatibus at ad aut molestiae.',0,0,'1970-12-21 16:31:32','1979-10-21 10:03:04');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages_media`
--

DROP TABLE IF EXISTS `messages_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages_media` (
  `message_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор сообшения',
  `media_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор медиа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`message_id`,`media_id`),
  KEY `fk_mm_media_id` (`media_id`),
  CONSTRAINT `fk_mm_media_id` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_mm_message_id` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Связь сообщений и медиа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages_media`
--

LOCK TABLES `messages_media` WRITE;
/*!40000 ALTER TABLE `messages_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на идентификатор пользователя который опубликовал пост',
  `community_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на дентификатор пользователя который опубликовал пост',
  `post_content` text COLLATE utf8mb4_unicode_ci COMMENT 'Текст произвольной длины',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время публикации поста',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  `visibility` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_user_id` (`user_id`),
  KEY `fk_post_community_id` (`community_id`),
  KEY `fk_post_visibility_val` (`visibility`),
  CONSTRAINT `fk_post_community_id` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_post_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_post_visibility_val` FOREIGN KEY (`visibility`) REFERENCES `visibility` (`value`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Посты пользователей и групп';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (137,1,9,'047dea7aa0a34305defcd1fcd7af9eb9','2021-07-15 12:46:49','2021-07-15 12:47:07','FRIENDS_ONLY'),(138,1,18,'774f049bbf367b60b52f1ee735a0e9bc','2021-07-15 12:46:50','2021-07-15 12:46:50','FRIENDS_ONLY'),(139,1,18,'0ff857c54e1a9d2291a8da62a23d6e45','2021-07-15 12:46:50','2021-07-15 12:47:07','USERS_ONLY'),(140,1,18,'1df5188bd537d6ab0ab234e67f968157','2021-07-15 12:46:50','2021-07-15 12:47:07','FRIENDS_ONLY'),(141,1,10,'3d1798e32b090239af88b508dc579a8a','2021-07-15 12:46:51','2021-07-15 12:46:51','NOBODY'),(142,1,12,'8aa5f55d9173ff188ec33ff160f7da64','2021-07-15 12:46:51','2021-07-15 12:47:07','USERS_ONLY'),(143,1,15,'243435309fa9ecbc2ce6b8a2ba15afe9','2021-07-15 12:46:51','2021-07-15 12:47:07','ALL'),(144,1,18,'33383db171c71ab2ed2236196187c76a','2021-07-15 12:46:51','2021-07-15 12:47:07','FRIENDS_ONLY'),(145,1,2,'ceef636a2243f11210fd730b53b5e2cb','2021-07-15 12:46:52','2021-07-15 12:47:07','USERS_ONLY'),(146,1,8,'2e96a277064b430f8e73a370002d3578','2021-07-15 12:46:52','2021-07-15 12:47:07','ALL'),(147,1,6,'a707fc7e6b8cd4c64a71288d07d56b18','2021-07-15 12:46:52','2021-07-15 12:47:07','ALL'),(148,1,1,'63dcbb16ed6ee72502089d009dc5cfe6','2021-07-15 12:46:52','2021-07-15 12:47:07','FRIENDS_ONLY'),(149,1,19,'a7e083cfd4750271356bbb04abf11785','2021-07-15 12:46:53','2021-07-15 12:47:07','ALL'),(150,1,11,'6924ce4b8867ea3c417e814391433070','2021-07-15 12:46:53','2021-07-15 12:47:07','ALL'),(151,1,12,'a91c0d799948038551e7467b1618b928','2021-07-15 12:46:54','2021-07-15 12:47:07','ALL'),(152,1,6,'9b5c84e6294a613041d12c97870b740f','2021-07-15 12:46:54','2021-07-15 12:47:07','FRIENDS_ONLY'),(153,1,8,'3c8dcbd3ca7b4aac3dfa8f53fbb07c56','2021-07-15 12:46:54','2021-07-15 12:47:07','ALL'),(154,1,9,'7c6394136baeeef4d985a59c161420bd','2021-07-15 12:46:54','2021-07-15 12:47:07','NOBODY'),(155,1,5,'7e2a8161c7755fe2a3ade5430b25e5cb','2021-07-15 12:46:55','2021-07-15 12:47:07','FRIENDS_ONLY'),(156,1,8,'4eee2957d1004c1901e443314d7f500c','2021-07-15 12:46:55','2021-07-15 12:47:07','NOBODY'),(157,1,12,'97c416894d6b7da598373bc100542c13','2021-07-15 12:46:55','2021-07-15 12:46:55','FRIENDS_ONLY'),(158,1,20,'bbec90873c6d4e630b335a2e31242aaf','2021-07-15 12:46:56','2021-07-15 12:47:07','ALL'),(159,1,4,'0fb79716a28bcc0c6f75369152c4f772','2021-07-15 12:46:56','2021-07-15 12:47:07','USERS_ONLY'),(160,1,6,'e5c830a7495faed25f4f87c320face2c','2021-07-15 12:46:56','2021-07-15 12:46:56','ALL'),(161,8,12,'c03f3c88a894a432325dd93c83d14666','2021-07-15 15:31:07','2021-07-15 15:31:07','NOBODY'),(162,1,10,'88483f63c5f85139ee132f3aa301d109','2021-07-15 15:31:08','2021-07-15 15:31:08','ALL'),(163,4,12,'3f575b9f9821094dc0636acd1334f30b','2021-07-15 15:31:08','2021-07-15 15:31:08','NOBODY'),(164,7,9,'fe85fc8a29e9e00334f06391240996ea','2021-07-15 15:31:09','2021-07-15 15:31:09','ALL'),(165,1,8,'849bb43bfd48d92a869e7084e03c18c1','2021-07-15 15:31:09','2021-07-15 15:31:09','USERS_ONLY'),(166,3,14,'c7f7291b82e916c420476b081a44e64f','2021-07-15 15:31:09','2021-07-15 15:31:09','USERS_ONLY'),(167,9,10,'259de8466320103413ad5b20f108eb7c','2021-07-15 15:31:09','2021-07-15 15:31:09','USERS_ONLY'),(168,3,1,'235ccf54e3d6f5c91a4e9ec281d37c4b','2021-07-15 15:31:10','2021-07-15 15:31:10','USERS_ONLY'),(169,7,4,'fa862cffcb4101e32444176d4e9b5942','2021-07-15 15:31:14','2021-07-15 15:31:14','USERS_ONLY'),(170,2,15,'c5e84dbcbe7b26f3c579139e2e7a882c','2021-07-15 15:31:14','2021-07-15 15:31:14','USERS_ONLY'),(171,10,11,'7eddb8126d219ba700b487b1e4c4c277','2021-07-15 15:31:15','2021-07-15 15:31:15','ALL'),(172,10,18,'318ef1076465b27f65972f7e43a8c885','2021-07-15 15:31:20','2021-07-15 15:31:20','USERS_ONLY'),(173,7,8,'8fa6ec3402ebe1437e9903e4d04cb630','2021-07-15 15:31:20','2021-07-15 15:31:20','USERS_ONLY'),(174,4,4,'387a802f2cb5535a424fbbad98824367','2021-07-15 15:31:20','2021-07-15 15:31:20','FRIENDS_ONLY'),(175,7,6,'8645c29ec08362b6dfba391a8adc72e5','2021-07-15 15:31:21','2021-07-15 15:31:21','ALL');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_media`
--

DROP TABLE IF EXISTS `posts_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_media` (
  `post_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор поста',
  `media_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор медиа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`post_id`,`media_id`),
  KEY `fk_pm_media_id` (`media_id`),
  CONSTRAINT `fk_pm_media_id` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_pm_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Связь постов и медиа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_media`
--

LOCK TABLES `posts_media` WRITE;
/*!40000 ALTER TABLE `posts_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `birth_date` date DEFAULT NULL COMMENT 'Дата рождения',
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `status` enum('ONLINE','OFFLINE','INACTIVE') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` enum('M','F') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `fk_profiles_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица профилей пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,'Justyn','West','2018-07-03','33635771','Antoniettaview','OFFLINE','2000-06-05 13:52:03','2021-07-15 09:59:56','F'),(2,2,'Giovanna','Wisoky','1991-09-24','880','Jakubowskiton','ONLINE','1988-10-02 07:27:43','2021-07-15 09:59:56','F'),(3,3,'Trevion','Wolf','2015-08-21','6189','East Soledad','ONLINE','2017-06-09 22:21:27','2021-07-15 09:59:56','M'),(4,4,'Timmy','Barrows','2006-05-20','','Bernitaton','ONLINE','2018-01-13 16:53:30','2021-07-15 09:59:56','F'),(5,5,'Mazie','Reynolds','1990-12-20','','New Yolanda','INACTIVE','1991-11-21 23:35:36','2021-07-15 09:59:56','M'),(6,6,'Kenyon','Hammes','1983-02-15','','Port Jayme','ONLINE','2000-04-29 09:26:11','2021-07-15 09:59:56','F'),(7,7,'Alisha','Bartell','2011-07-01','23','Lucilefort','OFFLINE','2012-03-14 06:50:53','2021-07-15 09:59:56','F'),(8,8,'Ward','King','1976-05-10','3','Quitzontown','OFFLINE','1970-10-05 21:12:52','2021-07-15 09:59:56','F'),(9,9,'Hans','Schiller','2002-06-09','533','Dwightfort','ONLINE','1992-11-10 12:00:23','2021-07-15 09:59:56','M'),(10,10,'Gertrude','Prosacco','2002-03-19','5275964','Morarshire','INACTIVE','1993-01-28 19:41:13','2021-07-15 09:59:56','M');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'gulgowski.ayana@example.net','+79408175864','1987-05-29 23:12:43','2021-07-05 17:06:51'),(2,'lowe.annamarie@example.com','+79588023944','1999-04-26 18:44:16','2021-07-05 17:06:51'),(3,'ignatius94@example.net','+79715592162','1998-06-17 01:02:57','2021-07-05 17:06:51'),(4,'anderson.cora@example.net','+79813889010','1972-10-31 10:54:10','2021-07-05 17:06:51'),(5,'towne.laury@example.org','+79922668597','1974-10-28 15:35:21','2021-07-05 17:06:51'),(6,'broderick.larson@example.org','+79171675988','2017-08-24 19:02:26','2021-07-05 17:06:51'),(7,'xwilkinson@example.net','+79090374178','2020-12-08 19:53:27','2021-07-05 17:06:51'),(8,'florence.ritchie@example.org','+79936842955','1970-07-23 04:01:51','2021-07-05 17:06:51'),(9,'ikemmer@example.org','+79413092277','1999-01-24 23:23:59','2021-07-05 17:06:51'),(10,'gleason.aric@example.net','+79254932552','1985-07-14 09:36:05','2021-07-05 17:06:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visibility`
--

DROP TABLE IF EXISTS `visibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visibility` (
  `value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Тип видимости',
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Справочник вариантов видимости объектов на странице';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visibility`
--

LOCK TABLES `visibility` WRITE;
/*!40000 ALTER TABLE `visibility` DISABLE KEYS */;
INSERT INTO `visibility` VALUES ('ALL'),('FRIENDS_ONLY'),('NOBODY'),('USERS_ONLY');
/*!40000 ALTER TABLE `visibility` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-15 17:47:33
