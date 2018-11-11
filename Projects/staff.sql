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
insert into staff values('1','����','�ܾ���','1561125511','15611251@163.com','����������','�����۹���5�꣬����3�꣬����˾��ȥ������������','�����˹�˾10��Ŀ������','һ��','','1','','1'),
('101','����','���ܾ���','1561125512','15611252@163.com','����ʲô·','��������3��','�������۲������������۳ɼ�','һ��','1','0','1#','2'),
('102','����','�ܾ�������','1561125513','15611253@163.com','�Ĵ�����','���۹�������5��','Ϊ���۲������������۳ɼ�','һ��','1','0','1#','2'),
('103','��˼��','���۲���','1561125514','15611254@163.com','�Ͼ�','Ӧ���ѧ��ҵ��','ʵϰ�ڼ��������','����','1','1','1#','2'),
('10301','����','���۲�Ա��','1561125515','15611255@163.com','�Ϻ�','�����������5��','Ϊ���۲������������۳ɼ�','��ר','103','0','1#103#','3'),
('10302','�ž�','���۲�Ա��','1561125516','15611256@163.com','��������','��Ӫ��ױƷ��7��','','һ��','103','0','1#103#','3'),
('104','��ɺ','������Դ������','1561125517','15611257@163.com','����','Ӧ���ѧ��ҵ��','','��ר','1','1','1#','2'),
('10401','�','������Դ��Ա��','1561125518','15611258@163.com','̨��','΢��2��','ʵϰ�ڼ��������','����','104','0','1#104#','23'),
('10402','С��','������Դ��Ա��','1561125519','15611259@163.com','����','Ӧ���ѧ��ҵ��','�������۲������������۳ɼ�','����','104','0','1#104#','3'),
('10403','��ΰ','������Դ��Ա��','1561125520','15611260@163.com','�½�','��������3��','ʵϰ�ڼ��������','һ��','104','0','1#104#','3')
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