select * from comments;
select * from follows;
select * from likes;
select * from photo_tags;
select * from photos;
select * from tags;
select * from users;

select tag_id,tag_name,count(photo_id) from
(
select pt.photo_id,pt.tag_id,t.tag_name from photo_tags pt
inner join tags t
on pt.tag_id=t.id
) as finaltable
group by tag_id
limit 5;
