select * from products
drop procedure datatree1
go
create procedure datatree1
as
select productid as 'id',productid+'	'+productname as 'text',* from Products
order by rtrim(Ancester)+productid
go