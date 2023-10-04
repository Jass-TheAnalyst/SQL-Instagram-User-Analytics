select * from comments;
select * from follows;
select * from likes;
select * from photo_tags;
select * from photos;
select * from tags;
select * from users;
 
 
select day,count(id) as 'no_of_users' from 
(select *,dayname(created_at) as 'day' from users order by day desc) as table1
group by day order by count(day) desc;

