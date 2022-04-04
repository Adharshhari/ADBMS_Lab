create database dep;
use dep;
create table dept(deptno int not null primary key,dname varchar(20) not null,LOC varchar(20) not null);
alter table dept rename to department;
alter table department add column PINCODE int not null;
select * from department;