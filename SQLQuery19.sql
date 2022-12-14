create database worker;

use worker;

CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY int,
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);
insert into Worker(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)Values
(001,'Monika','Arota',100000,14-02-20,'Account'),
(002,'Niharika','Verma',800000,14-06-11,'Admin'),
(003,'Vishal','Singhal',300000,14-02-20,'HR'),
(004,'Amithab','Singh',500000,14-02-20,'Admin'),
(005,'Vivek','Bhati',500000,14-02-20,'admin'),
(006,'Vipul','Diwan',200000,14-06-11,'Account'),
(007,'Satish','Kumar',75000,14-01-20,'Account'),
(008,'Geetika','Chauhan',90000,14-02-20,'Admin');

CREATE TABLE Bonus (
WORKER_REF_ID INT,
BONUS_AMOUNT INT,
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker(WORKER_ID)

ON DELETE CASCADE);
INSERT INTO Bonus
(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
(001, 5000, 16-02-20),
(002, 3000, 16-06-11),
(003, 4000, 16-02-20),
(001, 4500, 16-02-20),
(002, 3500, 16-06-11);

CREATE TABLE Title (
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),



AFFECTED_FROM DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker(WORKER_ID)

ON DELETE CASCADE
);

INSERT INTO Title
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(001, 'Manager', 2016-02-20),
(002, 'Executive',2016-06-11),
(008, 'Executive',2016-06-11),
(005, 'Manager',2016-06-11),
(004, 'Manager',2016-06-11),
(007, 'Executive',2016-06-11),
(006, 'Lead',2016-06-11),
(003, 'Lead',2016-06-11);

1.SELECT FIRST_NAME "First Name" 
	FROM WORKER;
2. SELECT UPPER(FIRST_NAME) 
   FROM WORKER;

 3.SELECT DISTINCT WORKER_ID 
	FROM WORKER;

4. SELECT SUBSTRING(FIRST_NAME,1,3) 
     FROM WORKER;

6. Select CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'COMPLETE_NAME' from Worker;

7. Select * from Worker where FIRST_NAME in ('Vipul','Satish');

8.Select * from Worker where DEPARTMENT like 'Admin%';

9.Select * from Worker where FIRST_NAME like '%a';
 
 10. Select * from Worker where FIRST_NAME like '%a%';