select * from comments;
select * from follows;
select * from likes;
select * from photo_tags;
select * from photos;
select * from tags;
select * from users;

select users.id,users.username,table1.total_no_of_photos_liked from users
inner join
(
select user_id,count(photo_id) as total_no_of_photos_liked from likes
group by user_id
having count(photo_id) = (select count(id) from photos)
) table1
on
users.id=table1.user_id;