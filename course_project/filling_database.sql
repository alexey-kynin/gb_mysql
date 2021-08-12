USE soccerway;

SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE sс_teams;
TRUNCATE TABLE sс_country;
TRUNCATE TABLE sс_league_main;
TRUNCATE TABLE sс_league;
TRUNCATE TABLE sc_place;
TRUNCATE TABLE sс_match;
TRUNCATE TABLE sс_players;
TRUNCATE TABLE sс_season;
TRUNCATE TABLE sс_players_work;
TRUNCATE TABLE sс_coaches;
TRUNCATE TABLE sс_coache_work;
TRUNCATE TABLE sс_goals;
SET FOREIGN_KEY_CHECKS=1;

/* Заполнение таблицы */
DROP PROCEDURE IF EXISTS proc_sc_1 ;
DROP PROCEDURE IF EXISTS proc_sс_league_main ;
DROP PROCEDURE IF EXISTS proc_sс_league ;
DROP PROCEDURE IF EXISTS proc_sс_match ;
DROP PROCEDURE IF EXISTS proc_sс_season ;
DROP PROCEDURE IF EXISTS proc_sс_players_work ;
DROP PROCEDURE IF EXISTS proc_sс_coache_work ;
DROP PROCEDURE IF EXISTS insert_sс_coache_work;

DELIMITER //
CREATE PROCEDURE proc_sc_1() 
BEGIN
  DECLARE i INT DEFAULT 1; -- создадим локальную переменную i
  WHILE i < 100 DO 
  	INSERT INTO sс_teams (team_id, name_ru, name_en) VALUES (1000 + i, CONCAT('Команда_' ,i), CONCAT('Team_' ,i));
  	INSERT INTO sс_country (country_id, name_ru, name_en) VALUES (CONCAT('c' ,2000 + i),  CONCAT('Страна_' ,i), CONCAT('Country_' ,i));
    INSERT INTO sc_place (lat, lng, stadium, adress, city) VALUES (RAND()*(99-1)+1, RAND()*(99-1)+1, CONCAT('Stadium_' ,i), CONCAT('Adress_' ,i),  CONCAT('City_' ,i));   				
   	INSERT INTO sс_players SET 
   		player_id=8000 + i, 
   		first_name_en=CONCAT('first_name_en_' ,i),	
   		last_name_en=CONCAT('last_name_en_' ,i),	
   		first_name_ru=CONCAT('first_name_ru_' ,i),	
   		last_name_ru=CONCAT('last_name_ru_' ,i),	
	 		nickname_en=CONCAT('nickname_en_' ,i),	
	 		nickname_ru=CONCAT('nickname_ru_' ,i),	
	 		nationality=CONCAT('nationality' ,i),	
	 		position_player=FLOOR(RAND()*(4-1)+1),
	 		birthdate=1428500000+i,
	 		contry_of_birth=CONCAT('Country_', FLOOR(RAND()*(99-1)+1) ),
	 		place_of_birth='place';
	 	INSERT INTO sс_coaches SET 
   		player_id=8800 + i, 
   		first_name_en=CONCAT('first_name_en_' ,i),	
   		last_name_en=CONCAT('last_name_en_' ,i),	
   		first_name_ru=CONCAT('first_name_ru_' ,i),	
   		last_name_ru=CONCAT('last_name_ru_' ,i),	
	 		nationality=CONCAT('nationality' ,i),	
	 		birthdate=1428500000+i,
	 		contry_of_birth='contry',
	 		place_of_birth='place';
   SET i = i + 1;
  END WHILE;
END;;
DELIMITER ;

DELIMITER //
CREATE PROCEDURE proc_sс_league_main() 
BEGIN
  DECLARE i INT DEFAULT 1; -- создадим локальную переменную i
  WHILE i < 100 DO 
  	INSERT INTO sс_league_main (league_id, name_ru, name_en, country_id) 
  		VALUES (CONCAT('lm' ,3000 + i),  CONCAT('ЛигаГ_' ,i), CONCAT('LeagueM_' ,i), CONCAT('c' ,FLOOR(RAND()*(2099-2001)+2001)));
    SET i = i + 1;
  END WHILE;
END;;
DELIMITER ;

DELIMITER //
CREATE PROCEDURE proc_sс_league() 
BEGIN
  DECLARE i INT DEFAULT 1; -- создадим локальную переменную i
  WHILE i < 100 DO 
  	INSERT INTO sс_league (league_id, league_main_id, name_ru, name_en) 
  		VALUES (CONCAT('l' ,4000 + i), CONCAT('lm' ,FLOOR(RAND()*(3099-3001)+3001)), CONCAT('Лига_' ,i), CONCAT('League_' ,i));
    SET i = i + 1;
  END WHILE;
END;;
DELIMITER ;

DELIMITER //
CREATE PROCEDURE proc_sс_match() 
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i < 100 DO 
  	INSERT INTO sс_match (match_id, date_match, home_team_id, away_team_id, home_team_score, away_team_score, home_team_score_pen, away_team_score_pen, place_id, league_id) 
  		VALUES (5000 + i, 
  						1628500000+i, 
  						FLOOR(RAND()*(1099-1001)+1001), 
  						FLOOR(RAND()*(1099-1001)+1001), 
  						FLOOR(RAND()*(7-0)+0), 
  						FLOOR(RAND()*(7-0)+0), 
  						FLOOR(RAND()*(4-0)+0), 
  						FLOOR(RAND()*(4-0)+0),
  					  FLOOR(RAND()*(99-1)+1), 
  					 	CONCAT('l' ,FLOOR(RAND()*(4099-4001)+4001))
  					);
    SET i = i + 1;
  END WHILE;
