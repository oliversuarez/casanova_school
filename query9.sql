use Northwind
go

/*
exec dbo.sp_msforeachtable N'\
select * from sys.tables where quotename(schema_name(schema_id), ''['') +''.''+ quotename(name, ''['') = "?" \
select * from sys.tables where name = parsename("?", 1)'
*/
-- select * from sys.tables

select * from sys.syslogins

select current_user