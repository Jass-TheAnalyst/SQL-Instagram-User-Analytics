select * from comments;
select * from follows;
select * from likes;
select * from photo_tags;
select * from photos;
select * from tags;
select * from users;
select * from photos where id=127;

select table2.photo_id,table2.no_of_users_who_liked_the_photo,table2.image_url,users.id as user_id,users.username,users.created_at 
from
(
select table1.photo_id,table1.no_of_users_who_liked_the_photo,p.user_id,p.image_url 
from
(select photo_id,count(user_id) as 'no_of_users_who_liked_the_photo' from likes group by photo_id order by count(user_id) desc) 
 as table1
 inner join 
 photos p
 on p.id=table1.photo_id

  order by no_of_users_who_liked_the_photo desc
) 
as table2
inner join users
on
table2.user_id=users.id
order by no_of_users_who_liked_the_photo desc;


