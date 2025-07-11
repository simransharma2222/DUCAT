use batch4pm;
show tables;

drop table deparment1;
create table department1 (
D_id int primary key ,
D_name  varchar (25) unique
);
drop table employee;

create table if not exists employee(
e_id int primary key,
E_name varchar(40),
salary float,
dept_id int,
constraint foreign key(dept_id) references department1(D_id)
);

insert into employee(e_id,E_name,salary,dept_id) values(1001,"saloni",45000,101);


insert into department1 values(101,"HR"),(102,"admin"),(103,"developer");
select * from department1;

create table emp1
(
e_id int primary key,
e_name varchar(30) default("new joiner"),
age int check(Age>18),
address varchar(50)
);

insert into emp1(e_id,age) values(101,15);

insert into emp1(e_id,age) values(101,56);
select * from emp1;

#create database entities
create database entities;
use entities;

create table student(
student_id int primary key,
student_name varchar(50),
age int,
email varchar(50)
);

create table course(
course_id int primary key,
course_name varchar(50),
title varchar(50),
credits int
);

create table instructor(
inst_id int primary key,
inst_name varchar(50),
inst_deprt varchar(50)
);

#relationships

create table enrollment(
e_id int primary key,
e_date int,
constraint foreign key(student_id) references student(student_id),
constraint foreign key(course_id) references course(course_id)
);

create table teachers(
teacher_id int primary key,
teacher_name varchar(50),
course_id int,
course_name varchar(50)
);

drop table enrollment;

create table enrollment(
e_id int primary key,
e_date date,
student_id int,
course_id int,
constraint foreign key(student_id) references student(student_id),
constraint foreign key(course_id) references course(course_id)
);

drop table teachers;

create table teachers(
teacher_id int primary key,
teacher_name varchar(50),
course_id int,
constraint foreign key(course_id) references course(course_id)
);

create database company1;
use	company1;

show databases;

create table branch(
branch_id int,
branch_name varchar(50),
location varchar(50)
);

drop table branch;	

create table branch(
branch_id int primary key,
branch_name varchar(50),
location varchar(50)
);

desc branch;

insert into branch values(
01,"management branch","delhi");


insert into branch values
(02,"head office","delhi"),
(03,"mumbai","andheri");


create table department(
dep_id int primary key,
dep_name  varchar(50),
branch_id int,
constraint foreign key(branch_id) references branch(branch_id)
);
 
insert into department values(
 101,"hr",01),
 (102,"finance",02),
 (103,"as","03"),
 (104,"ad","02"),
 (105,"ab","01");

create table employee
(
e_id int primary key,
e_name varchar(30),
d_o_j date,
salary float,
dep_id int,
constraint foreign key(dep_id) references department(dep_id)
);

insert into employee values(1001,"sunil",'2020-05-01',28000,103);


create table product(
p_id int primary key,
p_name varchar(50)
);

drop table product;
create table product_emp_branch(
id int primary key,
branch_id int,
e_id int,
constraint foreign key(branch_id) references branch(branch_id),
constraint foreign key(e_id) references employee(e_id)
);

#int for number
#bigint for big number and phone no
#float for (4.000) number
 #double for (2.12456789) number
#char() for one word 
#varchar() for many word
#text for text
#date for date


-- 10/7/2025
select * from department;

select * from branch;

create table product(
p_id int primary key,
p_name varchar(50),
branch_id int,
constraint foreign key(branch_id) references branch(branch_id)
);

drop table product_emp_branch;

insert into product values(1,"asd",02);

create table product_emp_branch(
start_date date,
p_id int,
e_id int,
constraint foreign key(p_id) references product(p_id),
constraint foreign key(e_id) references employee(e_id)
);

insert into product_emp_branch values(
'2022-04-02',1,1001);

-- 11/7/2025

oaghjk
