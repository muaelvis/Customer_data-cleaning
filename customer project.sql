create database customer_project;

create table customer (
`cust_id` int not null,
`cust_name` varchar(80) null,
`phone number`varchar(80) null,
`reg date` varchar(80) null,
primary key (cust_id));

. 

select * from customer;

..>Q1 inserting Data into a table.
insert into customer (`cust_id`,`cust_name`,`phone number`,`reg date`) values ('201','sam','002389873','2024-08-09');
insert into customer (`cust_id`,`cust_name`,`phone number`,`reg date`) values ('101', 'Jennifer huston','123456789','2024-09-01');
insert into customer (`cust_id`,`cust_name`,`phone number`,`reg date`) values ('102', 'Peter Parker','00357','2024-09-03');
insert into customer (`cust_id`,`cust_name`,`phone number`,`reg date`) values ('103', 'maconell elvis','2345678901','2024-09-02');

..>Q2 Querying Data
select * from customer;

..>Q3
Retrieve all columns from the customer table.
select * from customer;

..>Q4
Retrieve only the customer name and phone number from the table
select cust_name,`phone number` from customer;

...>Q5
   
where cust_id = 101

..>Q6
Retrieve all customers who registered BEFORE 2024-09-01 and 2024-09-03
select * from customer 
where `reg date` between '2024-09-01' AND '2024-09-03';

..>Q7
Retrieve all customers who registered IN 2024-09-01 and 2024-09-03
select * from customer 
where `reg date` IN ('2024-09-01','2024-09-03');
..>Q8
Retrieve customers whose cust_id is 101,103
select * from customer
where cust_id like '101' or '103';

..>Q9
Retrieve customers whose name starts with the letter 'J'.
select * from customer 
where cust_name like'J%';

select * from customer 
where cust_name like '%s';

..>Q10
Retrieve all customers ordered by registration date in ascending order,
select * from customer 
order by `reg date` asc;

..>Q11
Retrieve all customers ordered by descending
select * from customer 
order by `reg date` desc;

..>Q12 Update the phone number of Jennifer huston to 999999999.

Update customer
set `phone number` = 99999999
where cust_name ='Jennifer huston';
..>Q13 Change maconell elvis registration date to 2024-09-05
Update customer
set `reg date` ='2024-09-05'
where cust_name = 'maconell elvis';

..>Q14 Delete the customer record for Peter Parker
delete from customer
where cust_name = 'Peter Parker';

..>Q15 Delete all customers who registered before 2024-09-02
delete from customer
where `reg date` > '2024-09-02';

..>Q16 Aggregating Data with Count,Sum and Avg
Count the total number of customers in the customer table.
Select count(*) from customer;
>>Q17 Count how many customers registered after 2024-09-01
select count(*) from customer 
where 'reg date' < '2024-09-01';

select count(*) from customer 
where 'reg date' > '2024-09-01';

,,>Q18 Grouping Data (GROUP BY)
Group customers by registration date and count how many customers registered on the date.
select `reg date`,count(*)
from customer
group by `reg date`;

select `reg date`,count(*)
from customer
group by `reg date`
order by count(*) desc;

select `reg date`,count(*)
from customer
group by `reg date`
order by count(*) Asc;

...>Q19 Using joins (INNER JOIN)
JOIN the customers and orders tables,retrieving customer names and order dates.



