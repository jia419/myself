drop table company
create table company(
companyid char(150) primary key,
companyname char(100),
address char(250),
phone bigint,
password char(250),
note varchar(550)
)
insert into company values('A1001','�����������޹�˾','����������','201533331234','B1001','����˾����1997�꣬��˾������һ������ UCenter Ϊ������������������������� Discuz!/UCenter Home/SupeSite �ȱ��û��㷺ʹ�õ�������Ʒ���������������ļ������º�ƽ̨����Ӫ��'),
('A1002','�Ͼ�������޹�˾','����ʲô·','201533331235','B1002','���У���˾����������Ʒ Discuz!����ȫ��Χ���û�����󡢸���������������̳��BBS����Ʒ����Ϊһ�׳����������̳���������Discuz! ��ÿһ���������������й������������������罻��������'),
('A1003','ʲ��ʳƷ���޹�˾','�Ĵ�����','201533331236','B1003','���������ķ�չ��Discuz! ������������������ϵ���˻�����ģ�ͣ��ѳ�Ϊ�˻�����������Ʒ��ʵ�ϵı�׼��������û��Ϳ����߹㷺��ͬ�Ͳ��ɡ�'),
('A1004','��Ծ�������޹�˾','�Ͼ�','201533331237','B1004','����Ϊ�û������ֵ�����Comsenz ���Ƴ��������罻����Ӧ�ã�Applications�������ߵ����ο���ƽ̨��Manyou Open Platform������һ��Ҫ�Ĵ����Է�����Ч��ʵ������վ����Ӧ�ÿ�����֮��ĶԽӣ����� UCenter Home �� Discuz! ʹ�����ṩ�������������վ�������ļܹ��͹��ܣ����õķ��������ǵ��û���'),
('A1005','������ԣ���޹�˾','�Ϻ�','201533331238','B1005','Ŀǰ��ȫ���г��� 200 ��Ҷ�����վ���� Comsenz ƽ̨����ļ�������������������ƽ̨���������������罻���硢�����Ż��ȣ���ͬʱ��Comsenz Ҳ���й�����Դ���루Open Source��������Ʒ��һ�����ģ���˾���²�Ʒ Discuz!/UCenter Home �Ⱦ���ҵ�硢�������о�������ý�幫��Ϊ������������ߵ��͵Ŀ�Դ������'),
('A1006','��ͬ��ά���޹�˾','��������','201533331239','B1006','�������ƵĲ�Ʒ����������⣬Comsenz �������� Insenz ����Ӫ��ƽ̨�� Yeswan ��Ϸ��Ӫƽ̨�������ڶ��е��û����ƣ�Insenz �� Yeswan Ϊ���������Ϸ�ṩ���ṩ��һϵ�д���������Ӫ��������ʹ�û����������״�ӵ���������������ֵ���ԡ������߿ɲ����ԵĶ���ӯ��ģʽ���Ӷ�Ϊ���������Ϸ�ṩ�̼�������Ӫ�ߴ������µļ�ֵ�ر���'),
('A1007','���ż������޹�˾','����','201533331240','B1007','Comsenz ����ȫ�����ȵ�PHP�����쵼�� Zend Technologies ���������õĺ�����ϵ��˫�������������й����� PHP ��Դ�������� PHPChina.com�����ѳ�Ϊ�й� PHP �Ϳ�Դ�����һ�����ġ�'),
('A1008','ԣ��¡�����޹�˾','̨��','201533331241','B1008','Comsenz ��ʼ��������רע�����������ڶ������ڻ�������������ĳ��쾭���Ӱ��������˾�� 2006 �ꡢ2007 ��ֱ����˰��������ֶ�������Ͷ���̺�ɼ�ʱ���Sequoia Capital������������Ͷ�ʹ�˾���˴�Ͷ��Morningside Ventures���Լ����������ͷ�ȸ裨Google����˾���ڵĶ�һ�����ҵ��Ͷ�ʣ��� Comsenz �����ۺ���з�����Ӫʵ��Ϊ���'),
('A1009','¡���������޹�˾','����','201533331242','B1009','���й���������ҵ���ԴԴ���ϵġ�����������������ÿ����վ������ӵ���Լ�������������ÿ������ʵ�������� Web 2.0 Ӧ�ã���Э��ÿ������Ե�����ʵ��Ӯ����'),
('A1010','������Ѹ���޹�˾','�½�','201533331243','B1010','���������ķ�չ��Discuz! ������������������ϵ���˻�����ģ�ͣ��ѳ�Ϊ�˻�����������Ʒ��ʵ�ϵı�׼��������û��Ϳ����߹㷺��ͬ�Ͳ��ɡ�')
select * from company
drop procedure com1
go
create procedure com1 @s1 char(250)
as
select * from company where companyname=@s1
go