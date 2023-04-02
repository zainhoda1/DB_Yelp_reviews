CREATE TABLE checkin (
business_id varchar(100) primary key ,
checkin_date text
); 

select * from checkin limit 3;
select count(business_id) from checkin;