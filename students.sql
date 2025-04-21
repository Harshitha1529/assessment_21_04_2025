--  Create a students table with the following columns:
create table studentss(
s_id int primary key,
s_name varchar not null,
s_email varchar unique,
s_age int, 
s_marks decimal
);
select * from studentss;

insert into studentss(s_id,s_name,s_email,s_age,s_marks)
values(1,'raju','raju@gmail.com',21,65),
(2,'jaggu','jaggu@gmail.com',22,75),
(3,'bheem','bheem@gmail.com',23,85),
(4,'raj','raj@gmail.com',18,80),
(5,'krish','krish@gmail.com',25,88);

--  Fetch student details where age > 21. 
select * from studentss where s_age>21;
--  Update the email of the student with id = 5 to 'rahul@gmail.com'. 
update studentss set s_email='rahul@gmail.com' where s_id=5;

-- Delete all students with age < 18.
delete from studentss where s_age<18;

-- Find the second highest score student details. 
select s1.*from students s1 where 1=(select count(s_id) from studentss s1 where s1.s_id<s1.s_id);

create table studeent(
s_id int primary key,
s_name varchar,
s_age int
);
create table courses(
c_id int primary key,
c_name varchar,
s_id int,
foreign key(s_id)references studeent(s_id)
);
select * from studeent;
select * from courses;

insert into studeent(s_id,s_name,s_age)
values(1,'Rahul',22),(2,'Priya',21),(3,'Akash',23);

insert into courses(c_id,s_id,c_name)
values(101,1,'Java'),(102,2,'Python'),(103,1,'SQL');

select s.s_names,c.c_name from studeent s inner join courses c on s.s_id=c.c_id;
