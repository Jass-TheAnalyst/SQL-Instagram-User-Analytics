select * from comments;
select * from follows;
select * from likes;
select * from photo_tags;
select * from photos;
select * from tags;
select * from users;

select user_id,photo_id ,count(user_id) from likes
inner join  users 
on likes.user_id=users.id;

select *,count(*) from likes where user_id =2