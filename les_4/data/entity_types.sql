#
# TABLE STRUCTURE FOR: entity_types
#

DROP TABLE IF EXISTS `entity_types`;

CREATE TABLE `entity_types` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя сущности',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Справочная таблица с перечнем сущностей, которым можно поставить лайк';

INSERT IGNORE INTO `entity_types` (`name`) VALUES ('aliquam');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('consequatur');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('delectus');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('dolorem');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('doloremque');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('enim');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('et');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('expedita');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('ipsum');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('iusto');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('molestiae');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('necessitatibus');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('nihil');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('praesentium');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('quasi');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('qui');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('ratione');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('vero');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('voluptas');
INSERT IGNORE INTO `entity_types` (`name`) VALUES ('voluptate');


