create table salesman(
salesman_id int not null primary key,
name char(25),
city char(25),
commission float);

insert into salesman(salesman_id,name,city,commission)values(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5007,'Paul Adam','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.12);
---------------------------------------------

CREATE VIEW newyorkstaff
AS SELECT *
FROM salesman
WHERE city = 'New York';

SELECT *
FROM newyorkstaff
WHERE city='New York';
----------------------------------------

CREATE VIEW salesown
 AS SELECT salesman_id, name, city
 FROM salesman;
-----------------------------------------------------------

 CREATE VIEW citynum
AS SELECT city, COUNT (DISTINCT salesman_id)
FROM salesman
GROUP BY city;

-------------------------------------------------
create table customers(
customer_id int not null primary key,
cust_name char(25),
city char(25),
grade int,
 salesman_id int FOREIGN KEY REFERENCES salesman(salesman_id));

 insert into customers(customer_id,cust_name,city,grade,salesman_id)values(3002,'Nick Riamdo','New york',100,5001),
 (3007,'Brad Davis','New York',200,5001),
 (3005,'Graham Zusi','California',200,5002),
 (3008,'Julian Green','London',300,5002),
 (3004,'Fubin Johson','paris',300,5006),
 (3009,'Geof','Berlin',100,5003),
 (3003,'Jozy Altidor','Moscow',100,5007);

 CREATE VIEW gradecount (grade, number)
AS SELECT grade, COUNT(*)
FROM customers
GROUP BY grade;

-----------------------------------------------------------------
create table Order1(
	ord_no int primary key,
	purch_amt float,
	ord_date datetime,
	salesman_id int FOREIGN KEY references SALESMAN(salesman_id),
	customer_id int FOREIGN KEY references Customers(customer_id),
)

insert into Order1 values (70001,150.5,'2012-10-05',5002,3005)
insert into Order1 values (70009,270.65,'2012-09-10',5005,3004)
insert into Order1 values (70002,65.26,'2012-10-05',5001,3002)
insert into Order1 values (70004,110.5,'2012-08-17',5003,3009)
insert into Order1 values (70007,948.5,'2012-09-10',5002,3005)
insert into Order1 values (70005,2400.6,'2012-07-27',5001,3007)
insert into Order1 values (70008,5760,'2012-09-10',5001,3002)

select * from Order1

-- 5.create a view to get the salesperson and customer by name. Return order name, purchase amount, salesperson ID, name, customer name.
create view Order_detail
as
select o.ord_no,o.purch_amt,o.ord_date,s.salesman_id,s.name as salesman_name,c.cust_name 
from Order1 o, SALESMAN s, Customers c 
where s.salesman_id=o.salesman_id and c.customer_id=o.customer_id

select * from Order_detail