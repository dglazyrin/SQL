USE vk;
DROP function IF EXISTS delete_user_from_vk;
DELIMITER $$
CREATE FUNCTION delete_user_from_vk (USER_ID BIGINT)
RETURNS BIGINT
LANGUAGE SQL DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER
BEGIN
	SET FOREIGN_KEY_CHECKS=0;
		DELETE FROM vk.messages WHERE messages.from_user_id = USER_ID;
		DELETE FROM vk.likes WHERE likes.user_id = USER_ID;
		DELETE FROM vk.media WHERE media.user_id = USER_ID;
		DELETE FROM vk.profiles WHERE profiles.user_id = USER_ID;
		DELETE FROM vk.users WHERE users.id = USER_ID;
	SET FOREIGN_KEY_CHECKS=1;
RETURN USER_ID;
END$$
DELIMITER ;
SELECT delete_user_from_vk(1);
USE vk;
DROP procedure IF EXISTS proced_delete_user_from_id;

DELIMITER $$
CREATE PROCEDURE proced_delete_user_from_id (USER_ID BIGINT)
BEGIN
	START TRANSACTION;
		SET FOREIGN_KEY_CHECKS=0;
			DELETE FROM vk.messages WHERE messages.from_user_id = USER_ID;
			DELETE FROM vk.likes WHERE likes.user_id = USER_ID;
			DELETE FROM vk.media WHERE media.user_id = USER_ID;
			DELETE FROM vk.profiles WHERE profiles.user_id = USER_ID;
			DELETE FROM vk.users WHERE users.id = USER_ID;
		SET FOREIGN_KEY_CHECKS=1;
    COMMIT;
END$$
DELIMITER ;
CALL proced_delete_user_from_id(1);