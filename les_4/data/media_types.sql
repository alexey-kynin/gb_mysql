#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Тип медиайла',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Тип медиа контента';

INSERT IGNORE INTO `media_types` (`name`) VALUES ('alias');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('asperiores');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('consequatur');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('deleniti');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('et');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('exercitationem');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('incidunt');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('molestiae');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('non');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('omnis');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('quas');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('qui');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('quia');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('repellat');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('similique');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('sunt');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('totam');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('ut');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('velit');
INSERT IGNORE INTO `media_types` (`name`) VALUES ('voluptatum');


