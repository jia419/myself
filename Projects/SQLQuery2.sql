drop procedure customerspro
go
create procedure customerspro @s1 char(50)
as
select * from Customers where CustomerID=@s1
go
select * from customers