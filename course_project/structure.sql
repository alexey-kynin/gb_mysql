
USE soccerway;

/* Determines whether the server should check that a referenced table exists when defining a foreign key.... */
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS sс_teams;
DROP TABLE IF EXISTS sс_country;
DROP TABLE IF EXISTS sс_league_main;
DROP TABLE IF EXISTS sс_league;
DROP TABLE IF EXISTS sс_match;
DROP TABLE IF EXISTS sc_place;
DROP TABLE IF EXISTS sс_players;
DROP TABLE IF EXISTS sс_season;
DROP TABLE IF EXISTS sс_players_work;
DROP TABLE IF EXISTS sс_coaches;
DROP TABLE IF EXISTS sс_coache_work;
DROP TABLE IF EXISTS sс_goals;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;



CREATE TABLE sс_teams
(
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    team_id int(11) UNSIGNED COMMENT "id команды с 'https://www.soccerway.com/'",
    name_ru VARCHAR(250) COMMENT "Название команды 'ru'",
    name_en VARCHAR(250) COMMENT "Название команды 'en'",
    PRIMARY KEY (id),
    UNIQUE INDEX team_id (team_id) -- "team_id" делаем уникальным, дабы исключить дубли в таблице
) ENGINE=InnoDB COMMENT='Таблица команд';


CREATE TABLE sс_country
(
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    country_id VARCHAR(20) COMMENT "id страны с 'https://www.soccerway.com/'",
    name_ru VARCHAR(250),
    name_en VARCHAR(250),
    PRIMARY KEY (id),
    UNIQUE INDEX country_id (country_id)
) ENGINE=InnoDB COMMENT='Таблица стран';


