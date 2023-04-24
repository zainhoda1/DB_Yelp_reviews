-- Finding the business names which provide the best food and restaurant 
select r.business_id, b.name, b.categories, b.stars
from review r
inner join user u on r.user_id = u.user_id
inner join business b on b.business_id = r.business_id
where b.categories REGEXP 'food|restaurants|coffee' and b.stars = 5
group by r.business_id;
