USE soccerway;

-- Сделаем выборку матчей на определенный период с использованием соединений.
SELECT
	scm.*,
	(SELECT name_ru FROM sс_teams sct WHERE sct.team_id = scm.home_team_id) AS sct_home,
	(SELECT name_ru FROM sс_teams sct WHERE sct.team_id = scm.away_team_id) AS sct_away,
	scc.name_ru AS CountryName
FROM
	sс_match scm
LEFT JOIN sс_league scl ON (scm.league_id = scl.league_id)
LEFT JOIN sс_league_main sc_lm ON (scl.league_main_id = sc_lm.league_id)
LEFT JOIN sс_country scc ON (sc_lm.country_id = scc.country_id)
WHERE
	(scm.date_match >= 1628500001 AND scm.date_match <= 1628500017);


/* Сделаем представление которой показывает id страны и полное имя игрока */
CREATE OR REPLACE VIEW player_country(plaer_counry_id, player_full_name) AS 
	SELECT scc.country_id, CONCAT(scp.first_name_en, scp.last_name_en) FROM sс_country AS scc
	LEFT JOIN sс_players AS scp ON scp.contry_of_birth = scc.name_en ;

SELECT * FROM player_country; -- посмотрим результат
DROP VIEW  IF EXISTS player_country; -- удалим представление если оно не нужно.

/* Сделаем представление которой показывает связку лиги и сезона */
CREATE OR REPLACE VIEW season_league(season_id, year_season, league_name) AS 
SELECT season_id, year_season, sc_lm.name_en FROM sс_season AS scs 
LEFT JOIN sс_league_main AS sc_lm ON scs .league_main_id = sc_lm.league_id;

SELECT * FROM season_league; -- посмотрим результат
DROP VIEW  IF EXISTS season_league; -- удалим представление если оно не нужно.



/* сделаем тригер который будет обновлять таблицу "голов", при изменении счета матча. Задача притянута, так как нужно получать
 * id игрока который забил и время */
SELECT * FROM sс_goals WHERE sс_goals.match_id =5001 AND sс_goals.type_goal='g';

DROP TRIGGER IF EXISTS goal_match;
DELIMITER //
CREATE TRIGGER goal_match AFTER UPDATE ON sс_match FOR EACH ROW
BEGIN 
		INSERT INTO sс_goals (match_id, home_player_id, minut, home_score, away_score, type_goal) 
		VALUES (NEW.match_id, '8021', '21', NEW.home_team_score, NEW.away_team_score, 'g');
END //
DELIMITER ;


UPDATE sс_match SET away_team_score='2' WHERE  `id`=1;
SELECT * FROM sс_goals WHERE match_id = 5001;






