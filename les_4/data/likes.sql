#
# TABLE STRUCTURE FOR: likes
#

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя лайкнувшего пост',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на другую сущность',
  `entity_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ссылка на медиа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица лайков';

INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (1, 3, 7, 'dolorem', '1979-03-06 14:58:02', '1978-04-26 06:43:55');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (2, 8, 6, 'consequatur', '2016-11-06 05:41:07', '1980-07-25 20:54:24');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (3, 9, 3, 'animi', '2012-06-03 05:48:48', '2008-08-16 01:28:05');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (4, 4, 7, 'autem', '2005-07-15 14:11:41', '1990-01-30 12:10:22');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (5, 0, 7, 'et', '2001-03-30 15:09:00', '1989-08-11 22:09:32');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (6, 6, 6, 'optio', '1982-12-05 01:35:40', '2010-06-29 23:31:42');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (7, 9, 1, 'facere', '1995-02-07 09:05:53', '1986-05-31 05:00:29');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (8, 6, 3, 'facilis', '1996-05-10 15:06:57', '2015-05-01 21:45:53');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (9, 7, 4, 'quae', '2020-02-13 12:15:36', '2012-01-03 23:40:40');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (10, 2, 9, 'rem', '1978-05-25 07:47:53', '1994-08-05 06:22:50');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (11, 3, 5, 'eum', '1988-03-26 00:28:26', '2003-08-12 00:36:13');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (12, 2, 6, 'esse', '2001-07-03 02:00:50', '2003-11-05 03:06:56');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (13, 4, 2, 'aspernatur', '1974-08-07 22:02:41', '1998-10-05 02:53:32');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (14, 6, 2, 'cum', '2015-01-22 07:03:00', '1977-11-13 01:37:05');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (15, 4, 5, 'sapiente', '2002-03-07 17:50:45', '1996-06-28 23:16:00');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (16, 6, 7, 'expedita', '1979-02-26 14:58:40', '1979-04-20 14:42:03');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (17, 0, 7, 'iure', '1978-05-19 09:27:52', '1975-10-31 14:01:35');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (18, 7, 3, 'itaque', '1980-08-14 17:40:37', '2003-10-17 13:43:53');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (19, 1, 0, 'expedita', '1999-10-25 02:50:51', '1992-09-29 12:46:31');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (20, 2, 6, 'eum', '2001-09-25 05:16:55', '1984-08-23 04:58:39');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (21, 8, 2, 'quo', '1976-01-30 09:05:54', '1978-07-04 22:45:36');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (22, 7, 9, 'earum', '2004-02-04 03:13:58', '2001-07-24 22:45:14');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (23, 8, 6, 'asperiores', '2004-10-04 16:14:09', '2017-08-06 03:10:09');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (24, 6, 1, 'voluptatem', '1997-11-07 08:13:46', '2010-03-06 23:39:39');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (25, 9, 4, 'commodi', '2014-12-21 04:52:13', '1991-08-25 08:56:17');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (26, 4, 4, 'aut', '1978-07-30 10:53:31', '2004-05-31 12:20:27');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (27, 3, 0, 'deleniti', '2010-06-09 22:25:12', '2019-07-19 00:27:40');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (28, 4, 2, 'ratione', '1976-11-04 06:23:22', '1998-06-13 23:43:55');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (29, 0, 3, 'est', '1986-03-18 22:19:56', '1998-08-27 01:48:12');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (30, 4, 6, 'est', '1986-02-27 17:12:00', '1983-02-26 20:26:02');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (31, 0, 1, 'qui', '1987-02-20 05:26:34', '2015-12-10 17:21:54');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (32, 6, 1, 'qui', '2003-02-04 23:16:09', '2017-08-17 10:23:44');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (33, 4, 6, 'occaecati', '2006-02-21 20:37:22', '1979-12-11 06:48:12');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (34, 5, 5, 'quis', '2020-07-15 10:53:11', '2000-02-29 11:37:14');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (35, 6, 6, 'temporibus', '2002-02-14 05:32:59', '2013-05-26 18:09:26');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (36, 3, 0, 'reiciendis', '2001-02-14 17:26:07', '2015-08-27 23:49:24');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (37, 1, 7, 'architecto', '2000-12-21 09:53:07', '2018-07-12 18:53:24');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (38, 4, 8, 'qui', '1980-01-28 04:10:34', '1980-07-11 19:33:43');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (39, 4, 8, 'quibusdam', '1978-10-11 20:17:32', '1996-10-02 02:11:49');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (40, 6, 8, 'dolor', '1970-12-11 03:01:12', '2007-04-01 04:08:44');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (41, 1, 1, 'nesciunt', '1999-10-01 23:09:05', '1982-11-11 10:35:17');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (42, 3, 6, 'et', '1986-08-01 01:02:57', '2000-11-04 09:33:01');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (43, 5, 9, 'tenetur', '1981-07-19 22:24:46', '2004-12-09 20:11:22');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (44, 0, 9, 'veritatis', '2002-01-15 18:32:21', '2003-10-31 01:56:24');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (45, 6, 4, 'nulla', '1982-12-13 04:11:01', '1974-11-04 12:38:45');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (46, 2, 6, 'nulla', '2020-04-18 15:30:40', '2001-08-22 08:30:53');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (47, 7, 3, 'totam', '1971-05-11 07:34:55', '2008-05-31 08:03:13');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (48, 4, 2, 'est', '1981-05-29 11:33:45', '2018-05-14 03:14:50');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (49, 6, 3, 'aut', '2020-10-19 11:33:38', '1970-06-23 09:13:29');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (50, 7, 4, 'quisquam', '1992-12-13 23:44:06', '2005-09-01 02:27:35');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (51, 4, 8, 'molestiae', '1994-05-21 18:07:35', '2016-01-10 18:12:30');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (52, 2, 4, 'eum', '1977-10-17 16:42:05', '1982-12-26 20:36:45');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (53, 0, 8, 'aut', '2003-02-08 15:23:56', '2003-12-17 10:16:44');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (54, 8, 5, 'pariatur', '1985-01-09 00:48:58', '1994-03-31 03:09:04');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (55, 0, 9, 'dolores', '1980-05-17 14:45:58', '1991-07-13 11:43:41');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (56, 3, 4, 'ratione', '1994-03-15 03:24:21', '1991-05-10 13:58:18');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (57, 7, 1, 'fugiat', '2020-07-06 20:22:08', '2016-10-09 09:52:05');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (58, 3, 6, 'voluptas', '1996-03-06 02:50:28', '2008-05-11 00:57:42');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (59, 0, 8, 'ut', '2018-05-31 19:19:55', '2002-11-28 09:47:16');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (60, 2, 9, 'autem', '1980-03-15 11:23:02', '1984-05-13 13:56:32');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (61, 4, 1, 'exercitationem', '1993-12-04 05:05:53', '2015-11-30 05:07:17');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (62, 8, 1, 'perferendis', '1976-01-20 04:25:16', '2008-02-03 03:56:23');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (63, 5, 3, 'iusto', '2008-07-28 18:14:01', '1989-08-25 15:04:10');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (64, 2, 3, 'sed', '2020-01-20 09:58:42', '1976-08-30 12:20:26');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (65, 8, 2, 'minus', '2003-02-11 09:13:15', '2007-01-07 17:52:49');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (66, 8, 8, 'inventore', '2020-04-09 15:12:51', '1996-05-11 15:46:16');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (67, 0, 7, 'dolor', '2012-07-31 00:21:03', '1999-01-30 09:28:04');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (68, 9, 6, 'porro', '2013-10-06 18:32:55', '1973-08-14 00:16:32');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (69, 3, 8, 'quia', '2000-04-20 10:10:53', '1982-10-20 07:56:22');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (70, 4, 8, 'est', '1972-08-24 12:43:31', '1993-02-19 10:21:32');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (71, 7, 7, 'nam', '2002-11-12 07:37:47', '1988-10-04 05:56:00');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (72, 2, 7, 'cupiditate', '2012-07-27 10:30:06', '1994-09-12 06:01:09');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (73, 0, 4, 'autem', '2002-10-31 23:51:35', '2015-12-09 22:26:28');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (74, 4, 7, 'et', '1993-08-02 00:34:06', '2018-01-29 12:25:46');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (75, 5, 8, 'quasi', '1985-08-17 15:25:55', '2013-04-12 21:47:23');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (76, 3, 7, 'quisquam', '1983-02-01 11:10:50', '1988-04-12 13:39:29');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (77, 5, 8, 'pariatur', '2013-06-09 04:35:45', '1975-11-29 16:56:05');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (78, 4, 0, 'odit', '1974-10-29 20:08:20', '1970-11-25 07:11:54');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (79, 9, 7, 'temporibus', '1996-06-12 01:37:39', '1984-06-17 22:28:53');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (80, 8, 0, 'adipisci', '1999-08-25 07:27:14', '1980-10-15 05:17:18');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (81, 2, 4, 'explicabo', '2015-03-22 11:15:59', '2003-12-16 06:23:37');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (82, 4, 8, 'nostrum', '1995-12-19 23:43:55', '1995-08-13 10:44:16');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (83, 7, 0, 'consectetur', '1995-04-03 23:14:53', '1977-07-12 21:50:38');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (84, 5, 0, 'aut', '1987-09-17 18:48:37', '2018-09-29 23:34:32');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (85, 7, 0, 'accusantium', '1975-01-28 10:06:04', '2010-07-09 12:54:53');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (86, 1, 3, 'ipsa', '2009-03-11 14:48:53', '1996-08-09 12:19:40');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (87, 8, 5, 'molestiae', '1974-01-19 00:12:14', '2002-07-24 05:21:05');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (88, 3, 9, 'autem', '1976-03-12 21:00:15', '1978-09-16 18:01:01');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (89, 5, 4, 'voluptatem', '2000-01-06 19:33:36', '1975-11-20 03:59:39');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (90, 7, 7, 'enim', '2016-07-17 05:34:02', '1984-05-02 18:50:40');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (91, 2, 5, 'veritatis', '1989-07-29 10:42:18', '2007-12-23 16:41:33');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (92, 4, 8, 'ratione', '2012-01-03 11:18:51', '1970-02-19 15:35:31');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (93, 1, 5, 'error', '2001-09-10 14:37:44', '2014-08-16 07:32:05');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (94, 2, 5, 'ex', '2003-09-28 19:01:19', '2001-09-09 16:04:53');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (95, 0, 8, 'magnam', '2019-05-18 18:13:37', '1980-08-13 03:26:52');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (96, 3, 8, 'nesciunt', '1981-11-19 03:00:10', '2020-09-12 22:43:02');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (97, 2, 6, 'dolorum', '2005-10-05 01:55:32', '2019-10-17 00:57:59');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (98, 6, 7, 'nam', '1974-04-05 05:49:47', '1995-10-12 22:59:04');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (99, 8, 8, 'voluptate', '2001-07-30 19:09:32', '1975-01-13 03:51:11');
INSERT IGNORE INTO `likes` (`id`, `from_user_id`, `entity_id`, `entity_name`, `created_at`, `updated_at`) VALUES (100, 2, 9, 'dolore', '1988-09-28 20:35:29', '1999-06-28 02:15:38');


