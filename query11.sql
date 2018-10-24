use bys -- master
go

-- alter database filelistonly modify name = bys
select * from sys.sysdatabases where dbid=db_id()

select * from sys.tables

select t.*, i.name, i.type, i.type_desc
from sys.dm_db_index_physical_stats(db_id(), object_id('dbo.Orders','U'), null, null, 'DETAILED')t
cross apply sys.indexes i
where
    t.object_id = i.object_id and
    t.index_id  = i.index_id

select top 1* from dbo.Orders

exec sp_helpindex Orders

select c.column_id, c.name, s.*, sc.* from sys.stats s
cross apply sys.stats_columns sc
cross apply sys.columns c
where 
    s.object_id = object_id('dbo.Orders','U') and
    s.object_id = sc.object_id and
    s.stats_id  = sc.stats_id  and
    sc.object_id= c.object_id  and
    sc.column_id= c.column_id
    
select column_id, * from sys.columns where object_id = object_id('dbo.Orders','U')    

dbcc show_statistics(Orders, PK_Orders)