#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'amet', '1987-12-04 01:01:19', '2002-03-01 02:29:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'nostrum', '2017-02-24 08:29:23', '2001-04-09 19:53:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'velit', '2006-07-17 01:39:56', '1989-07-11 13:25:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'qui', '1989-04-26 15:07:33', '2009-03-18 09:02:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'nihil', '1979-10-01 10:33:10', '2021-03-28 04:09:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'blanditiis', '1993-12-16 23:15:15', '1994-01-21 07:30:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'hic', '2008-09-21 10:15:39', '1988-11-30 21:15:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'est', '1987-09-09 22:04:36', '2009-03-04 10:43:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'sed', '1995-12-08 22:42:26', '2012-08-17 17:44:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'esse', '1980-02-15 22:30:51', '2011-09-10 20:28:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'dolores', '1994-11-24 17:08:21', '2007-07-04 11:00:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'similique', '2006-06-09 23:51:09', '2014-04-01 14:09:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'fugiat', '2005-12-12 00:42:12', '1973-03-13 05:45:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'exercitationem', '1990-01-25 02:29:27', '1972-01-17 18:41:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'voluptas', '1981-06-11 06:26:27', '1980-02-12 09:23:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'animi', '1971-09-24 05:00:50', '2004-05-05 23:21:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'dolorem', '1992-10-26 15:41:01', '1997-07-05 18:13:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'porro', '1974-02-21 18:53:04', '1983-10-01 06:34:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'facilis', '1992-12-30 19:46:39', '1989-04-22 01:36:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'ut', '2005-04-11 22:38:37', '1970-03-11 22:11:24');


