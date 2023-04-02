CREATE TABLE business (
business_id varchar(50) primary key ,
name varchar(100),
address text(100),
city text(50),
state text(50),
postal_code varchar(30),
latitude double,
longitude double,
stars int,
review_count int,
is_open int,
categories text
); 

#drop table business
#select * FROM BUSINESS limit 5
# select count(*) from business  #  150346