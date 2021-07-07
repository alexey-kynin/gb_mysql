#
# TABLE STRUCTURE FOR: posts_media
#

DROP TABLE IF EXISTS `posts_media`;

CREATE TABLE `posts_media` (
  `post_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор поста',
  `media_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор медиа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`post_id`,`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Связь постов и медиа';

INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (0, 2, '1976-09-06 20:38:19', '1976-08-27 09:13:54');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (0, 3, '1974-05-13 02:14:37', '2011-07-22 06:35:50');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (0, 4, '1997-05-04 08:39:09', '2012-12-30 23:02:26');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (0, 5, '2006-09-16 12:41:39', '1975-07-08 12:58:51');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (0, 6, '1985-04-02 18:32:54', '1978-10-05 23:20:08');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (0, 9, '1970-05-27 23:59:50', '1980-01-03 21:36:40');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (1, 0, '2019-03-25 07:05:11', '2017-03-11 08:48:08');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (1, 1, '1976-10-04 15:18:28', '2017-12-21 15:07:45');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (1, 3, '1975-01-16 17:38:55', '2012-01-19 14:24:18');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (1, 5, '1975-11-18 05:21:34', '2015-08-27 16:18:58');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (1, 6, '1989-03-20 20:07:06', '1992-09-02 01:59:56');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (2, 2, '1980-01-11 00:34:58', '2021-06-01 23:39:36');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (2, 3, '1987-12-04 00:12:52', '1993-01-19 13:46:56');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (2, 4, '1977-07-24 17:55:59', '1983-04-20 05:35:21');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (2, 8, '1982-12-21 20:17:28', '1990-04-07 12:02:21');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (3, 0, '2008-02-23 04:39:52', '2007-05-29 01:29:44');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (3, 1, '1987-03-30 16:30:04', '2013-04-26 06:17:28');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (3, 2, '1979-11-27 11:55:02', '1991-10-19 01:46:13');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (3, 4, '1993-03-25 16:24:35', '2020-05-02 06:50:56');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (3, 6, '2016-06-23 00:41:16', '1972-04-23 00:41:30');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (3, 8, '2021-05-21 15:05:13', '2017-03-24 18:06:18');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (4, 0, '1987-03-19 03:17:01', '2015-06-06 16:29:37');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (4, 1, '2020-07-08 11:40:48', '2004-05-21 12:18:30');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (4, 2, '1988-06-13 04:12:24', '1982-09-20 19:03:44');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (4, 5, '1981-09-05 22:09:21', '1984-02-29 08:18:42');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (4, 7, '1975-04-18 23:41:27', '2013-12-12 13:51:32');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (4, 9, '2003-03-14 23:38:15', '1978-07-13 08:48:05');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (5, 0, '2008-04-29 05:21:41', '1983-12-29 23:01:37');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (5, 1, '1999-04-24 18:39:19', '2010-01-03 08:21:51');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (5, 2, '2011-07-26 08:17:48', '2001-12-16 07:58:07');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (5, 4, '1994-09-29 04:00:46', '1989-07-22 04:42:37');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (5, 6, '1993-10-22 12:49:00', '2021-03-23 19:43:01');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (5, 8, '1980-12-25 07:16:30', '1980-11-13 00:42:55');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (6, 1, '1973-07-18 05:33:45', '2013-01-18 03:56:58');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (6, 2, '1979-07-09 07:32:16', '1978-08-01 23:06:32');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (6, 3, '1982-07-03 22:49:05', '2001-02-08 11:55:59');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (6, 4, '2010-05-27 18:47:25', '1979-09-28 01:21:36');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (6, 5, '1970-10-09 22:09:19', '1984-06-04 06:58:28');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (6, 6, '2004-02-15 15:41:05', '1995-07-14 17:24:17');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (6, 7, '1982-05-27 22:55:00', '1980-08-19 18:07:40');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (7, 1, '1992-03-29 03:35:22', '2017-02-15 05:23:35');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (7, 2, '1985-02-10 12:56:03', '1999-06-18 17:53:13');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (7, 3, '2019-08-14 08:36:13', '2008-09-28 06:58:58');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (7, 4, '1993-09-27 10:06:04', '1995-04-12 10:43:21');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (7, 5, '1991-03-13 01:46:28', '1994-01-22 02:56:13');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (7, 6, '2004-07-03 06:47:57', '1989-02-10 22:51:14');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (7, 7, '2013-09-24 23:22:21', '1982-12-20 11:26:07');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (7, 8, '1984-02-26 09:22:03', '1970-06-09 20:55:40');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (7, 9, '1985-03-12 22:50:46', '1971-07-30 04:38:11');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (8, 1, '1980-11-02 09:06:16', '1974-04-04 08:39:23');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (8, 2, '2012-08-31 06:01:47', '1998-01-31 08:18:00');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (8, 3, '2006-06-11 00:46:21', '1993-12-22 08:52:36');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (8, 5, '2014-09-12 15:07:17', '1998-07-07 23:20:22');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (8, 6, '1990-03-18 17:28:03', '2020-01-22 06:22:48');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (8, 9, '1980-06-12 20:05:08', '1987-11-23 07:03:06');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 0, '2000-04-15 10:05:24', '1976-06-06 16:55:20');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 1, '1994-03-02 21:20:05', '1972-05-28 10:26:11');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 3, '1998-12-17 03:10:49', '1993-02-10 12:57:55');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 6, '2005-09-18 16:13:54', '2003-02-08 00:59:03');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 7, '1990-02-12 12:25:57', '1996-05-09 01:04:57');
INSERT IGNORE INTO `posts_media` (`post_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 8, '2008-12-02 09:21:53', '1983-08-07 15:21:16');


