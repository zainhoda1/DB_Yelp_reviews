CREATE TABLE review (
review_id varchar(100) primary key ,
user_id varchar(100),
business_id varchar(100),
stars int,
useful int,
funny int,
cool int,
#review_text text,
review_date date
); 

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;
SELECT count(review_id) FROM review ;
COMMIT ;

#delete from review where 1 = 1
#drop table review