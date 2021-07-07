#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (0, 2, '2015-08-01 22:26:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (0, 8, '1980-12-07 09:16:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (0, 9, '1988-11-18 00:04:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 1, '2003-04-14 13:57:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1981-12-09 19:16:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 6, '1999-09-23 16:11:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 2, '1978-08-07 07:44:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2020-09-03 11:52:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 6, '1993-10-02 21:32:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 8, '1996-03-19 10:53:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '1994-09-17 05:05:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 7, '1980-03-27 13:57:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 9, '1995-11-20 11:17:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 3, '1972-03-30 16:37:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 2, '1982-11-20 00:57:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 6, '2008-07-26 04:19:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 9, '2020-03-14 09:03:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 8, '2005-07-12 10:52:40');


