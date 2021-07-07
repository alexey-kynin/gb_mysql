#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `media_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ссылка на тип контента',
  `link` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ссылка на файл',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиа';

INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (1, 'nisi', 'http://www.green.com/', '1992-02-09 17:25:19', '1981-03-11 06:46:41');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (2, 'vel', 'http://www.keebler.com/', '2007-03-17 06:56:30', '1979-03-28 20:40:05');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (3, 'tempora', 'http://greenfelder.com/', '1988-12-14 11:52:04', '1982-03-26 22:14:06');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (4, 'mollitia', 'http://www.jacobi.com/', '2004-10-19 07:35:39', '1985-12-18 02:00:13');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (5, 'sit', 'http://koch.com/', '2001-02-26 03:53:02', '1981-05-10 11:28:57');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (6, 'optio', 'http://www.yostbalistreri.net/', '2000-06-05 11:45:24', '1978-12-03 18:10:58');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (7, 'quas', 'http://www.kutch.info/', '2006-03-04 12:19:59', '2015-12-14 22:30:44');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (8, 'sit', 'http://www.rippin.com/', '2015-12-03 16:29:57', '2006-09-06 12:32:30');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (9, 'fugit', 'http://www.kiehn.org/', '1971-05-05 20:51:57', '2014-05-28 06:34:50');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (10, 'ratione', 'http://www.gaylord.com/', '2009-02-16 05:04:11', '1991-08-29 19:20:43');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (11, 'saepe', 'http://www.braun.org/', '2008-01-30 17:13:40', '1984-09-28 06:53:48');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (12, 'beatae', 'http://purdy.info/', '1971-08-10 13:38:20', '2012-12-21 17:08:06');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (13, 'quidem', 'http://stokes.com/', '1981-06-13 01:58:00', '1976-09-14 16:56:20');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (14, 'ab', 'http://bayerlesch.com/', '2009-10-10 01:52:09', '1974-12-09 15:46:35');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (15, 'ratione', 'http://www.roberts.info/', '1992-01-16 03:15:23', '1989-06-20 07:59:19');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (16, 'velit', 'http://www.marks.biz/', '1983-06-02 09:56:44', '2000-10-16 12:35:46');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (17, 'id', 'http://leffler.org/', '2011-01-07 10:12:49', '2002-10-04 08:45:40');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (18, 'magni', 'http://morissette.net/', '1995-06-10 18:14:11', '2008-01-11 13:17:38');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (19, 'sapiente', 'http://www.koss.info/', '1974-05-22 01:04:36', '1992-07-15 20:40:02');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (20, 'nihil', 'http://www.crooksbotsford.com/', '2006-11-19 15:40:43', '1997-05-29 01:03:14');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (21, 'quas', 'http://www.ledner.net/', '1983-01-26 04:40:55', '1994-06-22 02:08:02');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (22, 'cum', 'http://abbott.org/', '2011-10-29 05:06:25', '2012-01-23 13:26:37');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (23, 'voluptatem', 'http://www.flatleythompson.com/', '2017-11-25 10:27:07', '2006-02-04 00:38:33');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (24, 'quia', 'http://www.larkinmarks.biz/', '2015-11-28 06:28:50', '2012-10-15 19:12:39');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (25, 'rerum', 'http://fahey.com/', '1985-08-17 08:31:51', '2008-08-29 01:16:15');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (26, 'tempora', 'http://donnellybecker.org/', '1990-01-26 21:04:18', '2013-05-23 07:40:51');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (27, 'neque', 'http://gleasonbartell.biz/', '2014-01-22 11:15:36', '2010-12-16 13:04:10');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (28, 'minus', 'http://www.cremin.biz/', '1987-10-04 08:46:28', '2012-10-11 14:21:13');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (29, 'sunt', 'http://parisian.biz/', '1983-02-25 21:36:16', '1971-01-19 05:47:40');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (30, 'numquam', 'http://mitchell.com/', '2003-01-31 22:08:25', '2015-01-23 03:21:55');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (31, 'est', 'http://ritchieankunding.com/', '1991-12-03 12:22:03', '2019-06-18 11:38:26');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (32, 'vitae', 'http://reynoldsnitzsche.info/', '2013-05-09 18:22:12', '1973-11-11 08:37:27');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (33, 'iste', 'http://www.gleichner.org/', '1974-08-14 10:00:56', '1997-08-18 18:45:31');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (34, 'asperiores', 'http://larkin.com/', '1986-08-21 00:31:46', '1973-12-20 21:54:50');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (35, 'et', 'http://www.lynch.com/', '2000-06-18 18:12:58', '1970-01-29 10:27:18');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (36, 'similique', 'http://franecki.info/', '2017-03-10 03:52:09', '1971-08-31 21:30:18');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (37, 'non', 'http://www.larkin.org/', '1988-05-28 04:09:23', '2017-04-28 20:52:19');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (38, 'qui', 'http://www.lockman.biz/', '2020-07-15 16:44:21', '1997-09-07 21:28:44');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (39, 'et', 'http://williamson.net/', '1994-05-02 06:06:07', '2005-07-21 12:27:50');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (40, 'ad', 'http://weber.com/', '1996-02-25 06:17:09', '2017-05-23 21:28:51');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (41, 'voluptatem', 'http://oharacarter.com/', '1979-06-23 12:50:47', '2013-02-10 20:44:54');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (42, 'ea', 'http://douglas.info/', '1973-09-17 11:27:03', '1993-07-17 21:25:08');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (43, 'alias', 'http://www.labadie.com/', '2020-06-19 19:44:03', '1997-10-31 04:21:22');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (44, 'enim', 'http://cormierkeebler.net/', '1972-04-26 12:02:23', '1983-12-19 12:27:41');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (45, 'perspiciatis', 'http://www.walterkeeling.net/', '1975-06-28 19:31:08', '1990-10-27 14:53:35');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (46, 'voluptas', 'http://douglas.com/', '1974-03-20 01:01:03', '1980-07-27 19:24:05');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (47, 'ratione', 'http://morarwest.biz/', '1999-09-18 21:34:37', '1977-07-08 05:07:30');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (48, 'aperiam', 'http://www.dooley.info/', '2021-06-06 14:59:58', '1985-12-07 14:47:36');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (49, 'placeat', 'http://www.corkery.com/', '1998-11-26 00:46:53', '2000-07-08 23:50:04');
INSERT IGNORE INTO `media` (`id`, `media_type`, `link`, `created_at`, `updated_at`) VALUES (50, 'voluptate', 'http://www.swiftgerlach.info/', '2003-06-21 03:47:38', '1998-04-10 23:23:55');


