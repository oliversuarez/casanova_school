use bys
go
set nocount off
/*
drop table dbo.tmpT001Prueba
create table dbo.tmpT001Prueba(
    id int identity(1,1) not null primary key,
    cab int not null,
    digloc_codigo int not null,
    loc_codigo char(8),
    digloc_estado tinyint not null default(0),
    aud_user char(6) not null,
    aud_fecha datetime2 not null default(sysdatetime())
) on [primary]
*/

-- select cast(round(rand()*9999,0,1) as int), abs(checksum(newid()))

-- select * from dbo.tmpT001Prueba -- where digloc_codigo = 5107
 return

insert into dbo.tmpT001Prueba(cab,digloc_codigo,loc_codigo,aud_user, emp_codigo)
select 101, 5104, 'C0100771', 'STO003', 2
waitfor delay '00:00:00.100'

 go 9
 update t set cab = 10 from dbo.tmpT001Prueba t where id = scope_identity()

 select * from dbo.tmpT001Prueba

-- return
select id, cab, digloc_codigo, loc_codigo, digloc_estado, aud_user, aud_fecha, emp_codigo
from(select 
item = row_number()over(partition by emp_codigo order by digloc_codigo, aud_fecha desc),
rank = rank()over(partition by emp_codigo order by digloc_codigo), *
from dbo.tmpT001Prueba)t where item = rank -- and cab = 71


