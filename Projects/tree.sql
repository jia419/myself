
drop procedure tree01
go
create procedure tree01 
as
select '' as ancester,'1' as isparentflag,'1' as level,'' as parentnodeid,'*' as 'id','ȫ����Ʒ' as 'text' 

union all
select ('*#'+ancester) as ancester,isparentflag,(level+1) as level,parentnodeid,rtrim(productID) as 'id',rtrim(productID)+'	'+rtrim(productname) as 'text' from Products

go


drop procedure tree02
go
create procedure tree02 
as
select rtrim(bookID) as 'id',rtrim(bookID)+'	'+rtrim(bookname) as 'text',*  from booktwos 
order by rtrim(Ancester)+bookID
go

select * from booktwos
drop table booktwos
create table booktwos (
bookid nvarchar(50),
bookname char(50),
parentnodeid nchar(50),
isparentflag tinyint,
ancester nvarchar(255),
level tinyint
)
insert into booktwos values('1','��ʷ��','','1','','1'),
('101','��ʷ���','1','0','1#','2'),
('102','��ʷ','1','1','1#','2'),
('10201','����ʮ����','102','0','1#102#','3'),
('10202','��Ԫ谴�','102','0','1#102#','3'),
('2','������','','1','','1'),
('201','�����','2','1','2#','2'),
('20101','�����Լ��','201','0','2#201#','3'),
('202','ϰ��ƽ̸�ι�����','2','1','2#','2'),
('20201','ϰ��ƽ�õ�','202','0','2#202#','3'),
('20202','֮������','202','0','2#202#','3'),
('3','������','','1','','1'),
('301','�й���������ʷ','3','0','3#','2'),
('302','��н�嵱�������ղ�֮��','3','0','3#','2'),
('303','�����Ĺ���','3','0','3#','2'),
('4','��ѧ��','','1','','1'),
('401','��ѧʷ','4','1','4#','2'),
('40101','֤���뷴������ѧ���ֵ��߼�','401','0','4#401#','3'),
('40102','��ѧ�����е�֤��','401','0','4#401#','3'),
('40103','��ѧ����','401','0','4#401#','3'),
('40104','������������̣���ѧ�е�ΰ����','401','0','4#401#','3')






