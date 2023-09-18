use vk;
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
	id SERIAL,
    `artist` VARCHAR(255),
    `song_name` VARCHAR(255),
    `filename` VARCHAR(255),
    `user_id` BIGINT UNSIGNED NOT NULL,
    `media_type_id` BIGINT UNSIGNED NOT NULL,
    
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);

DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
	id SERIAL,
    `name` VARCHAR(255),
    `official_page` VARCHAR(255),
    `user_id` BIGINT UNSIGNED NOT NULL,
    
    FOREIGN KEY (user_id) REFERENCES users(id)
    );

INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`body`,`created_at`)
VALUES (`1`,`1`,`2`,`Hello!`,2023-17-09 3:27)
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`body`,`created_at`)
VALUES (`1`,`2`,`1`,`Hi!`,2023-17-09 3:28)
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`body`,`created_at`)
VALUES (`1`,`1`,`2`,`WTF?`,2023-17-09 3:28)
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`body`,`created_at`)
VALUES (`1`,`2`,`1`,`Just because...`,2023-17-09 3:29)
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`body`,`created_at`)
VALUES (`1`,`1`,`2`,`How r u?`,2023-17-09 3:29)
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`body`,`created_at`)
VALUES (`1`,`2`,`1`,`Well...`,2023-17-09 3:30
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`body`,`created_at`)
VALUES (`1`,`1`,`2`,`Lets go!`,2023-17-09 3:30)
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`body`,`created_at`)
VALUES (`1`,`2`,`1`,`Nice...`,2023-17-09 3:32)

INSERT INTO `games` VALUES
('1', 'PACMAN','vk.com/PACMAN')
('2', 'SEE_FIGHT','vk.com/SEE_FIGHT')
('3', 'CHESS','vk.com/CHESS')
('4', 'FARM','vk.com/FARM')
('5', 'FOOTBALL','vk.com/FOOTBALL')
('6', 'HOCKEY','vk.com/HOCKEY')
('7', 'STORM','vk.com/STORM')
('8', 'HEAVY_RAIN','vk.com/HEAVY_RAIN')
('9', 'IL_2','vk.com/IL_2')
('10', 'T_34','vk.com/T_34')
