DROP DATABASE vk;
CREATE DATABASE vk;

USE vk;

DROP TABLE IF EXISTS users;
-- Таблица пользователей
CREATE TABLE users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
	email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
    phone VARCHAR(100) NOT NULL UNIQUE COMMENT "Телефон",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
);

DROP TABLE IF EXISTS profiles;
-- Таблица профилей
CREATE TABLE profiles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
    user_id INT UNSIGNED UNIQUE NOT NULL COMMENT "Ссылка на пользователя", 
	first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
	last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
    birth_date DATE COMMENT "Дата рождения",    
    country VARCHAR(100) COMMENT "Страна проживания",
    city VARCHAR(100) COMMENT "Город проживания",
    profiles_status ENUM('ONLINE', 'OFFLINE', 'INACTIVE') COMMENT "Текущий статус",
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    -- ,PRIMARY KEY (`id`) -- вариант объявления PK
);

-- ALTER TABLE profiles ADD CONSTRAINT PRIMARY KEY (id); -- вариант объявления PK

-- Связываем поле "user_id" таблицы "profiles" с полем "id" таблицы "users" c помощью внешнего ключа
ALTER TABLE profiles ADD CONSTRAINT fk_profiles_user_id FOREIGN KEY (user_id) REFERENCES users(id);

DROP TABLE IF EXISTS messages;
-- Таблица сообщений
CREATE TABLE messages (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
	from_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения",
	to_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя сообщения",
    message_header VARCHAR(255) COMMENT "Заголовок сообщения",
    message_body TEXT NOT NULL COMMENT "Текст сообщения",
    is_delivered BOOLEAN NOT NULL COMMENT "Признак доставки",
    was_edited BOOLEAN NOT NULL COMMENT "Признак правки заголовка или тела сообщения",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
--     ,FOREIGN KEY (from_user_id) REFERENCES users(id), -- вариант объявления внешни ключей
--     FOREIGN KEY (to_user_id) REFERENCES users(id)
);

ALTER TABLE messages ADD CONSTRAINT fk_messages_from_user_id FOREIGN KEY (from_user_id) REFERENCES users(id);
ALTER TABLE messages ADD CONSTRAINT fk_messages_to_user_id FOREIGN KEY (to_user_id) REFERENCES users(id);

DROP TABLE IF EXISTS friendship;
-- Таблица дружбы
CREATE TABLE friendship (
    user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на инициатора дружеских отношений",
    friend_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя приглашения дружить",
    friendship_status ENUM('FRIENDSHIP', 'FOLLOWING', 'BLOCKED') COMMENT "Cтатус (текущее состояние) отношений", -- (!)Заменим 'status' на 'friendship_status'
	requested_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время отправления приглашения дружить",
	confirmed_at DATETIME COMMENT "Время подтверждения приглашения",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",  
	PRIMARY KEY (user_id, friend_id) COMMENT "Составной первичный ключ"
);

ALTER TABLE friendship ADD CONSTRAINT fk_friendship_user_id FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE friendship ADD CONSTRAINT fk_friendship_friend_id FOREIGN KEY (friend_id) REFERENCES users(id);

-- Таблица групп
DROP TABLE IF EXISTS communities;
CREATE TABLE communities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название группы",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
) COMMENT "Группы";

-- Таблица связи пользователей и групп
DROP TABLE IF EXISTS communities_users;
CREATE TABLE communities_users (
  community_id INT UNSIGNED NOT NULL COMMENT "Ссылка на группу",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  PRIMARY KEY (community_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Участники групп, связь между пользователями и группами";

ALTER TABLE communities_users ADD CONSTRAINT fk_cu_user_id FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE communities_users ADD CONSTRAINT fk_cu_community_id FOREIGN KEY (community_id) REFERENCES communities(id);

/*
	2. Добавить необходимую таблицу/таблицы для того, чтобы можно было использовать лайки для медиафайлов, постов и пользователей.
    для начала создадим простую таблицу медиафайлов ( можно создать отдельно таблицу с типом файлов, и уже их слинковать с "media_files")
*/

DROP TABLE IF EXISTS media_files;
CREATE TABLE media_files (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  path VARCHAR(255) NOT NULL UNIQUE COMMENT 'Путь к файлу'
) COMMENT "Путь к файйлу";

/*
 теперь создадим как бы промежуточную таблицу для различных свзей ""
*/

DROP TABLE IF EXISTS holder;
CREATE TABLE holder (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
    user_id INT UNSIGNED COMMENT "Ссылка на пользователя",
    media_id INT(11) UNSIGNED COMMENT "Ссылка на медиафайл",
	messages_id INT UNSIGNED COMMENT "Ссылка сообщение",
    INDEX user_id (user_id), -- индексируем, правильно не объясню но скорость поиска и т.д. это ускорит
    INDEX media_id (media_id), -- индексируем
    INDEX messages_id (messages_id), -- индексируем
    CONSTRAINT fk_holder_user_id FOREIGN KEY (user_id) REFERENCES users.id ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_holder_media_id FOREIGN KEY (media_id) REFERENCES media_files.id ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_holder_messages_id FOREIGN KEY (messages_id) REFERENCES messages.id ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT "Промежуточная таблица";

/*
Дальше я получаю посмтонно ошибку "Error Code: 1215. Cannot add foreign key constraint	0.046 sec" У меня есть проблемы с этими ключами)) пока не очень понимаю их логику)
*/

/*Таблица связи пользователя и объекта*/
CREATE TABLE `holder_like`
(
    user_id int(10) unsigned NOT NULL COMMENT "Пользоатель который `лайкнул`",
    holder_id int(10) unsigned NOT NULL COMMENT "Ссылка на `держателя объекта`", -- т.е. мы можем за счет таблице "holder безболезненно расширяться
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
    PRIMARY KEY (user_id, holder_id), -- польщователь может "лайкнуть" только раз!
    INDEX user_id (user_id),
    INDEX holder_id (holder_id),
    CONSTRAINT fk_holder_like_user_id FOREIGN KEY (user_id) REFERENCES user.id ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_holder_like_holder_id FOREIGN KEY (holder_id) REFERENCES holder.id ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT "Участники групп, связь между пользователями и группами";

