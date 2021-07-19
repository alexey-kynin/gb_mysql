

/**** 6_1 Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине. *****/

/* приведем users.id и  orders.user_id к одному типу*/
ALTER TABLE users CHANGE COLUMN id id INT(10) UNSIGNED NOT NULL DEFAULT 0 FIRST;

/*Нам нужно сделать внешние ключи. для этого изменим таблицу "orders". Изменим длину user_id, тиак как 
 * в таблице users id мысделали INT(10).*/
ALTER TABLE orders CHANGE COLUMN user_id iser_id INT(10) UNSIGNED NULL DEFAULT NULL AFTER id;

/* далее делаем внешний ключ на таблицу users, при удалении подставлял NULL а при обновлении "ругался" */
ALTER TABLE orders ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users (id) 
	ON DELETE SET NULL ON UPDATE RESTRICT; 

DESC orders;

/*делаем внешние ключи от orders_products к orders*/
/*приводим в порядок айди*/
ALTER TABLE `orders`
	CHANGE COLUMN `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT FIRST;
ALTER TABLE `orders_products`
	CHANGE COLUMN `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT FIRST;
ALTER TABLE `products`
	CHANGE COLUMN `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT FIRST;

ALTER TABLE orders_products ADD CONSTRAINT fk_order_id FOREIGN KEY(order_id) REFERENCES orders(id) 
	ON DELETE SET NULL ON UPDATE RESTRICT;

ALTER TABLE orders_products ADD CONSTRAINT fk_order_product_id FOREIGN KEY(product_id) REFERENCES products(id)
	ON DELETE SET NULL ON UPDATE RESTRICT;


/* заполним таблици*/
INSERT INTO orders (iser_id) VALUES (1), (2), (3);

-- Наполняем заказы товарами
INSERT INTO orders_products (`order_id`, `product_id`) VALUES ('5', '4');
INSERT INTO orders_products (`order_id`, `product_id`) VALUES ('5', '5');

INSERT INTO orders_products (`order_id`, `product_id`) VALUES ('6', '1');
INSERT INTO orders_products (`order_id`, `product_id`) VALUES ('6', '2');

INSERT INTO orders_products (`order_id`, `product_id`) VALUES ('7', '3');
INSERT INTO orders_products (`order_id`, `product_id`) VALUES ('7', '4');
INSERT INTO orders_products (`order_id`, `product_id`) VALUES ('7', '7');


/*Получаем списко пользователей сделавший заказ и айди самого заказа*/
SELECT 
	users.id AS user_id,
	orders.id AS order_id
FROM users
RIGHT JOIN orders ON users.id = orders.user_id;




/***** 6_2 Выведите список товаров products и разделов catalogs, который соответствует товару.*****/

SELECT 
	pr.name,
	cat.name AS catalog_name
FROM
	products AS pr
JOIN catalogs AS cat ON pr.catalog_id = cat.id; 


