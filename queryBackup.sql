use master
go

backup database SCP_DEMO
to disk='E:\OLIVER\DB\scp_demo.bak'
with noformat, description='copia momentanea'