
/*2. ����� ����� ��������� ������������. 
�� ���� ������ ����� ������������ ������� ��������, ������� ������ ���� ������� � ����� �������������.*/
/*� ���� ������ ��� �� ���� ������������ "1", ���������� ��� ��� ������ ����� ����� ������������ "2", 3�� ���������.*/
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



/*3. ���������� ����� ���������� ������, ������� �������� 10 ����� ������� �������������.*/

SELECT * FROM entity_types; -- ��� ������ �������� ���� ��������, ��� �������� �� �������� ������ ( � ����: media, posts, users)

-- �������� ������� "������", �������� ��������� ���
INSERT INTO likes (from_user_id, entity_id, entity_name) VALUES (floor(1 + RAND()*10), floor(1 + RAND()*10), "users");

DELETE FROM likes WHERE from_user_id = entity_id; -- ����� ��� ����, ����� ������ �������� ������ ����� ������������ ������� ��� ����

SELECT * FROM likes;

SELECT
	concat_ws(' ', pr.first_name, pr.last_name) AS name, -- �������� ������ ��� �� �������
	FLOOR((TO_DAYS(NOW()) - TO_DAYS(pr.birth_date))/365.25) AS age, -- �������� ������� ��� ������� �����
	COUNT(1) AS counter_ma -- ���-�� ���������
FROM
	likes lk
LEFT JOIN users us ON lk.entity_id = us.id
LEFT JOIN profiles pr ON pr.user_id = us.id
WHERE lk.entity_name = "users"
GROUP BY entity_id
ORDER BY age, counter_ma DESC LIMIT 5;
-- ��� ��� � ���� ����� 10 ������������� �� �������� 5���.
/* ------------------- END 3 -----------------------*/


/*4. ���������� ��� ������ �������� ������ (�����) - ������� ��� �������?*/
SELECT
	pr.gender,
	COUNT(1) AS counter_gender -- ���-�� ���������
FROM
	likes lk
LEFT JOIN users us ON lk.entity_id = us.id
LEFT JOIN profiles pr ON pr.user_id = us.id
WHERE lk.entity_name = "users"
GROUP BY pr.gender
ORDER BY counter_gender DESC;
-- ������� �������� ������ �� ������ 3, �������� ���������
/* ------------------- END 4 -----------------------*/


/*5. ����� 10 �������������, ������� ��������� ���������� ���������� � ������������� ���������� ����.*/

-- �������� ������� "������", �������� ��������� ��� ��� media � ��� posts, ���� � ���� �� ��������� ��� ��� �������� ������������� � ���-��� 
INSERT INTO likes (from_user_id, entity_id, entity_name) VALUES (floor(1 + RAND()*10), floor(1 + RAND()*58), "media");
INSERT INTO likes (from_user_id, entity_id, entity_name) VALUES (floor(1 + RAND()*10), floor(137 + RAND()*160), "posts");

-- ������ ��������� �������� ���������� ����� � ����� ( ��� ������). 
select user_id, sum(counter) AS counter
FROM
(
	SELECT
		us.id AS user_id,
		COUNT(1) AS counter-- ���-�� �����
	FROM
		likes lk
	LEFT JOIN users us ON lk.from_user_id = us.id
	GROUP BY user_id
	UNION ALL -- �����������
	SELECT
		us.id AS user_id,
		COUNT(1) AS counter -- ���-�� ������
	FROM
		posts ps
	LEFT JOIN users us ON ps.user_id = us.id
	GROUP BY user_id
) T
group by user_id
ORDER BY counter ASC LIMIT 5 -- ��� ��� � ���� ����� 10�� ������������� �� ���� ��.

	

