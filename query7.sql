use Northwind
go

-- select * from sys.tables

select * from dbo.categories c

select * from dbo.categories where categoryid not in (1,5,7)

select * from dbo.categories where not categoryid in (1,5,7)

select * from dbo.categories c 
where not exists(select * from (values(1), (5), (7))t(dato) where dato = c.categoryid )

select * from dbo.categories c
outer apply (select * from (values(1), (5), (7))t(dato) where dato = c.categoryid)tt
where tt.dato is null


select * from dbo.categories c
cross apply (values(1), (5), (7))t(dato) 
