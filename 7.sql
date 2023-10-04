select * from comments;
select * from follows;
select * from likes;
select * from photo_tags;
select * from photos;
select * from tags;
select * from users;
select user_id,count(id) 'no_of_times_posted_on_instagram' from photos
group by user_id
order by count(id);

select (select count(id) as 'Total_Photos' from photos) 
div 
(select count(id) as 'Total_Users' from users) as 'Total_Photos/Total_Users';










