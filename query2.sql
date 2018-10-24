use GCTI 
go
/*
create table dbo.tmpT001DatosPrueba(
    item int primary key not null,
    descr char(80),
    fecha date,
    id bit
)
*/

select 
    c.name, c.column_id, c.is_nullable, c.is_identity, df.cdefault, tt.type, tt.is_unique, tt.name
from sys.columns c
cross apply sys.syscolumns df
outer apply (select i.type, i.is_unique, i.name from sys.index_columns ic
             cross apply sys.indexes i
             where 
                    ic.object_id = i.object_id and
                    ic.index_id  = i.index_id  and
                    ic.object_id = c.object_id and 
                    ic.column_id = c.column_id)tt
where 
    c.object_id = object_id('dbo.tmpT001DatosPrueba', 'U') and
    c.object_id = df.id and
    c.column_id = df.colid
    
    
return
select * from sys.index_columns where object_id = object_id('dbo.tmpT001DatosPrueba', 'U')
select * from sys.indexes where object_id = object_id('dbo.tmpT001DatosPrueba', 'U')


-- select * from sys.syscolumns where id = object_id('dbo.tmpT001DatosPrueba', 'U')

-- select * from sys.sysindexes where id = object_id('dbo.scp_Contraparte', 'U')
-- select * from sys.indexes where object_id = object_id('dbo.tmpT001DatosPrueba', 'U')


-- select * from sys.tables




-- select * from sys.sysdatabases order by 1

/*
select * from sys.master_files

restore filelistonly from disk='E:\OLIVER\DB\scp_demo.bak'
restore filelistonly from disk='E:\OLIVER\JUAN1\BASCP_02112016.bak'
restore filelistonly from disk='E:\OLIVER\PROYECTOS NET\BASCPPHA_1909201.bak'
*/
