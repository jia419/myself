
drop procedure tree01
go
create procedure tree01 
as
select '' as ancester,'1' as isparentflag,'1' as level,'' as parentnodeid,'*' as 'id','全部产品' as 'text' 

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
insert into booktwos values('1','历史类','','1','','1'),
('101','国史大纲','1','0','1#','2'),
('102','明史','1','1','1#','2'),
('10201','万历十五年','102','0','1#102#','3'),
('10202','朱元璋传','102','0','1#102#','3'),
('2','政治类','','1','','1'),
('201','社会论','2','1','2#','2'),
('20101','社会契约论','201','0','2#201#','3'),
('202','习近平谈治国理论','2','1','2#','2'),
('20201','习近平用典','202','0','2#202#','3'),
('20202','之江新语','202','0','2#202#','3'),
('3','艺术类','','1','','1'),
('301','中国当代艺术史','3','0','3#','2'),
('302','工薪族当代艺术收藏之道','3','0','3#','2'),
('303','艺术的故事','3','0','3#','2'),
('4','数学类','','1','','1'),
('401','数学史','4','1','4#','2'),
('40101','证明与反驳－数学发现的逻辑','401','0','4#401#','3'),
('40102','数学天书中的证明','401','0','4#401#','3'),
('40103','数学经验','401','0','4#401#','3'),
('40104','天才引导的历程：数学中的伟大定理','401','0','4#401#','3')






