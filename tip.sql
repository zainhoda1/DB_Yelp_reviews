
CREATE TABLE tip (
tip_id int primary key ,
user_id varchar(100) ,
business_id varchar(100),
tip_text text,
tip_date date,
compliment_count int
); 


SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;
SELECT count(*) FROM tip ;  #  908915
COMMIT ;

select * from tip limit 50 

#delete from tip where 1 = 1
#drop table tip