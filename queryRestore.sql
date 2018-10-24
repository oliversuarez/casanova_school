use master
go

restore database SCP_DEMO from disk='e:\oliver\juan1\BASCP_02112016.bak'
with replace,
move 'SCP' to 'E:\OLIVER\DB\SCP_DEMO.mdf',
move 'SCP_log' to 'E:\OLIVER\DB\SCP_DEMO_log.ldf', stats=10
/*
RESTORE LOG AdventureWorks2012  
   FROM AdventureWorksBackups  
   WITH RECOVERY;  
*/
