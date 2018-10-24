use Northwind
go
-- select * from sys.tables order by 1

set xact_abort on
set tran isolation level read uncommitted

create table #tmpT001Dato (dato1 int primary key clustered, dato2 int)
-- Declare @tmpT001Dato table (dato1 int primary key clustered, dato2 int)

begin try
begin tran

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

commit tran
end try
begin catch
    if (xact_state()) = 1 commit tran
    if (xact_state()) = -1 rollback tran
    select error_message()
end catch

select * from #tmpT001Dato
