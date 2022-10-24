create database my_te_angular_app
use my_te_angular_app
create table Registration(
id int primary key Identity(1,1),
username varchar(25),
useremail varchar(40),
password varchar(25),
mobile varchar(25))
select *from Registration

set identity_insert Registration on

insert into Registration(username,useremail,password,mobile) values('Bindu','bindurani9843@gmail.com','bindu@123','9878987656');