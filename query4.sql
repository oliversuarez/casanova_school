use Northwind
go
set nocount on
-- select * from sys.tables order by 1


create table #tmpT001Dato (dato1 int primary key clustered, dato2 int)
-- Declare @tmpT001Dato table (dato1 int primary key clustered, dato2 int)

begin try
insert into #tmpT001Dato
select 1, 2 union all
select 2, 2 union all
select 3, 2 union all
select 4, 2 union all
select 5, 2 union all
select 6, 2 union all
select 7, 2 

select * from #tmpT001Dato

insert into #tmpT001Dato select 2, 4
end try begin catch 
select error_message()
end catch

select * from #tmpT001Dato

select error_message()