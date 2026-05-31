-- 生成表格 --

create table users (user_id int primary key, user_name varchar(100), register_date date);
create table photos (photo_id int primary key, user_id int, upload_time datetime);
create table likes (user_id int, photo_id int, like_time datetime);
create table follows (follower_id int, followee_id int, follow_time datetime);
create table comments (comment_id int primary key, user_id int, photo_id int, comment_time datetime);
-- 导入数据： 使用DBeaver GUI 完成 --


-- 生成表格，连接到tableau中进行可视化
create table user_growth as select date_format(register_date,'%Y-%m') month, count(*) new_users from users group by date_format(register_date, '%Y-%m');

create table user_like_activity as select user_id, count(*) like_n from likes group by user_id;

create table user_follow_activity as select follower_id as user_id, count(*) as following_n from follows group by follower_id;

create table user_behavior_relation as select u.user_id, 
coalesce(f.following_n,0) following_n, 
coalesce(l.like_n,0) like_n from users u 
left join (select follower_id as user_id, count(*) following_n from follows group by follower_id) f on u.user_id = f.user_id 
left join (select user_id, count(*) like_n from likes group by user_id) l on u.user_id = l.user_id;
create table photo_hot as select photo_id, count(*) like_n from likes group by photo_id;

create table user_segment as select u.user_id, 
coalesce(f.following_n,0) following_n, 
coalesce(l.like_n,0) as like_n, 
case when coalesce(f.following_n,0) >50 then 'high social' 
when coalesce(f.following_n,0) >20 then 'medium social' 
else 'low social' end as social_level 
from users u left join (select follower_id as user_id, count(*) following_n from follows group by follower_id) f on u.user_id = f.user_id 
left join (select user_id, count(*) like_n from likes group by user_id) l on u.user_id = l.user_id;







