USE shop;

-- 5_1
SELECT * FROM users;
UPDATE users SET created_at  = NULL AND updated_at = NULL WHERE id IN (1, 2); -- имитируем
UPDATE users SET created_at = NOW() WHERE id IN (1, 2);
SELECT * FROM users;

-- 5_2
DESCRIBE users;
ALTER TABLE users
	CHANGE COLUMN `created_at` `created_at` VARCHAR(50) NULL DEFAULT NULL AFTER birthday_at,
	CHANGE COLUMN `updated_at` `updated_at` VARCHAR(50) NULL DEFAULT NULL AFTER created_at;
DESCRIBE users;
ALTER TABLE users
	CHANGE COLUMN `created_at` `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
	CHANGE COLUMN `updated_at` `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
DESCRIBE users;


-- 5_3
SELECT * FROM storehouses_products ORDER BY CASE WHEN value = 0 then 1 ELSE 0 END, value;

-- ! Агрегация данных ! --

-- 5_4
SELECT ROUND(AVG((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25), 2) AS Age,
TO_DAYS(NOW()) as now
 FROM users; 
 
-- 5_5
SELECT
	DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10))) AS day_name,
    COUNT(DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10)))) AS count_day
FROM users GROUP BY day_name;