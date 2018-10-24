use SCP_PHA
go
set nocount on
set quoted_identifier on

Declare
    @var varbinary(max), @var1 varbinary (max)
-- select * from sys.tables order by 1

select hashbytes('md5', 'oliver y milagros')
select convert(varchar(32), hashbytes('md5', 'oliver y milagros'), 2)

select @var = hashbytes('sha2_256', 'oliver y milagros')
select @var1 = hashbytes('sha2_512', 'oliver y milagros')
select @var, len(@var), datalength(@var1)

select convert(varchar(64), @var, 2)
select convert(varchar(128), @var1, 2)

select
(select t from (values(@var))tt(t)for xml path, type).value('.', 'varchar(max)')
