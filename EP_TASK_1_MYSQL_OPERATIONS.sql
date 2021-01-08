use dbmslab8;
create table Employees_details_EP(empid int primary key,empNmae varchar(45),empage int,empdept varchar(45),empsalary int,
desigination varchar(45),empdob date);
desc Employee_EP_Task1;
#insertion
insert into Employee_EP_Task1 values(101,'Arjun',30,'CSE',50000,'Professor','1990-01-01'),
(102,'hari',35,'ECE',60000,'CC','1985-12-23'),
(204,'Krishna',34,'EEE',50000,'Asst.Professor','1986-04-29'),
(314,'Ram',29,'CSE',40000,'CC','1991-06-06'),
(230,'Kalyan',32,'ECE',55000,'HOD','1988-03-26'),
(190,'Lakshmi',28,'IT',450000,'Asst.Professor','1992-11-10'),
(340,'sita',27,'CSE',55000,'professor','1993-07-06');
alter table Employees_details_EP add address varchar(45);
alter table Employees_details_EP change empNmae empName varchar(45);
alter table Employees_details_EP rename Employee_EP_Task1;
alter table  Employee_EP_Task1 drop column address;
select * from Employee_EP_Task1;
#deletion 
delete from Employees_details_EP where empid=340;
delete from Employees_details_EP;
truncate table Employee_EP_Task1;
#update
update  Employees_details_EP set empNmae='Giri' where empid=101;
update Employee_EP_Task1 set empsalary=empsalary+1000;

#queries:
select * from Employee_EP_Task1;
select * from Employee_EP_Task1 where address="GUNTUR";
select * from Employee_EP_Task1 where empName="lakshmi";
select * from Employee_EP_Task1 where empsalary>50000;
select * from Employee_EP_Task1 where empsalary>50000 and empid=101;
select * from Employee_EP_Task1 order by empid asc;
select distinct(empName) from Employee_EP_Task1;
select count(empid) as no_of_employees from Employee_EP_Task1;
select max(empsalary) from Employee_EP_Task1;
select min(empsalary) from Employee_EP_Task1;
select avg(empsalary) from  Employee_EP_Task1;




