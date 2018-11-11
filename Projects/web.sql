drop table emp
create table emp(
empno int  PRIMARY KEY,
empname varchar(50) ,
position varchar(20) ,
salary decimal(7,2),
hiredate date 
)
select * from emp
insert into emp(empno,empname,position,salary,hiredate) values (001,'呈祥','经理',3000,'2010-03-08')
insert into emp(empno,empname,position,salary,hiredate) values (002,'张三','副经理',2000,'2010-03-08')
insert into emp(empno,empname,position,salary,hiredate) values (003,'李四','销售部部长',2000,'2010-03-08')
insert into emp(empno,empname,position,salary,hiredate) values (004,'王城','销售部员工',3000,'2010-03-08')
insert into emp(empno,empname,position,salary,hiredate) values (005,'郑悦','销售部员工',2000,'2010-03-08')
insert into emp(empno,empname,position,salary,hiredate) values (006,'王强','技术部部长',3000,'2010-03-08')
insert into emp(empno,empname,position,salary,hiredate) values (007,'吴迪','技术员工',2000,'2010-03-08')
insert into emp(empno,empname,position,salary,hiredate) values (008,'王湾','仓库管理员',4000,'2010-03-08')
insert into emp(empno,empname,position,salary,hiredate) values (009,'吉祥','仓库管理员',2000,'2010-03-08')
insert into emp(empno,empname,position,salary,hiredate) values (010,'文强','财务部部长',3000,'2010-03-08')
insert into emp(empno,empname,position,salary,hiredate) values (011,'文星','会计',2000,'2010-03-08')




