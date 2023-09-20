Use VK;
-- Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке. [ORDER BY]
SELECT DISTINCT firstname FROM Users ORDER BY firstname;
-- Выведите количество мужчин старше 35 лет [COUNT].
SELECT COUNT(*) FROM profiles WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) > 35 AND gender = 'm' ORDER BY birthday;
-- Сколько заявок в друзья в каждом статусе? (таблица friend_requests) [GROUP BY]
SELECT COUNT(*), status FROM friend_requests GROUP BY status;