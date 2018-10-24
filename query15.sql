use bys
go

select hashbytes('sha2_256', 'luna tiene hambre de hueso')

select convert(varchar(64), hashbytes('sha2_256', 'luna tiene hambre de hueso'), 2)


select hashbytes('md5', 'emoreno')
select convert(varchar(32), hashbytes('md5', 'emoreno'), 2)


/* select @@version */
