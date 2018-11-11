drop procedure example28_fulltree
go
create procedure example28_fulltree
as
	select rtrim(areaid) as 'id', rtrim(areaid)+' '+rtrim(areaname) as 'text',*
	from Areas 
	order by rtrim(ancester)+areaid
go

drop procedure example28_childtree
go
create procedure example28_childtree @pnodeid varchar(20)
as
	select rtrim(areaid) as 'id', rtrim(areaid)+' '+rtrim(areaname) as 'text',*
	from Areas where ParentNodeID=@pnodeid
	order by rtrim(ancester)+areaid
go

