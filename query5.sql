use northwind
go
set quoted_identifier on

Declare @tbl
    table (base64 varchar(max), binario varbinary(max))
    
insert into @tbl(base64) 
select 
(select t from (values(foto))tt(t) for xml path, type).value('.', 'varchar(max)')
from openrowset(bulk 'D:\fotos rodo\20160728_085942.jpg', single_blob)sb(foto)

update tb set binario = 
(select t from (values(base64))tt(t) for xml path, type).value('.', 'varbinary(max)')
from @tbl tb

select * from @tbl
