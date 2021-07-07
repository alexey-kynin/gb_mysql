#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status` enum('FRIENDSHIP','FOLLOWING','BLOCKED') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Cтатус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы пользователей';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (0, 7, 'BLOCKED', '1972-07-21 13:36:40', '1973-09-20 02:41:04', '2006-12-02 03:05:33', '1972-01-03 15:41:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 'FRIENDSHIP', '1995-06-22 19:40:59', '1979-11-06 00:03:08', '1971-10-30 21:15:22', '2004-02-27 13:47:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 1, 'FOLLOWING', '2000-05-05 06:44:51', '1977-06-18 20:49:12', '1972-06-18 18:18:53', '2000-02-18 23:13:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 5, 'FOLLOWING', '2001-06-16 06:50:26', '1974-02-04 06:15:05', '1985-09-17 18:45:01', '2017-09-02 08:30:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 6, 'FOLLOWING', '1987-02-19 14:18:22', '2000-07-02 01:33:20', '1982-03-18 10:57:53', '2011-03-04 21:20:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 0, 'BLOCKED', '1986-06-14 01:18:35', '2003-10-18 01:03:29', '1996-01-04 10:13:07', '2005-02-23 11:19:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 3, 'FRIENDSHIP', '1990-11-23 21:19:56', '1998-06-01 09:08:36', '1995-08-17 02:28:04', '2004-08-14 03:13:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 5, 'FRIENDSHIP', '1990-02-17 11:34:19', '1985-12-15 05:50:15', '2018-10-05 11:12:14', '1973-07-27 22:28:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 6, 'FOLLOWING', '1980-04-06 11:43:03', '2017-09-04 03:22:47', '1970-04-27 09:14:35', '1975-01-15 11:01:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 8, 'FRIENDSHIP', '2012-11-14 08:26:39', '1995-11-11 06:27:33', '1989-01-30 17:24:08', '1983-10-18 14:32:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 'FOLLOWING', '1975-02-08 19:24:00', '1979-12-08 08:12:43', '1999-11-27 10:36:59', '2019-04-24 01:49:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 4, 'BLOCKED', '2004-10-10 22:50:33', '2015-04-11 13:24:01', '1977-10-28 00:19:25', '2017-10-28 02:10:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 8, 'BLOCKED', '2011-04-07 12:51:15', '1976-11-13 22:10:45', '1977-09-10 13:53:00', '1998-01-17 01:33:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 8, 'FOLLOWING', '2009-07-09 20:17:22', '2007-08-11 11:36:49', '2000-02-08 22:29:14', '2018-07-31 07:48:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 0, 'FOLLOWING', '1978-09-16 01:17:47', '1999-10-14 22:02:57', '1976-03-20 12:43:44', '1999-01-12 02:26:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 2, 'FOLLOWING', '1977-03-02 20:25:23', '2014-11-28 14:28:14', '1994-07-22 18:52:45', '2005-11-13 12:47:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 3, 'FOLLOWING', '1993-02-10 18:31:11', '1998-11-11 05:51:52', '2005-09-28 06:00:23', '2011-12-12 05:26:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 5, 'FRIENDSHIP', '2008-09-15 07:05:09', '1992-07-31 23:28:53', '1984-12-31 21:26:35', '2006-04-09 09:39:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 2, 'FRIENDSHIP', '1997-10-22 20:03:32', '1991-01-19 01:23:38', '1971-01-22 10:21:18', '1985-10-21 02:26:01');


