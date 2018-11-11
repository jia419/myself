drop table staff
create table staff(
	staffid char(50) primary key,
	name char(100),
	position char(100),
	phone int,
	email char(100),
	adress char(100),
	experience char(250),
	contribution char(100),
	educational char(100),
	parentnodeid nchar(50),
	isparentflag tinyint,
	ancester nvarchar(255),
	level tinyint
)
insert into staff values('1','张三','总经理','1561125511','15611251@163.com','北京王府井','做销售工作5年，助理3年，经公司送去国外深造两年','攻克了公司10年的亏本情况','一本','','1','','1'),
('101','李四','副总经理','1561125512','15611252@163.com','重庆什么路','总理秘书3年','带领销售部创造过最佳销售成绩','一本','1','0','1#','2'),
('102','萨达','总经理秘书','1561125513','15611253@163.com','四川泸州','销售工作做过5年','为销售部创造过最佳销售成绩','一本','1','0','1#','2'),
('103','伊思达','销售部长','1561125514','15611254@163.com','南京','应届大学毕业生','实习期间表现优异','二本','1','1','1#','2'),
('10301','胡可','销售部员工','1561125515','15611255@163.com','上海','开过个体书店5年','为销售部创造过最佳销售成绩','大专','103','0','1#103#','3'),
('10302','张军','销售部员工','1561125516','15611256@163.com','杭州西湖','经营化妆品店7年','','一本','103','0','1#103#','3'),
('104','王珊','人力资源部部长','1561125517','15611257@163.com','湖州','应届大学毕业生','','大专','1','1','1#','2'),
('10401','李虎','人力资源部员工','1561125518','15611258@163.com','台湾','微商2年','实习期间表现优异','二本','104','0','1#104#','23'),
('10402','小娥','人力资源部员工','1561125519','15611259@163.com','北京','应届大学毕业生','带领销售部创造过最佳销售成绩','二本','104','0','1#104#','3'),
('10403','董伟','人力资源部员工','1561125520','15611260@163.com','新疆','总理秘书3年','实习期间表现优异','一本','104','0','1#104#','3')
select * from staff
select * from booktwos
drop procedure mycom1
go
create procedure mycom1 @pnodeid varchar(20)
as
select rtrim(bookid) as 'id', rtrim(bookid)+' '+rtrim(bookname) as 'text',*
	from booktwos where ParentNodeID=@pnodeid
	order by rtrim(ancester)+bookid
go

drop procedure tree1
go
create procedure tree1 
as
select rtrim(areaID) as 'id',rtrim(areaID)+'	'+rtrim(areaname) as 'text',* from areas
	order by rtrim(ancester)+areaid
go