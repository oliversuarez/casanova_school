use bys
go

select * from dbo.tmpT001Prueba

select * from sys.databases where database_id = db_id()
select * from sys.partitions where object_id = object_id('dbo.tmpT001Prueba', 'U')
exec sp_spaceused 'dbo.tmpT001Prueba'

exec sp_helpindex 'dbo.tmpT001Prueba'
exec sp_helpstats 'dbo.tmpT001Prueba'

select *, stats_date(object_id, stats_id) from sys.stats where object_id = object_id('dbo.tmpT001Prueba', 'U')

select * from sys.dm_db_index_physical_stats(db_id(), object_id('dbo.tmpT001Prueba', 'U'),null, null, 'detailed')

dbcc show_statistics ('bys.dbo.tmpT001Prueba', _WA_Sys_00000003_395884C4) with no_infomsgs, stat_header
dbcc show_statistics ('bys.dbo.tmpT001Prueba', _WA_Sys_00000003_395884C4) with no_infomsgs, stats_stream
dbcc show_statistics ('bys.dbo.tmpT001Prueba', _WA_Sys_00000003_395884C4) with no_infomsgs, density_vector
dbcc show_statistics ('bys.dbo.tmpT001Prueba', _WA_Sys_00000003_395884C4) with no_infomsgs, histogram


-- select * from openquery([mili-pc], 'set fmtonly off;dbcc show_statistics (''bys.dbo.tmpT001Prueba'', _WA_Sys_00000003_395884C4)')