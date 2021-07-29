/* 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.*/

USE sample;
DROP TABLE users;
 
CREATE TABLE users(
	id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NULL DEFAULT NULL COMMENT 'Имя покупателя',
	birthday_at DATE NULL DEFAULT NULL COMMENT 'Дата рождения',
	created_at  DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SELECT * FROM users;

START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
COMMIT;

SELECT * FROM sample.users;
SELECT * FROM shop.users;


/* 2. Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.*/
USE shop;

CREATE OR REPLACE VIEW name_prod_catalog(prod_id, prod_name, cat_name) AS
SELECT p.id AS prod_id, p.name, cat.name
FROM products AS p
LEFT JOIN catalogs AS cat 
ON p.catalog_id = cat.id;

SELECT * FROM name_prod_catalog;



/* “Хранимые процедуры и функции, триггеры"

 * 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
 * С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
 * с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
*/

DROP FUNCTION IF EXISTS hello;

delimiter //
CREATE FUNCTION hello()
RETURNS TINYTEXT
BEGIN
	DECLARE c_time TIME;
	SET c_time = CURTIME();
	CASE 
		WHEN c_time BETWEEN '06:00:00' AND '12:00:00' THEN
			RETURN 'Доброе утро';
		WHEN c_time BETWEEN '12:00:00' AND '18:00:00' THEN
			RETURN 'Добрый день';
		WHEN c_time BETWEEN '18:00:00' AND '00:00:00' THEN
			RETURN 'Добрый вечер';
		ELSE
			RETURN 'Доброй ночи';
	END CASE;
END //
delimiter ;

CALL hello();
DROP FUNCTION IF EXISTS hello;

/* 
 * 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
 * Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
 * Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
 * При попытке присвоить полям NULL-значение необходимо отменить операцию.
*/

USE shop;
DROP TRIGGER IF EXISTS checkForNull;

delimiter //
CREATE TRIGGER checkForNull BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NULL name and description!'; -- как вметодичке формируем сигнал
	END IF;
END //
delimiter ;

INSERT INTO shop.products (name, description, price, catalog_id) VALUES (NULL, NULL, 100, 1); -- задаем оба NULL



