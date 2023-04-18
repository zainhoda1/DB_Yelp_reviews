select user.user_id, user.review_count, 
round(sum(review.stars)/count(review.stars), 6) true_stars from user
inner join review
on user.user_id = review.user_id
having user.review_count = 1