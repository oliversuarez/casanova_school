use  master --  prueba
go
/*
create assembly SQLCLR
from 'C:\temp\SQLCLR.dll'
with permission_set = safe
go */
/*
create procedure dbo.usp_SQLCLR
as
external name SQLCLR.[SQLCLR.StoredProcedure].mysqlclr
go
*/

--- restore filelistonly from disk='E:\OLIVER\BaseDatos\Northwind.bak'


restore database Northwind from disk='E:\OLIVER\BaseDatos\Northwind.bak'
with replace,
move 'Northwind' to 'E:\OLIVER\BaseDatos\Northwind_Data.mdf',
move 'Northwind_log' to 'E:\OLIVER\BaseDatos\Northwind_log.ldf'





/*
select * from openrowset('SQLNCLI', 'trusted_connection=yes',
'exec dbo.sp_describe_first_result_set N''select * from dbo.scp_configuracionplanes''')
*/

/*
create database prueba2
on (filename='E:\OLIVER\BaseDatos\SCP_PHA.mdf')
log on (filename='E:\OLIVER\BaseDatos\SCP_PHA.ldf')
for attach;
*/
/*
create database Northwind2
on(filename='E:\OLIVER\BaseDatos\Northwind_01.mdf'),(filename='E:\OLIVER\BaseDatos\Northwind_01.ldf') for attach;
*/

-- select * from sys.sysdatabases
/*
exec sp_configure 'show advanced options', 1;
reconfigure with override;
exec sp_configure 'Ad Hoc Distributed Queries', 1;
reconfigure with override;
exec sp_configure 'show advanced options', 0;
go
*/
/*
exec sp_configure 'show advanced options', 1;
reconfigure with override;
exec sp_configure 'clr enabled', 1;
reconfigure with override;
exec sp_configure 'show advanced options', 0;
reconfigure with override;
go
*/

-- select * from sys.configurations

-- select * from sys.master_files
/*
restore filelistonly from disk='E:\OLIVER\DB\Northwind.bak'
select @@servername, @@servicename
select @@version
select * from msdb.dbo.backupset
*/
