

-- Используем индетификатор схемы при обращении к таблице
SELECT * FROM vk.communities;

-- Вывести список таблиц в текущей схеме
SHOW TABLES;

-- Вынести поля таблицы и её свойства
DESCRIBE vk.profiles;

-- Внутренняя схема с метаданными. Предусмотрена стандартом SQL. Ссылка на руководство: https://dev.mysql.com/doc/refman/8.0/en/information-schema.html
USE INFORMATION_SCHEMA;
SHOW TABLES;
DESCRIBE TABLES;

SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'INFORMATION_SCHEMA'; -- INFORMATION_SCHEMA содержит описание себя собой
SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'vk';
SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'INFORMATION_SCHEMA' AND TABLE_NAME LIKE '%CONSTR%'; -- % - любое количество любых знаков, _ - один любой знак
SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_SCHEMA = 'vk';
SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'vk' AND TABLE_NAME = 'profiles'; 
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'vk' AND TABLE_NAME = 'profiles'; 
DESCRIBE vk.profiles;

/*C - CREATE
R - READ
U - UPDATE
D - DELETE*/

SELECT * FROM vk.users LIMIT 10;

SELECT email FROM vk.users WHERE email LIKE '%org';
-- SELECT email FROM vk.users WHERE REGEXP_LIKE (email, '^[A-Za-z_0-9]{6}@example\.org$');
-- SELECT phone FROM vk.users WHERE REGEXP_LIKE (phone, '^\+7[0-9]{10}$');
SELECT email FROM vk.users WHERE email REGEXP '^[A-Za-z_0-9]{6}@example\.org$';
SELECT phone FROM vk.users WHERE phone REGEXP '^\\+7[0-9]{10}$';
SELECT '+79991234567' REGEXP '^\\+7[0-9]{10}$';

-- Создаем собственное правило
ALTER TABLE vk.users ADD CONSTRAINT phone_check CHECK (phone REGEXP '^\\+7[0-9]{10}$');

UPDATE vk.users SET phone = CONCAT('+7', 9000000000 + FLOOR(RAND() * 999999999));
SELECT CONCAT('+7', 9000000000 + FLOOR(RAND() * 999999999));

SELECT * FROM vk.profiles LIMIT 10;
-- ALTER TABLE vk.profiles DROP COLUMN gernder;
ALTER TABLE vk.profiles ADD COLUMN gender ENUM('M', 'F');


-- Варианты заполнения атрибута 'gender'

-- 1
UPDATE vk.profiles SET gender = (
SELECT CASE WHEN RAND() > 0.5 THEN 'M' ELSE 'F' END 
);

-- 2
DROP TABLE vk.temp_gender;
CREATE TEMPORARY TABLE vk.temp_gender (
	`value` CHAR(1)
);

INSERT INTO vk.temp_gender (`value`) VALUE ('M');
INSERT INTO vk.temp_gender (`value`) VALUE ('F');
SELECT * FROM vk.temp_gender;

SELECT `value` FROM vk.temp_gender ORDER BY RAND() LIMIT 1;



