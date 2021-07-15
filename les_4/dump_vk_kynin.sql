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
INSERT INTO `communities_users` VALUES (2,1,'2003-04-14 13:57:52'),(2,2,'1981-12-09 19:16:48'),(3,6,'1999-09-23 16:11:32'),(4,2,'1978-08-07 07:44:43'),(4,4,'2020-09-03 11:52:38'),(5,6,'1993-10-02 21:32:19'),(5,8,'1996-03-19 10:53:51'),(6,6,'1994-09-17 05:05:50'),(6,7,'1980-03-27 13:57:00'),(6,9,'1995-11-20 11:17:18'),(7,3,'1972-03-30 16:37:46'),(8,2,'1982-11-20 00:57:53'),(8,6,'2008-07-26 04:19:56'),(8,9,'2020-03-14 09:03:56'),(9,8,'2005-07-12 10:52:40');
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
INSERT INTO `entity_types` VALUES ('aliquam'),('consequatur'),('delectus'),('dolorem'),('doloremque'),('enim'),('et'),('expedita'),('ipsum'),('iusto'),('molestiae'),('necessitatibus'),('nihil'),('praesentium'),('quasi'),('qui'),('ratione'),('vero'),('voluptas'),('voluptate');
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
INSERT INTO `friendship` VALUES (1,1,'FRIENDSHIP','1995-06-22 19:40:59','1979-11-06 00:03:08','1971-10-30 21:15:22','2004-02-27 13:47:43'),(2,1,'FOLLOWING','2000-05-05 06:44:51','1977-06-18 20:49:12','1972-06-18 18:18:53','2000-02-18 23:13:52'),(2,5,'FOLLOWING','2001-06-16 06:50:26','1974-02-04 06:15:05','1985-09-17 18:45:01','2017-09-02 08:30:49'),(2,6,'FOLLOWING','1987-02-19 14:18:22','2000-07-02 01:33:20','1982-03-18 10:57:53','2011-03-04 21:20:05'),(4,3,'FRIENDSHIP','1990-11-23 21:19:56','1998-06-01 09:08:36','1995-08-17 02:28:04','2004-08-14 03:13:11'),(4,5,'FRIENDSHIP','1990-02-17 11:34:19','1985-12-15 05:50:15','2018-10-05 11:12:14','1973-07-27 22:28:45'),(4,6,'FOLLOWING','1980-04-06 11:43:03','2017-09-04 03:22:47','1970-04-27 09:14:35','1975-01-15 11:01:07'),(4,8,'FRIENDSHIP','2012-11-14 08:26:39','1995-11-11 06:27:33','1989-01-30 17:24:08','1983-10-18 14:32:11'),(5,5,'FOLLOWING','1975-02-08 19:24:00','1979-12-08 08:12:43','1999-11-27 10:36:59','2019-04-24 01:49:11'),(6,4,'BLOCKED','2004-10-10 22:50:33','2015-04-11 13:24:01','1977-10-28 00:19:25','2017-10-28 02:10:57'),(6,8,'BLOCKED','2011-04-07 12:51:15','1976-11-13 22:10:45','1977-09-10 13:53:00','1998-01-17 01:33:24'),(7,8,'FOLLOWING','2009-07-09 20:17:22','2007-08-11 11:36:49','2000-02-08 22:29:14','2018-07-31 07:48:47'),(8,2,'FOLLOWING','1977-03-02 20:25:23','2014-11-28 14:28:14','1994-07-22 18:52:45','2005-11-13 12:47:18'),(8,3,'FOLLOWING','1993-02-10 18:31:11','1998-11-11 05:51:52','2005-09-28 06:00:23','2011-12-12 05:26:11'),(8,5,'FRIENDSHIP','2008-09-15 07:05:09','1992-07-31 23:28:53','1984-12-31 21:26:35','2006-04-09 09:39:34'),(9,2,'FRIENDSHIP','1997-10-22 20:03:32','1991-01-19 01:23:38','1971-01-22 10:21:18','1985-10-21 02:26:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица лайков';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,3,7,'dolorem','1979-03-06 14:58:02','1978-04-26 06:43:55'),(2,8,6,'consequatur','2016-11-06 05:41:07','1980-07-25 20:54:24'),(5,0,7,'et','2001-03-30 15:09:00','1989-08-11 22:09:32'),(16,6,7,'expedita','1979-02-26 14:58:40','1979-04-20 14:42:03'),(19,1,0,'expedita','1999-10-25 02:50:51','1992-09-29 12:46:31'),(28,4,2,'ratione','1976-11-04 06:23:22','1998-06-13 23:43:55'),(31,0,1,'qui','1987-02-20 05:26:34','2015-12-10 17:21:54'),(32,6,1,'qui','2003-02-04 23:16:09','2017-08-17 10:23:44'),(38,4,8,'qui','1980-01-28 04:10:34','1980-07-11 19:33:43'),(42,3,6,'et','1986-08-01 01:02:57','2000-11-04 09:33:01'),(51,4,8,'molestiae','1994-05-21 18:07:35','2016-01-10 18:12:30'),(56,3,4,'ratione','1994-03-15 03:24:21','1991-05-10 13:58:18'),(58,3,6,'voluptas','1996-03-06 02:50:28','2008-05-11 00:57:42'),(63,5,3,'iusto','2008-07-28 18:14:01','1989-08-25 15:04:10'),(74,4,7,'et','1993-08-02 00:34:06','2018-01-29 12:25:46'),(75,5,8,'quasi','1985-08-17 15:25:55','2013-04-12 21:47:23'),(87,8,5,'molestiae','1974-01-19 00:12:14','2002-07-24 05:21:05'),(90,7,7,'enim','2016-07-17 05:34:02','1984-05-02 18:50:40'),(92,4,8,'ratione','2012-01-03 11:18:51','1970-02-19 15:35:31'),(99,8,8,'voluptate','2001-07-30 19:09:32','1975-01-13 03:51:11');
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
  `media_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ссылка на тип контента',
  `link` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ссылка на файл',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `fk_media_type_id` (`media_type`),
  CONSTRAINT `fk_media_type_id` FOREIGN KEY (`media_type`) REFERENCES `media_types` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'alias','http://krajcik.com/','1971-06-25 10:51:29','1980-12-24 10:31:35'),(7,'quas','http://www.kutch.info/','2006-03-04 12:19:59','2015-12-14 22:30:44'),(16,'velit','http://www.marks.biz/','1983-06-02 09:56:44','2000-10-16 12:35:46'),(21,'quas','http://www.ledner.net/','1983-01-26 04:40:55','1994-06-22 02:08:02'),(24,'quia','http://www.larkinmarks.biz/','2015-11-28 06:28:50','2012-10-15 19:12:39'),(29,'sunt','http://parisian.biz/','1983-02-25 21:36:16','1971-01-19 05:47:40'),(34,'asperiores','http://larkin.com/','1986-08-21 00:31:46','1973-12-20 21:54:50'),(35,'et','http://www.lynch.com/','2000-06-18 18:12:58','1970-01-29 10:27:18'),(36,'similique','http://franecki.info/','2017-03-10 03:52:09','1971-08-31 21:30:18'),(37,'non','http://www.larkin.org/','1988-05-28 04:09:23','2017-04-28 20:52:19'),(38,'qui','http://www.lockman.biz/','2020-07-15 16:44:21','1997-09-07 21:28:44'),(39,'et','http://williamson.net/','1994-05-02 06:06:07','2005-07-21 12:27:50'),(43,'alias','http://www.labadie.com/','2020-06-19 19:44:03','1997-10-31 04:21:22');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_types` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Тип медиайла',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Тип медиа контента';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES ('alias'),('asperiores'),('consequatur'),('deleniti'),('et'),('exercitationem'),('incidunt'),('molestiae'),('non'),('omnis'),('quas'),('qui'),('quia'),('repellat'),('similique'),('sunt'),('totam'),('ut'),('velit'),('voluptatum');
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
INSERT INTO `messages` VALUES (1,1,2,'Ut dignissimos minus et. Accusantium cum et dolorem cum minima ut. Architecto facilis molestiae dolorem in occaecati. Sunt ipsam provident deserunt ut est non et.','Odit porro ut et qui voluptatem voluptatum nulla reiciendis. Est laborum nihil quia et sit sunt. Debitis architecto molestias temporibus totam sed nulla debitis.',1,0,'1972-01-21 05:46:37','1971-04-08 09:38:55'),(2,9,4,'Quidem quo exercitationem placeat non aperiam. Cumque natus eius molestias et tempora. Nihil numquam ea libero molestiae sint. Ad magni repellendus minus ducimus consequatur soluta odit quia.','Rem hic perferendis et ut culpa. Sit dolore nulla perferendis cumque. Nesciunt doloremque omnis harum amet sequi. Voluptas expedita minus incidunt vel ipsa.',0,0,'1999-05-28 18:47:57','2002-05-22 08:46:01'),(4,4,3,'Ut rem dignissimos voluptatem velit. Officia enim placeat velit nostrum nesciunt nesciunt. Occaecati vel aut dignissimos. Earum in alias quidem consequatur.','Accusantium aliquam incidunt nihil ut expedita aut. Dolor sunt cupiditate excepturi aut. Provident perspiciatis perspiciatis omnis temporibus et. Reiciendis tempore commodi reprehenderit.',0,0,'1991-10-27 08:44:10','1975-08-23 14:37:15'),(5,1,5,'Optio sit qui fugit quis et. Pariatur qui est deleniti et.','Libero voluptas omnis dolores nulla. Facilis et laborum distinctio. Placeat et aut atque voluptas.',0,0,'1997-10-07 21:42:36','2016-07-02 12:29:27'),(7,2,1,'Non architecto minima harum ratione. Vel ullam et dignissimos sunt itaque molestias. Ut nisi qui fuga iusto hic at nulla. Eum qui praesentium explicabo dolorem enim.','Tempora in quidem ipsum sit quasi eius. Officia facere sit ut excepturi. Qui odit ad vel nihil neque.',0,0,'1972-10-24 23:13:14','1972-02-01 11:55:01'),(8,5,2,'Nobis velit quaerat tempora occaecati qui necessitatibus. Amet eaque est hic aliquid velit nihil laudantium. Qui in eos cum impedit sit omnis quo.','Quo aspernatur nesciunt corporis debitis quas delectus. Iste dolor et autem nihil. Doloribus architecto libero a voluptatibus earum.',1,0,'1989-07-23 06:41:39','1997-05-14 09:36:11'),(9,1,9,'Nulla quidem inventore repellat architecto aspernatur eos quia. Aut est minima et. Dolorum repellendus praesentium laboriosam sit rerum eos. Aut blanditiis suscipit ut corporis vel non.','Voluptatem et possimus aliquam molestiae nisi officia doloribus. Dolor odio doloremque unde sint distinctio.',0,0,'1977-05-05 18:57:21','2009-06-24 16:32:49'),(10,6,2,'Iste ea repudiandae mollitia assumenda quos blanditiis. Eum at culpa qui ut placeat maiores nam. Quia expedita ut ea consequatur consectetur et. Optio cupiditate maiores molestiae maxime voluptatem provident voluptate explicabo. Nemo molestiae sit in a si','Pariatur rerum ratione ut. Accusamus nobis est odit illo aut molestiae qui labore. Natus recusandae et enim sint.',1,0,'1982-11-10 15:22:54','1991-09-14 04:12:21'),(13,1,2,'Accusantium rerum at ut qui sapiente nobis. Error a sequi eos earum sapiente. Neque fugit voluptatem ut nulla ut velit quia. Omnis dolorum dolore fuga tempore ipsam. Velit quo dolores repellat eum non dolorem temporibus consequatur.','Quae eos quos recusandae atque. Sequi provident nobis non exercitationem nobis earum qui. Iusto voluptatum numquam sint ipsum.',0,0,'2005-09-06 00:29:00','1973-04-28 01:22:32'),(14,8,2,'Dolorum voluptatem nihil consequatur nihil sunt qui minus. Ut pariatur non beatae id a quaerat vel. Aperiam qui quo porro quod est atque tempore.','Est sit dolor non est. Sit quos quod non corporis hic aut. Et et et tempore magnam. Labore nostrum iusto molestiae voluptates hic.',1,0,'2009-02-28 00:58:01','1991-07-08 17:11:51'),(15,3,6,'Eos repellat quam impedit debitis. Odio ipsam rerum sequi veniam. Doloremque possimus distinctio exercitationem hic.','Culpa beatae soluta sint est ipsa omnis eligendi. Dignissimos neque ut et suscipit ipsam. Eum et at optio ea quia. Qui in tenetur ex sit.',1,0,'1990-02-19 17:33:56','2017-10-20 10:44:08'),(16,7,3,'Et fugit tempore repellendus tempora labore asperiores. Repellendus dolor nesciunt expedita hic odio provident.','Et blanditiis facere est. Tenetur nemo sed deserunt incidunt qui quidem sint. Repudiandae quas dolores explicabo voluptas est nobis autem. Reiciendis sunt corporis reiciendis fuga.',1,0,'2016-05-17 11:18:26','1977-11-04 01:29:54'),(17,8,5,'Hic dolores aut adipisci distinctio. Sunt sed reprehenderit autem velit dignissimos qui. Nesciunt et aspernatur iste sed harum.','Rerum placeat non error placeat aperiam sint. Quasi dolor voluptatem facere repellat incidunt quia perferendis.',0,0,'2002-07-17 01:11:20','1976-12-07 09:37:16'),(18,3,2,'Aut quo explicabo sed soluta. Saepe ipsum dolorum voluptatem perspiciatis fugit eaque enim maxime. Provident velit animi error recusandae ut iusto quod.','Qui aliquam corporis voluptatum rerum facilis odio. Ea officia est distinctio neque placeat porro. Rerum maxime voluptates ullam saepe velit dolorum. Perspiciatis error sequi labore distinctio ut corrupti. Dolores dolorem tempore voluptatem placeat.',1,0,'2003-07-16 07:49:00','2007-09-12 05:30:46'),(21,4,2,'Laudantium vel quis doloribus molestiae ducimus ea at. Asperiores omnis consequatur quo alias officiis ad. Sunt eos facere nesciunt nesciunt facere. Ex sit voluptatem repellat sunt neque beatae. Atque eum et rerum molestiae et excepturi.','Possimus libero non suscipit aliquid expedita fuga facere. Nisi cupiditate omnis labore et et sit reiciendis labore.',1,0,'2003-04-01 18:27:17','2019-12-09 10:31:08'),(22,3,9,'Corporis quibusdam esse est et. Aut sapiente commodi vel aut quo. Suscipit quo ut totam amet est repellat sed.','Nostrum est sit omnis ipsam qui hic tenetur. Nihil sequi autem enim quam qui. Accusantium quia amet delectus aperiam qui ut possimus accusamus. Inventore iure voluptatem atque quam ex eum.',0,0,'1973-05-29 02:16:59','1970-01-30 13:46:16'),(24,3,1,'Amet omnis sed deleniti dolor dicta velit. Ducimus qui autem facilis architecto. Ratione rem error aut minus cumque omnis laborum. Laboriosam est eos et perspiciatis quis dolorum.','Expedita facilis aut accusamus. Eaque nulla facilis nesciunt et error velit quia.',0,0,'2017-10-19 04:01:00','2015-06-28 07:13:39'),(25,2,5,'Quis autem quis quae nobis adipisci reiciendis. Similique autem aliquam nesciunt quia. Eum sit voluptas et iusto vel autem natus et. Dolor iste nemo rerum quisquam in.','Ratione ratione in ut at rem voluptatem voluptatum. Accusantium et tenetur aperiam expedita est quod voluptatem. Ratione rerum voluptatem tenetur consequatur sapiente rem.',1,0,'1977-06-29 00:18:47','1992-06-23 20:21:05'),(26,9,5,'Molestiae et a distinctio fugiat. Est ut sed atque at vitae. Consectetur molestias possimus est minima. Sunt dolor nulla ipsum eum.','Nostrum debitis ducimus et ratione voluptas adipisci sed ut. Odit dolor mollitia recusandae repudiandae quaerat facere.',0,0,'1974-03-05 12:26:21','1999-09-27 03:57:00'),(27,3,2,'Explicabo nobis deserunt delectus doloremque rerum aut. Aut sequi omnis autem autem eius consequuntur repellat. Et nemo molestiae voluptatibus quia occaecati reiciendis.','Ratione error dolorem quae et esse. Atque aut quod minus dolorem. Officiis nobis aut amet tenetur sit sed.',0,0,'1984-08-10 13:24:58','1980-11-24 19:10:07'),(28,7,4,'Nihil autem eaque quis id exercitationem delectus sint ut. Qui dolor sint quis illo distinctio aut aliquid delectus.','Blanditiis et enim quia rerum autem molestiae. Voluptas laborum rem est qui et officiis eligendi. Labore quas quod quia est. Voluptates blanditiis ut natus dolorum veniam velit.',0,0,'1985-03-28 04:13:02','2012-10-17 00:14:29'),(29,3,6,'Quia atque molestias repudiandae tempore temporibus id quaerat. Dolore est dolore corrupti velit quae voluptas ea pariatur. Esse qui dolore soluta fugiat maiores ratione. Dolores explicabo vel illo consequuntur.','Occaecati dolor deleniti iusto dignissimos atque aut voluptas veniam. Aliquid in dolor expedita qui doloremque nostrum. Qui qui sed dolorum eius et magni.',1,0,'1971-10-29 23:01:39','1972-04-14 12:28:47'),(30,6,6,'Quidem reprehenderit aut ut. Blanditiis officia magni et dolorem esse animi reprehenderit. Aperiam dolor earum assumenda ducimus blanditiis et veniam. Quod repudiandae iure quae quas omnis.','Velit suscipit natus nisi soluta veniam. Officia molestias quia dolore quisquam. Aut autem quo veniam fugit est.',1,0,'1970-06-02 10:41:05','1995-04-30 05:35:09'),(32,2,5,'Modi eum et laboriosam magnam illo blanditiis sed voluptas. Culpa consectetur ut molestiae debitis possimus pariatur est.','Amet atque voluptas quam voluptatum et. Rerum molestiae consequatur ea dolorem consequatur minima. Omnis eveniet magni laboriosam iste dolorum rem nostrum. Ea possimus autem sed.',0,0,'1992-05-02 20:14:25','1986-06-30 07:40:15'),(34,5,2,'Adipisci tempore eaque pariatur dolorem est molestiae ipsum. Ut consequuntur porro et voluptas porro. Sed voluptatum illo nulla.','Nam nisi facilis consequatur animi blanditiis vel. Quod tempora aut dicta minima et sunt provident adipisci.',1,0,'1982-04-23 15:48:20','1997-04-06 21:53:01'),(35,4,3,'Ut adipisci est ipsam. Laborum harum ea et.','Sit modi incidunt aut perferendis quis veniam. Possimus aut iste vel veniam. Tempore illum libero sint voluptatibus numquam nihil.',1,0,'2020-06-02 12:18:02','1993-01-14 12:56:10'),(36,8,3,'Reiciendis distinctio delectus et nihil et omnis. Sint cumque atque accusantium cupiditate quod aut quia ad. Saepe voluptatem rerum eum beatae nesciunt et iste incidunt. Sit debitis voluptas aut dolorum harum.','Voluptas fuga quod ad voluptatem ea. Rem quo repellendus ipsa. Neque facilis culpa quod ipsum magni qui corrupti.',1,0,'1974-09-17 00:20:47','1991-04-25 09:54:25'),(37,3,1,'Eius et ipsa iure sint. Ad dolore nihil debitis sit tempore. Vero ducimus nihil temporibus laudantium facilis dolores ut aliquam. Et voluptatem exercitationem rem.','Corporis dolore consequatur vel qui corporis quis. Ut corrupti nostrum fuga veritatis. Explicabo voluptas officia facilis quaerat ratione perferendis.',0,0,'2014-10-13 22:39:07','2004-12-10 20:32:22'),(38,5,1,'Et facere cumque perferendis. Eos ullam laboriosam quaerat. Maiores velit animi corporis cumque.','Voluptatem fuga repellendus alias aut qui facilis maiores. Ut aut quasi omnis maiores doloribus dolores. Aspernatur nostrum odit nostrum eveniet recusandae sed architecto laboriosam. Et quod cum aliquam.',0,0,'2017-09-13 17:10:11','2013-04-29 11:58:12'),(39,4,4,'Qui nisi harum exercitationem. Natus quisquam aut officia blanditiis qui. Eaque porro qui eos. Quas fuga sed eligendi libero expedita qui. Maxime non quia ut ut quae cupiditate.','Nulla quae illum unde error aut. Eligendi laborum ut ut natus. Ea sed sed aperiam et dolores blanditiis. Sed expedita non ipsum voluptas sequi maxime.',1,0,'2009-12-08 21:05:16','1988-12-01 01:38:30'),(40,4,7,'Suscipit in iure consequuntur dolores vel. Ut molestiae omnis commodi.','Atque necessitatibus quo rerum harum laborum debitis ut. Qui reprehenderit maiores tempora et. Neque magni vel illo voluptas. Quia eligendi asperiores possimus.',0,0,'2004-11-30 05:38:15','2015-04-20 03:33:57'),(41,3,3,'Ut aut est dolorum et. Ab ullam quasi aut. Non commodi iusto quis aliquam totam. Porro perspiciatis rerum culpa aliquid molestiae fugit officiis.','Eligendi et ratione est saepe. Voluptatem nemo aut molestiae atque consequuntur porro. Nemo minima voluptates et magnam et ut provident ipsa. Exercitationem laudantium ut consequuntur perferendis.',1,0,'1990-08-29 16:53:53','1991-10-21 04:48:16'),(43,6,4,'Voluptatem aliquid voluptas accusamus vero repellat aut accusamus. Quia impedit dolor velit molestiae doloremque et. Iusto totam deleniti voluptates voluptas. Est sapiente enim pariatur id veniam eos.','Occaecati ut magnam numquam ea et. Quibusdam architecto molestiae asperiores omnis ab veritatis. Culpa veritatis qui sunt debitis ut similique.',1,0,'1976-12-18 06:21:40','1977-02-19 18:10:55'),(45,5,9,'Odit doloribus vel soluta aperiam necessitatibus quasi. Incidunt ipsam velit autem eum. Minima numquam ipsam repellat veniam quae nisi. Accusamus id earum et mollitia.','Rerum nihil numquam incidunt sapiente neque. Dolores molestias qui consectetur aspernatur aut neque. Iste consequatur modi a ea alias.',0,0,'2014-04-12 17:18:42','1981-10-22 22:20:23'),(46,9,5,'Accusamus omnis velit voluptatem consequatur neque ad. Quae quia nesciunt fugiat magnam asperiores eveniet officia. Molestias provident sit dolor. Autem voluptate dolor alias illum quis.','Dolor commodi deleniti est voluptas. Incidunt qui commodi doloribus. Ad quas culpa unde temporibus.',1,0,'2020-07-31 02:17:23','2016-08-03 14:38:06'),(47,1,8,'Cumque quo quidem rem odio vero aut ipsam. Odit veritatis sed rerum quia aut consequatur. Et beatae sequi eius nihil numquam earum.','Sit id quod dolorem qui nemo. Eaque rerum omnis omnis quidem est natus. Non reprehenderit iste adipisci quo laborum et ut. Culpa et perferendis dignissimos ipsa minima.',1,0,'1973-12-28 06:18:55','1989-10-15 18:10:58'),(48,4,8,'Tempore error adipisci vel maxime facilis. Tempore consequatur similique voluptatem repudiandae facilis nobis consequatur eos. Qui saepe quaerat non fugiat iusto et.','Accusantium aut molestiae nostrum et. Qui ut at dolores quam exercitationem et. Quibusdam numquam dolor autem repudiandae accusantium. Et error architecto nulla consequatur.',1,0,'1970-03-07 13:57:13','1975-01-18 23:32:20'),(49,6,4,'Odit aut consequatur possimus minima corrupti molestiae. Molestias nobis officiis quasi. Nihil beatae et sit et. Quia eos perspiciatis nam voluptate id voluptas doloremque.','Nobis aperiam voluptatem quam. Molestias ab voluptatibus cupiditate veniam in ex eum. Hic deserunt est et facilis et illum quis vel.',1,0,'1987-01-28 06:50:42','1995-07-24 23:39:02'),(50,3,5,'Non rerum qui aut quos qui voluptatibus aut rem. Laboriosam culpa sed voluptas unde nulla est. Quae commodi consequatur commodi minima illo rerum quos. Excepturi consequuntur id porro molestias perspiciatis accusamus ducimus.','Optio quidem sint laudantium ipsa nobis qui sapiente. Est et est alias rerum eligendi. Illo qui aut alias vero est quasi quisquam. Voluptatem quaerat eaque voluptatem in sed.',0,0,'1979-08-25 02:16:48','1995-11-15 17:48:43'),(51,4,9,'Quia est dolor occaecati et reiciendis ea. Natus quas fugit voluptate delectus laborum molestias dignissimos. Aperiam velit deserunt sed non.','Perspiciatis repellat sit in est facere officiis placeat. Nihil et quia recusandae et ex dolorem. Placeat rerum quo incidunt.',0,0,'1973-09-02 16:40:30','1981-02-22 22:42:15'),(52,6,5,'Repellendus consequuntur voluptas qui sed. Maxime illo non a voluptatem. Iure rerum aliquam repellendus molestiae sit.','Voluptatum iusto accusamus repellendus qui dolorum eos natus. Doloremque alias eum reprehenderit atque accusantium dolores eaque. Sint quo reiciendis ut voluptatum quas. Doloremque ex tempore aut ut modi eaque qui dolor.',0,0,'2000-10-20 03:05:22','2019-04-29 11:20:29'),(53,1,2,'Illo aspernatur eveniet non qui ullam et. Qui sint molestiae recusandae nemo autem nihil dolore. Expedita sequi eum et voluptas totam. Et et officia veniam nesciunt commodi.','Consequatur architecto quod ut ad dicta. Sint architecto modi alias dolor sed vero eaque. Numquam quasi et voluptatem quas officia et possimus.',0,0,'1970-04-29 16:08:00','2000-07-30 09:58:00'),(54,8,9,'Dolor ut dignissimos ad inventore sit deleniti qui. Culpa beatae quae laboriosam aut.','Dolorem sapiente corporis non quia qui voluptatem alias ab. Ea repellat adipisci et provident quod eos.',1,0,'2020-07-11 07:25:07','2012-09-18 02:19:13'),(55,6,7,'Qui eligendi aspernatur quasi. Possimus aut voluptas ullam eos beatae consequatur quaerat. Debitis nam et ad sapiente debitis reprehenderit. Quia reprehenderit nihil nesciunt ipsam temporibus earum.','Quam aut assumenda consequatur a magnam. Ut fugit sunt et voluptatibus quo.',0,0,'2014-06-17 10:55:11','1986-09-26 00:13:07'),(56,1,8,'Suscipit ut aut iste cum facilis. Natus quis tempore nihil quaerat. Et officiis distinctio magnam libero. Eos eligendi delectus nam mollitia qui commodi.','Praesentium hic voluptatem eos totam provident. Nostrum enim laborum est iusto aut voluptates. Similique qui aspernatur labore aut. Inventore facilis dolorem dicta fugit molestias.',0,0,'2011-11-18 11:56:40','2004-05-12 14:19:04'),(58,8,4,'Fugiat in corrupti illum. Ut est ut officiis omnis ipsum laboriosam. Natus odit voluptas ea vero ex laudantium suscipit vitae.','Et saepe id est qui ea natus. Reiciendis voluptatem et id voluptatem eum rerum molestias. A deserunt velit exercitationem.',1,0,'2012-11-22 18:03:38','1991-06-14 02:40:51'),(59,9,1,'Cupiditate aliquam voluptas sit fugit sit labore autem. Excepturi dolores eligendi mollitia corporis et aliquid. Velit aut sit voluptatem eligendi sequi numquam.','Asperiores at quia minus deleniti cupiditate ab ipsum. Itaque expedita iure dicta quis repudiandae sed aut. Velit est quidem ut magnam est id.',1,0,'1996-04-22 08:14:18','1996-11-05 07:40:22'),(60,7,4,'Sit consequuntur aut laudantium voluptas minus. Ut voluptatem hic fugit ut enim. Natus sapiente praesentium pariatur corporis tempore.','Corporis quaerat qui provident veritatis illo enim. Beatae dolorem non iste ipsum vitae quia animi. Dicta qui illum recusandae atque culpa. Enim aspernatur velit nihil qui id ullam.',1,0,'1992-09-26 19:32:02','2016-06-24 02:41:39'),(61,2,8,'Minus consectetur maxime eos delectus nemo eveniet molestiae. Dolores eos magnam id. Ut exercitationem soluta occaecati quasi soluta eaque. Soluta non ipsam fugiat magni vel iusto.','Recusandae omnis qui nihil. Dolor ratione dolore repellat tenetur quidem beatae. Non beatae repellendus cum minima sit. Qui et voluptatem sed laboriosam.',1,0,'1992-07-01 08:35:18','2018-09-29 11:19:07'),(62,8,5,'Recusandae error ea autem ipsum. Provident fugit asperiores non facere. Sint et consequatur non nam porro eius.','Commodi odit in perspiciatis commodi incidunt ea. Voluptatibus qui aliquam mollitia nulla consectetur. Ea temporibus a rerum vel quas. Ea reiciendis a quis voluptatum.',0,0,'2008-06-08 19:00:02','1992-08-12 15:04:53'),(63,4,5,'A laborum incidunt autem placeat. Delectus autem possimus a. Nulla aut facere et officiis. Amet quas voluptates quasi.','Nemo rerum aut nam ut quidem assumenda. Omnis saepe id ipsum eius. Rerum mollitia voluptas voluptate maiores ut repudiandae temporibus voluptas.',1,0,'2008-02-14 02:13:04','1989-04-05 03:59:42'),(65,3,9,'Consequatur quas molestiae ea. Nulla quasi aspernatur animi et. Omnis expedita nihil ut vel laborum. Magnam sed nemo cupiditate recusandae cupiditate quis accusantium.','Quia nihil est quasi fugit dolores. Nemo quia nemo quasi est consequatur doloribus sequi veritatis. Ut odit possimus assumenda distinctio.',1,0,'2013-03-12 11:22:41','2020-10-15 02:48:30'),(67,6,1,'Nihil velit maxime porro a officia et eligendi rerum. Voluptate laboriosam qui minus sunt. Commodi blanditiis animi nostrum incidunt. Repudiandae commodi qui assumenda natus ullam pariatur.','Consequatur magnam consectetur deserunt deleniti. Voluptas aut ut repudiandae.',0,0,'2004-11-13 02:38:57','1984-09-15 09:52:50'),(68,8,2,'Rerum aperiam iure culpa sint et. Repudiandae itaque harum voluptas pariatur ut asperiores. Sunt ad dolores nihil adipisci architecto dolores temporibus ab. Non sunt quis consequuntur rerum at expedita et.','Eligendi cum quisquam tenetur quam vitae. Magni debitis maiores ut.',0,0,'1976-06-08 20:05:17','2012-08-13 19:20:42'),(69,8,2,'Rem molestiae ducimus dolor. Veritatis et est voluptates et nostrum. Tenetur autem ullam in sint suscipit eius quidem. Harum at iusto temporibus omnis.','Consequatur beatae esse quia molestiae. Praesentium quia odio eaque nisi quos debitis eum. Quod numquam velit modi. Aut quisquam magnam officia architecto repellat.',1,0,'1987-10-11 19:21:17','2016-11-08 05:44:01'),(71,4,2,'Aut aperiam fuga nisi quasi sequi rerum. Est ipsam cupiditate quia aut consequatur. Officiis corporis et distinctio vero aut autem.','In non voluptas placeat qui a dolores ducimus sed. Asperiores minus ea tempora qui dolorum similique consequatur magnam. In at cumque et culpa voluptas rerum. Nulla nulla modi excepturi saepe libero et.',0,0,'2021-05-05 16:58:54','1998-08-31 12:58:47'),(73,3,2,'Libero est sunt qui quo amet. Laboriosam animi saepe asperiores neque blanditiis voluptas error. Eos similique consectetur fuga.','Nihil in omnis cumque in nulla omnis animi. Magni voluptas rerum aliquam voluptatem et eum. Modi sint placeat voluptatem neque aut.',1,0,'1977-04-28 08:39:50','1991-10-07 14:37:21'),(74,5,7,'A sed voluptate nihil corporis sit architecto vel. Repellat debitis consequatur consequatur consequuntur. Necessitatibus debitis aut quia ut ex alias. Eaque illum et iure et ex eum.','Mollitia porro facilis ducimus libero. Consequatur impedit repudiandae fugiat eum. Quibusdam repellendus et aliquid voluptates a sed adipisci. Quia id quidem unde aspernatur tempore.',1,0,'2020-02-10 20:47:05','1995-06-23 15:55:23'),(75,1,2,'Dolores voluptatibus animi est sunt dolores ullam ea. Voluptas natus omnis vel consectetur est molestiae laborum. Perferendis magni corrupti fugit quae vitae.','Omnis qui nam eius quae voluptates velit. Ullam sunt ullam minus. Dolores voluptates veritatis deserunt ullam perspiciatis temporibus sed error. Ipsam est provident nobis.',1,0,'1996-12-19 08:03:33','1982-07-22 19:24:18'),(76,9,3,'Quam quidem culpa dolorem minima totam autem. Impedit ipsa aut enim sapiente natus neque. Deserunt autem minus sunt asperiores reprehenderit et dolorem. Voluptates labore accusamus dolorem est nisi officiis a.','Asperiores corrupti beatae eum dolore nostrum. Rem qui totam voluptates ea et natus ea. Cupiditate dolore quam eum molestiae ipsa magnam ea.',1,0,'1971-11-24 16:47:08','2006-04-13 15:48:02'),(77,9,2,'Quidem ipsum enim ut cupiditate repellendus et facilis. Ex numquam cum autem impedit sit id esse minima. Quia minima illo eum atque vel. Deleniti consectetur accusamus adipisci incidunt nisi quo.','Neque consequuntur consequatur laudantium suscipit nam voluptatem. Magnam dicta sint libero ab.',0,0,'2002-01-06 03:20:41','1988-11-18 11:35:03'),(78,2,8,'Enim quo cupiditate ex quo tempore sint. Aut nobis quidem beatae qui. Quaerat sed et ipsam.','Sint voluptas autem voluptatum non id ut. Voluptates praesentium laudantium dolores accusamus ad ullam. Dolores optio ut iusto sint sequi. Vero distinctio omnis consequatur ut in quae quo hic.',0,0,'2015-08-13 13:00:29','1972-03-15 11:52:44'),(79,1,5,'Ut ut velit soluta maiores est ducimus placeat facilis. Vel ea ut cupiditate possimus voluptas. Sunt adipisci tempore animi omnis dolor sed sunt. Aut omnis adipisci tempore nam magni.','Qui dignissimos inventore et ex voluptatem omnis assumenda. Voluptatum soluta quia non voluptas accusamus vel sapiente. Qui velit provident id fugiat libero atque.',1,0,'1990-06-21 21:58:22','1994-10-06 11:39:52'),(80,3,2,'Ipsam dolor totam velit doloremque quam. Facilis qui quae reprehenderit nam aut aut. Non minus voluptas maiores enim.','Laborum culpa est et doloremque. Voluptatum aut eius nisi sunt voluptatem necessitatibus iste. Quia dolor qui eaque expedita at.',1,0,'2019-10-15 06:01:00','1972-02-15 18:28:47'),(81,5,5,'Et magni ratione eius molestiae error nihil. Maxime reprehenderit atque facere ut animi aperiam magnam. Sunt quia vel nulla placeat velit sed. Praesentium pariatur ullam eos debitis atque. Exercitationem tempora sed modi sequi vel ipsam.','Dolore aut sit consequatur veniam voluptatibus eligendi. Deleniti earum quod sed. Amet nam velit asperiores consequatur. Molestias voluptas enim nisi non veritatis ratione non. Voluptate consequuntur quae rerum amet.',0,0,'2014-02-08 12:12:32','2014-07-29 12:20:14'),(82,3,2,'Ut atque rerum quam dicta ut non. Possimus accusamus voluptas est explicabo facere ut. Error dolores quos ab repellendus omnis.','Fugiat cumque non et et sit sint consequuntur. Dolor iure dolorum ea aliquid debitis. Reprehenderit eum consequatur aut perspiciatis ut sapiente.',1,0,'2020-05-19 06:26:33','1995-03-06 19:45:11'),(83,1,7,'Accusamus aspernatur facilis quia et similique itaque architecto reiciendis. Saepe maxime corporis eos quo. Vel ex velit placeat atque.','Labore debitis modi impedit. Dolores hic quaerat ut quas quo. Omnis asperiores laudantium facilis ut.',0,0,'1974-03-31 14:33:04','1976-10-27 18:18:10'),(84,8,2,'Veritatis et beatae enim velit nostrum omnis. Et sequi voluptas magni eos ut qui. Illum voluptatem qui omnis.','Autem perferendis quam cum dolor rerum. Modi id corrupti voluptas et aliquid explicabo.',1,0,'1978-01-05 00:08:14','1985-12-24 23:54:55'),(85,5,9,'Dolorem officiis omnis similique minus eligendi velit in eum. Cum est at officiis impedit a. Omnis qui explicabo et magni cumque iusto et cupiditate. Autem velit illum debitis dolorem.','Repudiandae pariatur aut beatae expedita. Fugiat et quibusdam molestiae provident at. Praesentium distinctio inventore odio sapiente. Explicabo eum aut qui dolorem sed.',1,0,'1972-04-29 13:32:57','2002-05-09 23:18:00'),(86,1,3,'Facere voluptatem quidem similique tempora ut eum. Amet eos eligendi illo rerum repudiandae. Laudantium eum vero in in.','Natus esse qui quo ut. Error dicta doloremque molestiae id aut. Itaque officia sunt occaecati eum in quo eius. Soluta dolorem qui sed fugiat. Aliquam est veritatis est a aut.',0,0,'2009-12-26 02:54:57','2013-04-04 15:39:30'),(87,6,6,'Optio nesciunt consequatur nisi et dolorem qui odio sapiente. Et laborum esse aut omnis alias ipsum. Aspernatur quas id neque omnis et.','Repudiandae dolore illo dolores consequatur architecto reprehenderit. Non ut porro non aut. Repudiandae omnis nostrum sed et qui et. Culpa praesentium iste consequatur doloribus quod.',1,0,'1995-03-15 10:22:00','1992-09-17 09:13:56'),(88,2,2,'Magnam atque ut consequuntur asperiores voluptatem. Minus blanditiis dicta reiciendis. Molestias asperiores nulla et quia qui itaque.','Delectus delectus dicta doloremque totam consequatur et. Aut illo atque ut minima. Corporis accusamus iusto sint molestias.',1,0,'1978-02-15 16:10:44','1996-06-20 09:54:51'),(89,8,8,'Harum mollitia necessitatibus ratione. Rem eligendi rem sint quas sunt ut non. Assumenda architecto temporibus eos libero et est.','Excepturi tempora at assumenda excepturi enim aut enim. Quia doloribus atque consectetur eius praesentium. Nostrum in ducimus tempora qui natus molestiae delectus quia. Eum explicabo facilis quia culpa totam.',0,0,'2013-01-04 21:26:05','1991-04-08 20:03:29'),(90,6,8,'Explicabo qui velit est necessitatibus eum. Sequi eligendi fugiat adipisci praesentium distinctio quis maiores. Odio et occaecati ut fugit labore quibusdam. Illo aspernatur natus eaque.','Ad dolorum voluptatem ipsa ab et nemo qui. Et non odio tempora nam delectus rem.',0,0,'1977-06-18 22:48:21','1988-05-23 13:32:04'),(92,4,7,'Veritatis consequatur voluptas et est. Iure optio dolores tenetur tempore sed. Sed illo laudantium maxime.','Ad voluptatum ullam deserunt corrupti quod quia ut. Ab sit sit aut cupiditate ex iure aut qui. Quo voluptates ipsum quas minima unde. Ut ut neque vel veniam dolor.',1,0,'1998-05-22 18:19:17','1979-02-02 02:43:34'),(93,1,5,'Labore architecto cumque at. Labore velit deserunt voluptas enim praesentium dolor nostrum. Nobis beatae illo laudantium qui. Voluptatem facere nihil ut velit.','Nihil sapiente et placeat exercitationem perferendis in. Sint aperiam id non culpa laborum a reprehenderit. Repellat sit minima cupiditate quo delectus quia suscipit. Similique recusandae reiciendis laudantium doloremque.',0,0,'2017-04-05 11:03:40','1982-03-23 12:48:58'),(94,7,3,'Harum provident saepe quisquam fugiat in voluptate omnis. Mollitia suscipit dolorem libero aliquid necessitatibus. Ipsum cum voluptatum sed quisquam officia ipsa.','Ullam odit eveniet quam totam eveniet. Aperiam et voluptate voluptatum omnis et. Rerum vero similique error aut tempora magni. Ut doloribus perspiciatis sequi voluptatem reiciendis voluptatibus.',0,0,'1972-03-10 19:04:10','2013-12-06 17:19:15'),(95,8,9,'Eligendi quis voluptatibus qui ipsa. Modi itaque tempore omnis vero. Voluptatem voluptatibus delectus sequi et. Harum et eos ut eum pariatur.','Aperiam et accusamus neque corporis ratione fugiat id. Sint ut qui alias quidem. Architecto dolorem odio voluptas inventore animi quo. Ratione eius minima id ut molestiae excepturi.',0,0,'1997-02-16 01:20:08','1980-11-14 03:25:31'),(96,3,1,'Harum deserunt facere facere atque reiciendis et. Tempora qui ab similique aut rerum voluptatum qui. Enim qui est unde recusandae officia nesciunt nihil. Aut reprehenderit vero vel.','Iure vel sint et consectetur voluptas molestiae qui. Sed voluptas dolores quas iusto occaecati corporis. Voluptas voluptas ab accusantium totam debitis minima.',0,0,'1972-08-20 15:08:26','1971-05-01 07:20:46'),(97,8,6,'Aut consequatur qui laudantium ea et magni cumque. Velit debitis veritatis aliquam quis.','Eius eius doloremque aut dolores eveniet praesentium. Minus nesciunt nostrum quaerat expedita.',0,0,'2005-09-23 17:08:26','2020-01-10 11:49:57'),(99,2,3,'Magni non ea animi voluptas. Autem vitae aperiam ut laudantium voluptatem omnis. Delectus voluptas autem illo eos laudantium et. Autem est accusantium dolorem temporibus.','Id labore blanditiis tempora maiores repellat quia mollitia quibusdam. Odit corrupti repellat porro delectus a. Aut ea quo velit consequuntur dignissimos dicta.',1,0,'1974-11-01 03:30:10','1984-06-23 18:43:58'),(100,5,7,'Suscipit aut fugit molestiae quo labore. Sint laborum et perspiciatis et. Beatae blanditiis dolorem incidunt totam officia.','Fugiat rerum unde et ea enim provident. Deleniti nihil est et quos architecto sit labore. Accusamus repellendus necessitatibus at ad aut molestiae.',0,0,'1970-12-21 16:31:32','1979-10-21 10:03:04');
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
INSERT INTO `messages_media` VALUES (1,7,'1985-11-17 12:20:42','1995-07-19 20:38:24'),(2,7,'1999-03-19 02:15:22','1990-09-19 08:12:20'),(4,7,'1973-10-19 15:19:34','1988-05-25 23:24:50'),(5,7,'2012-03-27 09:43:27','1980-01-23 14:53:30'),(7,1,'1993-11-13 10:16:39','1991-03-05 21:56:59'),(8,1,'1987-05-12 10:02:55','2020-08-05 20:19:58');
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
  `visibility` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ссылка на вариант видимости поста',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время публикации поста',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `fk_post_user_id` (`user_id`),
  KEY `fk_post_community_id` (`community_id`),
  KEY `fk_post_visibility_id` (`visibility`),
  CONSTRAINT `fk_post_community_id` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `fk_post_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_post_visibility_id` FOREIGN KEY (`visibility`) REFERENCES `visibility` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Посты пользователей и групп';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,1,6,'Nostrum nam blanditiis et ab et. Assumenda provident modi quia quo vitae laudantium ex. Dignissimos rerum itaque sit consequatur.','qui','2003-12-21 22:21:56','1975-01-04 15:10:38'),(5,4,8,'Aut quia qui dolorem eius repellat. Quo sit dignissimos earum est.\nOdio consequatur consectetur aspernatur necessitatibus sit necessitatibus amet. Quia quis qui quisquam ullam quam.','velit','1989-12-14 13:00:35','1984-02-29 10:55:44'),(6,3,9,'Accusantium ea delectus esse accusamus. Nisi soluta autem autem et distinctio.','et','1990-02-04 00:12:00','2020-09-23 06:34:02'),(8,5,1,'Dolores hic deserunt magnam reiciendis quia. Et omnis ea voluptatibus ea eos sed laborum voluptas. Quisquam dolor aperiam iure quia. Excepturi accusamus voluptatem aut.','vel','1986-03-19 12:51:31','1993-02-11 08:04:38'),(12,5,5,'Illo magni nihil non dicta. Incidunt eveniet molestiae iusto explicabo eius laborum. Aut cupiditate repellat et vel. Distinctio et inventore suscipit.','optio','1999-05-05 14:02:53','1987-08-20 01:49:12'),(13,6,3,'Dicta voluptatem adipisci minus corporis in. Animi illo ad qui veritatis aspernatur sequi temporibus. Eius et eum voluptas ad ut. Placeat nam eum voluptas est et quo.','reprehenderit','1992-02-08 22:12:21','1984-06-05 10:58:07'),(17,5,1,'Dolores aut adipisci temporibus facilis rem. Amet dolor ipsum nemo qui at sed. Minima culpa illo qui perspiciatis dolorem id.','quos','1982-04-12 10:28:36','1993-01-25 02:12:58'),(19,7,8,'Doloremque dolorum ea magnam sit quaerat optio deleniti. Natus earum iusto itaque minus. Sint deleniti animi quis soluta nobis. Iusto ad enim sunt consectetur architecto saepe sequi.','ex','1991-11-30 08:30:14','1974-12-20 15:31:59'),(20,5,3,'Neque omnis sit qui ipsa totam vel. Labore quis ratione ut qui repellendus aut. In est pariatur rem dolore.','vel','1991-08-06 11:07:35','2004-08-11 12:56:59'),(23,3,1,'Et nesciunt iure repellat omnis dolorum fugiat dolorem. Reprehenderit aliquam qui ut asperiores quidem culpa.','quos','1981-09-27 10:08:56','2013-07-16 14:05:40'),(24,7,4,'Est in est ducimus voluptates voluptas. Et maxime et esse rerum aut et aperiam. Enim consequuntur voluptatem odit iure modi accusamus distinctio autem.','in','1983-12-23 07:59:44','1994-08-14 11:19:28'),(26,2,2,'Vero pariatur minus nostrum vitae aut temporibus. Quasi et laudantium et beatae aut asperiores corporis.','ducimus','1972-01-24 04:54:16','1999-04-23 19:23:58'),(27,8,4,'Commodi voluptatem quisquam est ratione dolorem sunt dicta. Repellendus rerum possimus esse minima possimus voluptatem omnis. Asperiores voluptatem in qui cumque numquam repellat.','incidunt','1986-12-01 18:28:47','1987-02-08 04:04:58'),(30,1,1,'Est porro aliquid asperiores laborum harum. Est totam ratione id voluptatem minima aut. Eveniet id adipisci magnam doloremque.','exercitationem','2002-04-07 11:50:00','2004-05-21 11:41:19'),(32,5,6,'Alias in est quam nobis et et eaque est. Consequatur et dolorem in nisi repellendus voluptatem.','ut','2004-09-02 11:24:33','1985-04-17 04:03:26'),(33,5,1,'Modi voluptatem itaque necessitatibus pariatur est blanditiis. Dicta fugiat non maiores temporibus et. Et est molestiae corporis est delectus voluptatem qui. Totam quo neque minima ea veritatis fuga.','rerum','2012-12-06 11:58:13','1992-03-28 18:15:11'),(34,9,4,'Sint quo corporis a est ut incidunt tempore. Dolorum dolores qui officia molestiae nisi delectus. Delectus enim sit perferendis est sunt.','ut','2004-01-31 19:14:44','1981-05-07 12:35:01'),(35,6,7,'Corrupti impedit nulla omnis est qui. Cupiditate error quas suscipit vel ex aut. Maiores at quasi consequatur esse expedita illum officia.','asperiores','2011-08-08 20:45:16','1977-09-23 13:12:18'),(36,2,1,'Est veniam est soluta porro quo est rerum. Sint provident quas eaque enim dolor dolorum. Consequatur architecto odit quis molestias.','et','2017-06-14 18:06:25','2006-10-22 21:24:22'),(38,4,4,'Hic adipisci natus fugiat ut. Accusantium dolores quae expedita laborum ipsum autem aut.','omnis','1992-12-17 18:03:51','2006-01-05 17:34:11'),(40,6,3,'Iste distinctio nam ipsa eum consequuntur magnam. Sit nostrum iure accusamus provident vitae debitis qui. Ipsa odit non qui optio delectus ut. Autem reprehenderit consequatur quae quidem dolor.','accusantium','2009-09-04 10:30:30','2001-11-29 05:26:27'),(42,2,5,'Velit aut qui accusantium quis. Molestiae dignissimos quo enim explicabo nobis commodi occaecati. Unde nemo sunt molestiae magnam maxime.','quos','2000-12-07 02:57:33','1989-11-10 21:16:40'),(44,4,3,'Necessitatibus placeat perspiciatis harum consequatur minus vitae voluptas. Repellat sunt beatae quo est perspiciatis repellendus autem. Perspiciatis dolore officia velit et quo adipisci.','est','1971-05-04 08:27:43','2013-02-22 05:41:58'),(46,2,1,'Similique nisi aspernatur est error officiis consequuntur doloremque sapiente. Minima impedit porro omnis placeat qui repellat et.','ut','2016-12-06 21:10:14','2006-03-01 18:48:40'),(47,4,3,'Sapiente sequi inventore ex qui et consequatur est. Dolor voluptatem blanditiis omnis dolores deleniti. Qui fuga illo exercitationem sit. Qui officia in omnis tempore impedit.','perspiciatis','1983-05-01 07:54:56','1972-01-14 11:59:36'),(49,2,9,'Aut et non odit debitis ut aut repellat. Saepe maxime similique iusto veritatis nostrum quia. Dolorem dolorem cumque labore dolorem dolor consequatur.','voluptatem','1979-03-18 13:56:08','2001-09-26 13:09:32'),(50,5,2,'Omnis porro molestiae repellendus est et adipisci dolores aut. Placeat velit vitae similique voluptas. Et cupiditate quibusdam ducimus impedit tempora repudiandae. Iusto et aut quibusdam omnis.','cupiditate','1986-12-05 00:23:40','1990-10-19 00:20:56'),(52,7,2,'Sit totam in ipsum. Sed tenetur tempora sit totam. Id minus similique eaque aut facilis qui.','laboriosam','2014-04-04 14:45:10','1998-12-02 16:15:39'),(53,6,6,'Vel est sint non quaerat tenetur. Iste nulla id ut soluta laudantium asperiores. Repudiandae recusandae perferendis reiciendis necessitatibus et modi ab est.','ex','1976-05-16 10:18:48','2010-01-28 03:54:42'),(54,1,8,'Quis voluptas quos eius voluptatum aut est qui. Iste non sed labore rerum. Veritatis eos doloremque occaecati et.','quia','2015-02-08 00:04:47','1997-07-30 23:51:57'),(56,9,2,'Nesciunt magnam sed aut et. Rem consequuntur minima minima neque minima. Laborum quo ducimus sit exercitationem et non.\nItaque pariatur aspernatur rerum odit repudiandae. Numquam eveniet qui aut ad.','et','2005-01-15 18:06:43','2013-12-25 15:31:33'),(58,2,1,'Dolorem ut provident et doloribus assumenda. Dolor est eligendi recusandae non accusantium ut tempore magni. Placeat hic consequatur ut et laboriosam.','aut','1990-08-24 12:59:28','2011-12-25 18:35:37'),(60,7,9,'Voluptas amet deleniti illum omnis nobis. Aut qui quidem beatae. Quo cum fugiat voluptatum mollitia qui eum cupiditate. Sunt atque et earum neque veritatis.','non','1997-03-01 02:05:51','1979-09-25 04:08:42'),(61,5,3,'Eum qui ut aperiam consequatur. Molestiae velit praesentium maiores voluptas. Expedita et quidem ab optio et. Autem dolore in repudiandae autem.','reiciendis','1994-05-16 04:18:42','1984-01-05 14:29:42'),(62,6,5,'Voluptatibus sint explicabo ipsum nobis a rerum. Corporis dolores nam voluptatem. Ex est similique et non et.','et','1975-04-04 20:20:14','2018-07-13 03:34:46'),(64,9,2,'Fugit facilis nobis voluptate. Iusto amet placeat ut aut ratione officia atque qui. Eum et perferendis ea sint sint cum. Voluptas voluptatem perspiciatis ab maxime.','aut','2015-04-17 03:51:32','1990-12-20 22:22:13'),(66,8,9,'Ab repellendus porro minus quis doloremque error. A modi expedita magni. Quam nobis ipsa sed natus.','quia','1980-05-14 02:09:17','2019-07-12 08:49:20'),(67,1,7,'Quisquam id voluptatem eligendi quis nesciunt ipsum. Recusandae fuga ullam illum quo sit.','laudantium','2018-04-05 16:25:08','1981-11-15 08:59:30'),(69,5,7,'Pariatur voluptatibus est asperiores et voluptatum. Voluptates in autem ducimus eos. Ipsum sint ipsam blanditiis velit qui sit placeat. Inventore sed cum id pariatur aspernatur dolore.','consequatur','1997-07-29 18:41:32','2014-11-18 08:51:49'),(70,1,6,'Labore atque sequi vero unde aut rerum et. Cupiditate excepturi ad incidunt. Quia fuga et expedita quia. Qui aliquam sed excepturi et eaque dignissimos ipsa.','optio','1970-08-10 21:16:54','1993-11-15 15:09:31'),(71,4,4,'Aliquid nihil ab mollitia qui vero. Rerum est saepe eius labore molestias eveniet. Excepturi itaque consequuntur illo. Dolor aut ex non dolore vitae.','quam','1976-10-05 11:04:27','1980-12-30 02:28:38'),(72,4,6,'Quia repellat saepe aut dolores numquam rerum autem. Voluptas mollitia qui dignissimos quo quia aut. Aut quia itaque natus animi voluptatum.','unde','2011-05-13 14:56:01','1995-11-06 02:13:35'),(75,2,5,'Voluptas tempora et odio explicabo accusamus voluptas porro nihil. Quia ab et pariatur consequatur laudantium quia veniam. In et labore fugiat in.','accusantium','2008-02-23 15:59:49','1976-12-01 08:10:36'),(79,6,6,'Cumque voluptatibus suscipit in occaecati rerum voluptatem. Quae deserunt ullam id ut. Praesentium aliquam nam eveniet sequi.','cupiditate','1987-03-09 08:09:19','2006-03-31 14:43:01'),(80,5,5,'Consectetur numquam est id quia cum porro. Soluta blanditiis et fugit labore. Sit voluptatem doloremque consectetur rerum accusantium illum cum earum.','et','1994-12-09 06:15:18','2010-10-05 05:37:49'),(85,2,5,'Et quam aut aspernatur qui optio non nam explicabo. In quos quasi accusantium necessitatibus. Vel unde aliquam illum hic consectetur. Animi dolorem reprehenderit itaque veritatis sunt.','exercitationem','1977-05-08 21:40:35','1975-06-04 23:33:16'),(88,1,3,'Sit nostrum iusto ducimus laboriosam. Dicta doloribus possimus quidem nisi. Consequatur in fugit cum hic.','et','2017-05-06 10:50:46','1973-01-07 00:39:32'),(89,9,2,'Et placeat dolor magni nisi saepe et nulla aut. Repudiandae accusamus molestias nisi et iure sed deleniti. Reprehenderit veritatis ea voluptatem aut rerum sed.','ex','2003-12-19 07:41:50','1972-10-16 01:20:35'),(90,7,9,'Nostrum accusantium sed sint qui iure odit. Omnis enim praesentium hic in praesentium maiores. Blanditiis est non corrupti sunt. Veritatis ut consequuntur animi consequatur accusamus.','aut','2021-01-01 00:28:49','1984-10-18 11:35:57'),(93,6,4,'Minima voluptatem et laudantium adipisci modi. Enim est harum qui aliquam. Eligendi consequuntur suscipit recusandae deserunt blanditiis aut.','quis','1983-06-05 00:59:36','2014-03-18 13:28:46'),(98,3,6,'Eum odio velit omnis quaerat eum enim. Quos molestias molestiae ipsum earum esse magnam labore. Tempore qui dolorem quo atque totam rem. Exercitationem reiciendis dolores quo cupiditate alias qui.','voluptatem','2015-05-08 03:28:41','2016-06-22 21:49:56'),(99,9,4,'Aut aut deleniti alias libero eos vitae. Cumque consequatur eos sed neque et. Dolores nihil nostrum repellat earum sed et. Autem aut exercitationem doloremque qui repellat.','consequatur','1985-09-16 08:02:49','2015-05-28 00:20:11'),(100,4,1,'Adipisci quasi autem sed ab nulla. Eveniet eos quidem eum eum omnis sint. Qui quisquam occaecati voluptatibus eum eligendi nihil.','velit','1989-11-20 02:54:06','1972-05-22 19:53:04');
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
INSERT INTO `posts_media` VALUES (5,1,'1999-04-24 18:39:19','2010-01-03 08:21:51'),(6,1,'1973-07-18 05:33:45','2013-01-18 03:56:58'),(6,7,'1982-05-27 22:55:00','1980-08-19 18:07:40'),(8,1,'1980-11-02 09:06:16','1974-04-04 08:39:23');
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
INSERT INTO `profiles` VALUES (1,1,'Justyn','West','2018-07-03','33635771','Antoniettaview','OFFLINE','2000-06-05 13:52:03','2021-07-05 16:31:11','F'),(2,2,'Giovanna','Wisoky','1991-09-24','880','Jakubowskiton','ONLINE','1988-10-02 07:27:43','2021-07-05 16:31:11','F'),(3,3,'Trevion','Wolf','2015-08-21','6189','East Soledad','ONLINE','2017-06-09 22:21:27','2021-07-05 16:31:11','M'),(4,4,'Timmy','Barrows','2006-05-20','','Bernitaton','ONLINE','2018-01-13 16:53:30','2021-07-05 16:31:11','F'),(5,5,'Mazie','Reynolds','1990-12-20','','New Yolanda','INACTIVE','1991-11-21 23:35:36','2021-07-05 16:31:11','M'),(6,6,'Kenyon','Hammes','1983-02-15','','Port Jayme','ONLINE','2000-04-29 09:26:11','2021-07-05 16:31:11','F'),(7,7,'Alisha','Bartell','2011-07-01','23','Lucilefort','OFFLINE','2012-03-14 06:50:53','2021-07-05 16:31:11','M'),(8,8,'Ward','King','1976-05-10','3','Quitzontown','OFFLINE','1970-10-05 21:12:52','2021-07-05 16:31:11','M'),(9,9,'Hans','Schiller','2002-06-09','533','Dwightfort','ONLINE','1992-11-10 12:00:23','2021-07-05 16:31:11','F'),(10,10,'Gertrude','Prosacco','2002-03-19','5275964','Morarshire','INACTIVE','1993-01-28 19:41:13','2021-07-05 16:31:11','M');
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
INSERT INTO `visibility` VALUES ('accusamus'),('accusantium'),('asperiores'),('aspernatur'),('assumenda'),('at'),('atque'),('aut'),('autem'),('consectetur'),('consequatur'),('consequuntur'),('cupiditate'),('deleniti'),('deserunt'),('dolore'),('doloremque'),('dolores'),('doloribus'),('dolorum'),('ducimus'),('ea'),('earum'),('eius'),('enim'),('est'),('et'),('eveniet'),('ex'),('exercitationem'),('explicabo'),('fuga'),('id'),('impedit'),('in'),('incidunt'),('inventore'),('ipsa'),('ipsam'),('ipsum'),('iste'),('itaque'),('labore'),('laboriosam'),('laudantium'),('magnam'),('magni'),('minima'),('nam'),('natus'),('nemo'),('nesciunt'),('nihil'),('non'),('nostrum'),('numquam'),('occaecati'),('officia'),('omnis'),('optio'),('perspiciatis'),('porro'),('possimus'),('provident'),('quae'),('quaerat'),('quam'),('quas'),('qui'),('quia'),('quis'),('quo'),('quod'),('quos'),('ratione'),('reiciendis'),('repellat'),('reprehenderit'),('repudiandae'),('rerum'),('sapiente'),('sed'),('sequi'),('soluta'),('sunt'),('tempore'),('temporibus'),('totam'),('ullam'),('unde'),('ut'),('vel'),('velit'),('veritatis'),('vero'),('voluptate'),('voluptatem'),('voluptates'),('voluptatibus'),('voluptatum');
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

-- Dump completed on 2021-07-07 15:10:43