CREATE TABLE sс_league_main
(
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    league_id VARCHAR(20) NOT NULL COMMENT "id основные лиги с 'https://www.soccerway.com/'",
    name_ru VARCHAR(250),
    name_en VARCHAR(250),
    country_id VARCHAR(20),
    PRIMARY KEY (id),
    UNIQUE INDEX league_id (league_id),
    INDEX country_id (country_id),
    CONSTRAINT fk_sс_lm_country_id FOREIGN KEY (country_id) REFERENCES sс_country (country_id) ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB COMMENT='Таблица основных лиг';


CREATE TABLE sс_league
(
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    league_id VARCHAR(20) COMMENT "id лиги с 'https://www.soccerway.com/'",
    league_main_id VARCHAR(20) COMMENT "id основные лиги с 'https://www.soccerway.com/'",
    name_ru VARCHAR(250),
    name_en VARCHAR(250),
    PRIMARY KEY (id),
    UNIQUE INDEX league_id (league_id),
    INDEX sс_league_FI_1 (league_main_id),
    CONSTRAINT fk_sс_league_league_id FOREIGN KEY (league_main_id) REFERENCES sс_league_main (league_id) ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB COMMENT='Таблица лиг';

CREATE TABLE sc_place
(
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    lat DECIMAL(25,15),
    lng DECIMAL(25,15),
    stadium VARCHAR(250) NOT NULL,
    adress VARCHAR(250) NOT NULL,
    city VARCHAR(250) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT='Таблица место проведения матчей';

CREATE TABLE sс_match
(
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    match_id int(11) UNSIGNED NOT NULL COMMENT "id матча 'https://www.soccerway.com/'",
    date_match INT(11) NULL DEFAULT NULL,
    home_team_id int(11) UNSIGNED,
    away_team_id int(11) UNSIGNED,
    home_team_score int(11) UNSIGNED COMMENT "кол-во голов первой команды", 
    away_team_score int(11) UNSIGNED COMMENT "кол-во голов второй команды", 
    home_team_score_pen int(11) UNSIGNED COMMENT "кол-во голов забитых с пенальти первой команды", 
    away_team_score_pen int(11) UNSIGNED COMMENT "кол-во голов забитых с пенальти второй команды",
    place_id int(11) UNSIGNED COMMENT "Место проведения матча", 
    league_id VARCHAR(20),
    PRIMARY KEY (id),
    UNIQUE INDEX match_id (match_id),
    INDEX date_match (date_match),
    INDEX home_team_id (home_team_id),
    INDEX away_team_id (away_team_id),
    INDEX place_id (place_id),
    INDEX league_id (league_id),
    CONSTRAINT fk_sс_match_team_id_home FOREIGN KEY (home_team_id) REFERENCES sс_teams (team_id) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_sс_match_team_id_awey FOREIGN KEY (away_team_id) REFERENCES sс_teams (team_id) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_sс_match_league_id FOREIGN KEY (league_id) REFERENCES sс_league (league_id) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_sс_match_sc_place FOREIGN KEY (place_id) REFERENCES sc_place (id) ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB COMMENT='Таблица матчей';


CREATE TABLE sс_players
(
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    player_id int(11) UNSIGNED NOT NULL COMMENT "id игрока 'https://www.soccerway.com/'",
    first_name_en VARCHAR(200),
    last_name_en VARCHAR(200),
    first_name_ru VARCHAR(200),
    last_name_ru VARCHAR(200),
    nickname_en VARCHAR(200),
    nickname_ru VARCHAR(200),
    nationality VARCHAR(200),
    position_player VARCHAR(10),
    birthdate int(11),
    contry_of_birth VARCHAR(200),
    place_of_birth VARCHAR(200),
    PRIMARY KEY (id),
    UNIQUE INDEX player_id (player_id)
) ENGINE=InnoDB COMMENT='Таблица игроков';


CREATE TABLE sс_season
(
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    season_id VARCHAR(20) NOT NULL COMMENT "id сезона 'https://www.soccerway.com/'",
    year_season VARCHAR(250),
    league_main_id VARCHAR(20),
    PRIMARY KEY (id),
    UNIQUE INDEX league_id_name (season_id, league_main_id),
    INDEX season_id (season_id),
    INDEX league_main_id (league_main_id),
    CONSTRAINT fk_sс_season_league_id FOREIGN KEY (league_main_id) REFERENCES sс_league_main (league_id) ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB COMMENT='Таблица сезонов';


CREATE TABLE sс_players_work
(
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    player_id int(11) UNSIGNED,
    season_id VARCHAR(20),
    team_id int(11) UNSIGNED,
    league_main_id VARCHAR(20),
    PRIMARY KEY (id),
    UNIQUE INDEX player_data (player_id, season_id, team_id, league_main_id), -- делаем уникальный составной индекс, для исключений дублей
    INDEX player_id (player_id),
    INDEX season_id (season_id),
    INDEX team_id (team_id),
    INDEX league_main_id (league_main_id),
    CONSTRAINT fk_sс_players_player_id FOREIGN KEY (player_id) REFERENCES sс_players (player_id) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_sс_players_season_id FOREIGN KEY (season_id) REFERENCES sс_season (season_id) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_sс_players_team_id FOREIGN KEY (team_id) REFERENCES sс_teams (team_id) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_sс_players_league_id FOREIGN KEY (league_main_id) REFERENCES sс_league_main (league_id) ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB COMMENT='Таблица карьера игроков';


CREATE TABLE sс_coaches
(
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    player_id int(11) UNSIGNED NOT NULL COMMENT "id тренеров 'https://www.soccerway.com/'",
    first_name_en VARCHAR(200),
    last_name_en VARCHAR(200),
    first_name_ru VARCHAR(200),
    last_name_ru VARCHAR(200),
    nationality VARCHAR(200),
    birthdate int(11),
    contry_of_birth VARCHAR(200),
    place_of_birth VARCHAR(200),
    PRIMARY KEY (id),
    UNIQUE INDEX player_id (player_id)
) ENGINE=InnoDB COMMENT='Таблица тренеров';


CREATE TABLE sс_coache_work
(
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    coatch_id int(11) UNSIGNED,
    start_time int(11) UNSIGNED,
    end_time int(11) UNSIGNED,
    team_id int(11) UNSIGNED,
    PRIMARY KEY (id),
    INDEX coatch_id (coatch_id),
    INDEX team_id (team_id),
    CONSTRAINT fk_sс_coache_player_id FOREIGN KEY (coatch_id) REFERENCES sс_coaches (player_id) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_sс_coache_team_id FOREIGN KEY (team_id) REFERENCES sс_teams (team_id) ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB COMMENT='Таблица карьера тренеров';


CREATE TABLE sс_goals
(
    id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    match_id int(11) UNSIGNED,
    home_player_id int(11) UNSIGNED,
    away_player_id int(11) UNSIGNED,
    minut int(11) UNSIGNED,
    home_score int(11) UNSIGNED,
    away_score int(11) UNSIGNED,
    type_goal VARCHAR(20) NOT NULL, -- g - гол, p - пенальти
    PRIMARY KEY (id),
    INDEX match_id (match_id),
    INDEX home_player_id (home_player_id),
    INDEX away_player_id (away_player_id),
    CONSTRAINT fk_sс_goals_match_id FOREIGN KEY (match_id) REFERENCES sс_match (match_id) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_sс_goals_home_player_id FOREIGN KEY (home_player_id) REFERENCES sс_players (player_id) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_sс_goals_away_player_id FOREIGN KEY (away_player_id) REFERENCES sс_players (player_id) ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB COMMENT='Таблица голов за матч';


