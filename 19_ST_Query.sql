-- create database 19_Sep_ST

-- use 19_sep_st

/* create table person(pid int,
					pname varchar(20),
					address varchar(200),
					email varchar(50))
                    
   
   */
-- use 19_sep_st
--	show tables
-- alter table person add city varchar(20)
-- alter table person drop email
-- drop table person   

/* create table student 
			(fname varchar(20) , lname varchar(20) ,
            roll_no int primary key,college_name varchar(50),address varchar(50),percen decimal)
   */         
-- insert into student(fname,lname,roll_no,college_name,percen,address) values('Sumaiya','Shah',301,'Gujarat University',72.34,'Kalupur')
-- select * from student
-- alter table student modify percen decimal(5,2)

-- insert into student values('studt1','Joshi',311,'Rajshthan University','Jaipur',67.45)

/* insert into student values('studt1','Joshi',401,'Assam University','City1',80.12),
('Rohit','Bhatt',501,'Ganpati University','Mahesana',89.23),
('Kohali','Sharma',405,'Silver oak University','Ahmedabad',78.34),
('Surya','Kumar',504,'President College','Delhi',72.45),
('Axar','Patel',801,'PDPU','Gabdhinagar',88.34),
('Dhoni','Mahi',607,'HL College ','Baroda',90.23),
('Bumarah','Jashprit',809,'Parul University','Baroda',77.34),
('Yuvraj','Shign',909,'Punjab University','Amritsar',45.34),
('Yujvenra','Chahal',666,'Nirma University','GN',66.23) */

select * from student

					
-- 15th Oct

insert into department_master values
(1001,"HR"),
(1002,"Sales"),
(1003,"Finance"),
(1004,"IT"),
(1005,"Marketing")


insert into employee(ename,address,c_no,city,age,did) values ("Vikas","Bopal",88888,"Baroda",25,1001) ,
															 ("dharti","SG Highway",777777,"Ahemedabad",30,1003),
                                                             ("Suraj","GN",5456,"Gandhinagar",25,1002)
                                                             




update employee set address="South Bopal" where eid=5

select * from student where percen>90.00;

select * from student where address='Ahmedabad';

select * from student where address in('Ahmedabad','Delhi','Baroda');

select * from student where address = 'Baroda' and percen>70;

select * from student where address = 'Baroda' or percen>70;

select roll_no,fname from student;

select roll_no,fname as 'First Name' from student;

select * from student where roll_no between 400 and 700;

select * from student where fname is null;

select * from student order by address;

select * from student order by address desc;

select * from student order by address,fname;

select * from student where college_name like 'p%';

select * from student where college_name like '______University';

create table department (dept_id int primary key,dept_name varchar(20));

create table employee (emp_id int primary key,ename varchar(20),city varchar(20),salary int, dept_id int,
                      foreign key (dept_id) references department(dept_id)
                      );

insert into department values
(1001,"HR"),
(1002,"Sales"),
(1003,"Finance"),
(1004,"IT"),
(1005,"Marketing");


insert into employee values (1,"Vikas Bopal","Baroda",234589,1001) ,
                            (2,"Rohit","Delhi",23412,1002),
                            (3,"Surya","Baroda",78906,1002),
                            (4,"Dhoni","Surat",67890,1003),
                            (5,"Raj","Ahmeabad",52345,1004),
                            (6,"Ritesh","Rajkot",30000,1005),
                            (7,"Bumarah","Baroda",78906,1005),
                            (8,"Mahi","Rajkot",34200,1003),
                            (9,"Gautam","Surat",34000,1004);
															 
select * from department;

select * from employee;

select emp_id,ename,city,dept_name from department,employee
where department.dept_id=employee.dept_id;


