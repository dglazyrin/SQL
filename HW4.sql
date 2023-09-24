use vk;
select users.lastname AS owner, count(*) from users join users_communities on users.id = users_communities.user_id group by users.id order by count(*) desc;
select count(*), communities.name from users_communities join communities on users_communities.community_id = communities.id group by communities.id;
select from_user_id as sender, users.lastname as name, count(*) as 'messages count' from messages join users users on users.id = messages.from_user_id where to_user_id = 1 group by from_user_id order by count(*) desc limit 1;