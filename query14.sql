use bys
go
-- return
-- delete from dbo.tmpT001Prueba where id > 133

select * from dbo.tmpT001Prueba
return
select name, column_id, is_nullable, is_identity, default_object_id, collation_name
from sys.columns where object_id = object_id('dbo.tmpT001Prueba', 'U')

go
return
insert into dbo.tmpT001Prueba(cab, digloc_codigo, aud_user)
select 103, 5106, 'GPI001'
waitfor delay'00:00:00.100'
go 13
update t set cab=111 from dbo.tmpT001Prueba t where id = scope_identity()


select * from(select 
item = row_number()over(partition by emp_codigo order by digloc_codigo, aud_fecha desc),
rank = rank()over(partition by emp_codigo order by digloc_codigo), * 
from dbo.tmpT001Prueba)t where item = rank or item = rank + 1
order by emp_codigo, digloc_codigo, aud_fecha desc


return
select * from(select
item = row_number()over(partition by emp_codigo order by digloc_codigo, aud_fecha desc),
rank = rank()over(partition by emp_codigo order by digloc_codigo), * 
from dbo.tmpT001Prueba)t where item = rank + 1
