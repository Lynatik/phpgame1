-- DROP DATABASE IF EXISTS `phpgame1`;
-- CREATE DATABASE IF NOT EXISTS `phpgame1` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
-- USE `phpgame1`;

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
	`id` BIGINT(12) UNSIGNED AUTO_INCREMENT NOT NULL,
	`email` VARCHAR(20) NOT NULL,
	`password` VARCHAR(20) NOT NULL,

	-- характеристика персонажа
	`char_force` SMALLINT UNSIGNED NOT NULL,
	`char_stamina` SMALLINT UNSIGNED NOT NULL,
	`health` SMALLINT UNSIGNED NOT NULL DEFAULT 1,
	`level` SMALLINT UNSIGNED NOT NULL DEFAULT 1,
	`kills` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
	`experience` INT UNSIGNED NOT NULL DEFAULT 0,

	`fraction` TINYINT UNSIGNED NOT NULL,
	`area` TINYINT UNSIGNED NOT NULL,
	
	-- инфа о акке
	`is_online` BOOLEAN DEFAULT FALSE,
	`last_action` TIMESTAMP NOT NULL,
	`last_login` TIMESTAMP NOT NULL,
	`last_ip` VARCHAR(15) DEFAULT "",

	PRIMARY KEY(`id`)
);


DROP TABLE IF EXISTS `level_info`;
CREATE TABLE `level_info` (
	`lvl` TINYINT UNSIGNED NOT NULL,
	`exp` INT UNSIGNED NOT NULL,
	`skills` TINYINT UNSIGNED NOT NULL DEFAULT 3

);

-- тестовое изминение