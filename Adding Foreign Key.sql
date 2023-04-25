ALTER TABLE review
#ADD FOREIGN KEY (user_id) REFERENCES user(user_id),
ADD FOREIGN KEY (business_id) REFERENCES business(business_id);


#Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails 
#(`yelp_project`.`#sql-301_337`, CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`))

select count(user_id) from review;  # 6990280
select count(user_id ) from tip; # 908915
select count(distinct user_id) from review;  # 1987929
select count(distinct user_id ) from user;  # 1987897
select count(distinct user_id ) from tip;  # 301758
select count(distinct business_id ) from review;  # 150346
select count(distinct business_id ) from business; # 150346
select count(distinct business_id ) from checkin; # 131930
select count(*) from  review a left join user b on a.user_id = b.user_id  where b.user_id is Null;  #33
select count(*) from  tip a left join user b on a.user_id = b.user_id  where b.user_id is Null;  #0
select count(*) from  checkin a left join business b on a.business_id = b.business_id  where b.business_id is Null;  #0
select count(*) from  review a left join business b on a.business_id = b.business_id  where b.business_id is Null;  #0