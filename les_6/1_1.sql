
/*2. Пусть задан некоторый пользователь. 
Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.*/
/*в моем случае так же взял пользователя "1", получается что ему больше всего писал пользователь "2", 3шт сообщений.*/
SELECT
	from_user_id,
	to_user_id,
	COUNT(1) AS counter
FROM
	messages
WHERE
	messages.to_user_id = 1 AND messages.is_delivered = 1
GROUP BY
	to_user_id,
	from_user_id 
ORDER BY counter DESC LIMIT 1;
/* ------------------- END 2 -----------------------*/



/*3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.*/

SELECT * FROM entity_types; -- для начала проверим типы сущносей, они созданны по названию таблиц ( у меня: media, posts, users)

-- заполним таблицу "лайков", выполним несколько раз
INSERT INTO likes (from_user_id, entity_id, entity_name) VALUES (floor(1 + RAND()*10), floor(1 + RAND()*10), "users");

DELETE FROM likes WHERE from_user_id = entity_id; -- делая для того, чтобы убрать тестовые данный когда пользователь лайкнул сам себя

SELECT * FROM likes;

SELECT
	concat_ws(' ', pr.first_name, pr.last_name) AS name, -- получаем полное имя из профиля
	FLOOR((TO_DAYS(NOW()) - TO_DAYS(pr.birth_date))/365.25) AS age, -- получаем возраст без дробной части
	COUNT(1) AS counter_ma -- кол-во сообщений
FROM
	likes lk
LEFT JOIN users us ON lk.entity_id = us.id
LEFT JOIN profiles pr ON pr.user_id = us.id
WHERE lk.entity_name = "users"
GROUP BY entity_id
ORDER BY age, counter_ma DESC LIMIT 5;
-- так как у меня всего 10 пользователей то ограницу 5тью.
/* ------------------- END 3 -----------------------*/


/*4. Определить кто больше поставил лайков (всего) - мужчины или женщины?*/
SELECT
	pr.gender,
	COUNT(1) AS counter_gender -- кол-во сообщений
FROM
	likes lk
LEFT JOIN users us ON lk.entity_id = us.id
LEFT JOIN profiles pr ON pr.user_id = us.id
WHERE lk.entity_name = "users"
GROUP BY pr.gender
ORDER BY counter_gender DESC;
-- немного доработв запрос из пункта 3, получаем результат
/* ------------------- END 4 -----------------------*/


/*5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.*/

-- заполним таблицу "лайков", выполним несколько раз для media и для posts, айди у меня не попорядку так что пришлось фантазировать с кол-вом 
INSERT INTO likes (from_user_id, entity_id, entity_name) VALUES (floor(1 + RAND()*10), floor(1 + RAND()*58), "media");
INSERT INTO likes (from_user_id, entity_id, entity_name) VALUES (floor(1 + RAND()*10), floor(137 + RAND()*160), "posts");

-- дальше определим критерии активности лайки и посты ( как пример). 
select user_id, sum(counter) AS counter
FROM
(
	SELECT
		us.id AS user_id,
		COUNT(1) AS counter-- кол-во лайов
	FROM
		likes lk
	LEFT JOIN users us ON lk.from_user_id = us.id
	GROUP BY user_id
	UNION ALL -- объедлиняем
	SELECT
		us.id AS user_id,
		COUNT(1) AS counter -- кол-во постов
	FROM
		posts ps
	LEFT JOIN users us ON ps.user_id = us.id
	GROUP BY user_id
) T
group by user_id
ORDER BY counter ASC LIMIT 5 -- так как у меня всего 10ть пользователей то беру ть.

	

