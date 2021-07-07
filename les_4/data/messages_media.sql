#
# TABLE STRUCTURE FOR: messages_media
#

DROP TABLE IF EXISTS `messages_media`;

CREATE TABLE `messages_media` (
  `message_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор сообшения',
  `media_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на идентификатор медиа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`message_id`,`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Связь сообщений и медиа';

INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (0, 1, '1977-10-18 04:19:11', '2012-06-29 09:27:28');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (0, 2, '2003-03-10 07:19:14', '1999-04-30 19:23:48');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (0, 4, '1990-10-22 22:31:53', '2010-12-06 01:40:48');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (0, 5, '1987-05-02 05:28:02', '1970-07-15 10:25:30');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (0, 7, '1976-02-27 03:50:52', '2010-10-29 08:40:29');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (1, 0, '1988-03-22 07:23:40', '2008-08-21 20:30:02');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (1, 4, '1998-01-16 23:22:38', '2014-09-10 07:58:50');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (1, 6, '2009-01-31 14:11:32', '2010-03-16 22:34:42');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (1, 7, '1985-11-17 12:20:42', '1995-07-19 20:38:24');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (2, 3, '1981-08-20 04:36:47', '1981-10-02 06:54:51');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (2, 4, '2018-10-19 23:35:27', '1999-08-28 05:15:52');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (2, 6, '1986-12-27 04:33:41', '1972-01-22 16:36:56');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (2, 7, '1999-03-19 02:15:22', '1990-09-19 08:12:20');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (3, 5, '2008-10-09 15:58:55', '1994-12-20 23:54:57');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (3, 6, '1973-10-22 18:21:34', '2011-04-29 03:28:56');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (3, 8, '1984-12-08 15:20:04', '2010-07-06 06:01:28');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (4, 3, '1995-05-10 10:39:27', '2016-05-22 23:55:13');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (4, 5, '1978-05-04 18:11:22', '1976-12-07 19:39:43');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (4, 7, '1973-10-19 15:19:34', '1988-05-25 23:24:50');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (4, 9, '1987-08-26 15:50:41', '1979-04-26 03:37:29');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (5, 3, '2019-02-03 09:22:20', '2010-10-01 20:14:18');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (5, 5, '1993-04-27 00:15:36', '1988-08-18 22:28:47');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (5, 7, '2012-03-27 09:43:27', '1980-01-23 14:53:30');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (6, 4, '1995-10-20 10:56:05', '1971-09-19 02:29:05');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (6, 9, '2005-01-25 08:01:46', '1984-03-17 17:54:33');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (7, 0, '2005-01-02 01:01:18', '1998-02-04 15:09:25');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (7, 1, '1993-11-13 10:16:39', '1991-03-05 21:56:59');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (8, 0, '1995-06-23 12:37:29', '1981-10-23 05:16:02');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (8, 1, '1987-05-12 10:02:55', '2020-08-05 20:19:58');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (8, 5, '2021-04-18 20:14:18', '1991-03-20 17:55:28');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (8, 6, '1978-09-05 21:45:58', '1972-02-08 08:07:46');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 2, '1971-09-20 07:02:08', '1982-12-15 10:40:23');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 3, '1985-07-31 09:08:31', '2008-12-01 21:30:18');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 4, '1983-02-04 09:01:55', '2014-12-05 15:05:16');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 6, '1971-02-04 00:26:40', '2017-05-09 03:05:38');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 8, '1972-02-08 22:11:01', '2017-07-30 10:28:42');
INSERT IGNORE INTO `messages_media` (`message_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 9, '1994-08-12 00:53:07', '1980-08-09 12:11:02');


