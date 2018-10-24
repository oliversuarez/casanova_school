use northwind
go
set nocount on
set rowcount 4
select * from sys.sysdatabases where dbid = db_id()
select current_user
select top 0 *, item = convert(varchar(64), hashbytes('sha2_256', ProductName), 2) into dbo.#tmpT001Dato from dbo.products

select * from dbo.products
select * from #tmpT001Dato

select parsename('perci.#tmpT001Da',2), parsename('dbo.tmpT001',1)

declare @var varchar(max)= 'AMORENO|12231_23|23.34|23;23|23.34|23;23|23.34|23;23|23.34|23'
select @var
select parsename(stuff(replace(@var,'.','*'), charindex('_', replace(@var,'.','*')),1,'.'), 2)
select replace(parsename(stuff(replace(@var,'.','*'), charindex('_', replace(@var,'.','*')),1,'.'), 1),'*','.')


return
set rowcount 0
select * from sys.systypes

set language spanish
select convert(varchar, cast(1452312.23 as money), 1)

exec tempdb.dbo.sp_help #tmpT001Dato