END;;
DELIMITER ;

DELIMITER //
CREATE PROCEDURE proc_sс_season() 
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i < 100 DO 
  	INSERT INTO sс_season (season_id, year_season, league_main_id) 
  		VALUES (CONCAT('s' ,9000 + i), FLOOR(RAND()*(2021-1990)+1990), CONCAT('lm' ,FLOOR(RAND()*(3099-3001)+3001)));
    SET i = i + 1;
  END WHILE;
END;;
DELIMITER ;

DELIMITER //
CREATE PROCEDURE proc_sс_players_work() 
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i < 100 DO  	
  	INSERT INTO sс_players_work SET 
   		player_id=FLOOR(RAND()*(8099-8001)+8001), 
   		season_id=CONCAT('s' ,FLOOR(RAND()*(9099-9001)+9001)),	
   		team_id=FLOOR(RAND()*(1099-1001)+1001),	
   		league_main_id=CONCAT('lm' ,FLOOR(RAND()*(3099-3001)+3001));
    SET i = i + 1;
  END WHILE;
END;;
DELIMITER ;

DELIMITER // 
CREATE PROCEDURE insert_sс_coache_work(vcoatch_id INT)
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i < 10 DO  	
  	INSERT INTO sс_coache_work SET 
   		coatch_id=vcoatch_id, 
   		start_time=FLOOR(RAND()*(1628587000-1628580000)+1628580000),	
   		end_time=FLOOR(RAND()*(1628587000-1628580000)+1628580000),	
   		team_id=FLOOR(RAND()*(1099-1001)+1001);
    SET i = i + 1;
  END WHILE;
END;;
DELIMITER ; 

DELIMITER // 
CREATE PROCEDURE proc_sс_coache_work() 
BEGIN
		DECLARE vplayer_id integer;
		DECLARE done integer default 0;
		DECLARE BankCursor CURSOR FOR SELECT player_id FROM sс_coaches LIMIT 10;
		DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;
		
		OPEN BankCursor;
		
			WHILE done = 0 DO
				FETCH BankCursor INTO vplayer_id;
				CALL insert_sс_coache_work(vplayer_id);
			END WHILE;
		
		CLOSE BankCursor;
END;;
DELIMITER ; -- =============================================================================================

CALL proc_sc_1();	
CALL proc_sс_league_main();
CALL proc_sс_league();
CALL proc_sс_match();
CALL proc_sс_season();
CALL proc_sс_players_work();
CALL proc_sс_coache_work();

DROP PROCEDURE IF EXISTS proc_sc_1 ;
DROP PROCEDURE IF EXISTS proc_sс_league_main ;
DROP PROCEDURE IF EXISTS proc_sс_league ;
DROP PROCEDURE IF EXISTS proc_sс_match ;
DROP PROCEDURE IF EXISTS proc_sс_season ;
DROP PROCEDURE IF EXISTS proc_sс_players_work ;
DROP PROCEDURE IF EXISTS proc_sс_coache_work ;
DROP PROCEDURE IF EXISTS insert_sс_coache_work;

INSERT INTO sс_goals (match_id, home_player_id, minut, home_score, away_score, type_goal) VALUES ('5001', '8001', '21', '0', '1', 'g');
INSERT INTO sс_goals (match_id, away_player_id, minut, home_score, away_score, type_goal) VALUES ('5001', '8002', '22', '1', '1', 'g');
INSERT INTO sс_goals (match_id, away_player_id, minut, home_score, away_score, type_goal) VALUES ('5001', '8003', '23', '2', '1', 'g');
INSERT INTO sс_goals (match_id, home_player_id, minut, home_score, away_score, type_goal) VALUES ('5002', '8004', '24', '1', '0', 'g');
INSERT INTO sс_goals (match_id, home_player_id, minut, home_score, away_score, type_goal) VALUES ('5002', '8005', '25', '2', '1', 'g');
INSERT INTO sс_goals (match_id, away_player_id, minut, home_score, away_score, type_goal) VALUES ('5002', '8006', '26', '3', '1', 'g');
INSERT INTO sс_goals (match_id, away_player_id, minut, home_score, away_score, type_goal) VALUES ('5002', '8007', '27', '4', '1', 'g');
INSERT INTO sс_goals (match_id, home_player_id, minut, home_score, away_score, type_goal) VALUES ('5003', '8008', '28', '1', '0', 'g');
INSERT INTO sс_goals (match_id, away_player_id, minut, home_score, away_score, type_goal) VALUES ('5003', '8009', '29', '1', '1', 'g');

SELECT * FROM sс_teams;
SELECT * FROM sс_country;
SELECT * FROM sс_league_main;
SELECT * FROM sс_league;
SELECT * FROM sc_place;
SELECT * FROM sс_match;
SELECT * FROM sс_players;
SELECT * FROM sс_season;
SELECT * FROM sс_players_work;
SELECT * FROM sс_coaches;
SELECT * FROM sс_coache_work;
SELECT * FROM sс_goals;


-- SELECT FLOOR(RAND()*(2099-2001)+2001);


