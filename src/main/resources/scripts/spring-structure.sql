CREATE DATABASE IF NOT EXISTS `spring-structure`;

USE `spring-structure`;

CREATE TABLE IF NOT EXISTS `User`(
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`fullName` varchar(255),
	`username` varchar(255) NOT NULL,
	`password` varchar(255) NOT NULL,
	`created` timestamp DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `User` (fullName, username, password) VALUES ('Dummy User', 'dummyUser', 'dummyPass');
