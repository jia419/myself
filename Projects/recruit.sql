drop table recruit
create table recruit(
recruitid char(100) primary key,
companyname char(250),
recruitname char(250),
number int,
require1 char(100),
require2 char(100),
require3 char(100),
note char(250),
createdate datetime,
deletedate datetime,
datex int
)

insert into recruit values('C1001','北京金龙有限公司','前台销售人员','3','大专学历','三年工作经验','','','2017-1-15','2017-2-2','18'),
('C1002','北京金龙有限公司','编程人员','5','大学学历','有项目经验','男','最好有单独完成一个项目的经历','2017-3-5','2017-3-7','2'),
('C1003','南京玩具有限公司','公关人员','2','性格开朗','女','','','2017-1-4','2017-1-18','14'),
('C1004','南京玩具有限公司','保洁人员','6','勤劳','身体健康','60岁以下','','2017-6-15','2017-6-20','5'),
('C1005','什锦食品有限公司','销售部经理','1','大学学历','良好交流性格','年薪10万人民币','招聘者需在招聘时需对我们公司提出销售建议','2017-8-16','2017-8-25','9'),
('C1006','什锦食品有限公司','食品试吃人员','5','身体健康','无偏食，无过敏经历','','','2017-6-30','2017-7-9','9'),
('C1007','什锦食品有限公司','食品包装人员','13','年龄在60岁以下','月薪2000人民币','','','2017-4-15','2017-4-18','3'),
('C1008','安跃迈科有限公司','前台接待人员','4','性格人品良好','女','','前三个月是培训期，无工资，正式上岗后月薪2000人民币','2017-1-15','2017-1-20','5'),
('C1009','安跃迈科有限公司','客户电话提示人员','6','大专学历','有耐心','声音最少是好听的','月薪2000人民币，前一个月半薪','2017-2-13','2017-2-20','7'),
('C1010','迈光尚裕有限公司','产品体验人员','2','大专学历','对生活品质有要求','','每次体验都要形成书面形式的报告','2017-9-15','2017-9-23','8'),
('C1011','联同蓝维有限公司','销售人员','2','中专学历','交际能力强','应酬能力强','','2017-4-2','2017-4-25','23'),
('C1012','联同蓝维有限公司','产品体验人员','2','大专学历','对此产品有独特爱好','','','2017-11-15','2017-12-7','22'),
('C1013','联同蓝维有限公司','产品开发人员','4','博士学历','专业领域包括此类产品开发','对此类产品有领先市场的研究理念与工作','招聘者只需在规定时限内上交工作进度，不严格要求工作固定空间','2017-7-1','2017-7-21','20'),
('C1014','天优吉玛有限公司','生产部经理','1','拥有海外生产经验','在国外生产此类产品超过3年','','','2017-12-6','2017-12-9','3'),
('C1015','裕汇隆方有限公司','产品试验人员','5','身心健康','自愿参加','','','2017-6-15','2017-6-25','10'),
('C1016','隆海德优有限公司','市场宣传人员','5','大专学历','','','','2017-2-22','2017-2-26','4'),
('C1017','隆海德优有限公司','总经理助理','2','大学学历','文本实力扎实','','','2017-5-15','2017-5-19','4'),
('C1018','天磊速迅有限公司','送货人员','2','身体健康','男','年龄45岁以下','','2017-6-5','2017-6-27','22'),
('C1019','天磊速迅有限公司','创意总监','1','大学学历','在此领域有10年工作经验','年薪30万人民币','','2017-7-15','2017-8-7','23')

drop procedure recpro1
go
create procedure recpro1 @s1 char(100)
as
select rtrim(recruitid) as id,rtrim(recruitid)+''+rtrim(recruitname)+'	'+RTRIM(datex)+'(天)' as name from recruit where datex<'7' and companyname=@s1
go

drop procedure recpro2
go
create procedure recpro2 @s2 char(100)
as
select rtrim(userid) as id,rtrim(userid)+' '+rtrim(username) as name2 from sys_users where recruited='1' and recruitid=@s2
go

select * from sys_users
A2013040018
select * from recruit
select * from company


