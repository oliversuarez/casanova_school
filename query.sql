select spid from sys.sysprocesses where spid = @@spid
use scp_demo
go
select spid from sys.sysprocesses where spid = @@spid

select * from dbo.sme_Beneficiario
select * from dbo.sme_miembrobeneficiario

select text from sys.syscomments where id = object_id('dbo.usp_General_SelMax', 'p')
select text from sys.syscomments where id = object_id('dbo.usp_General_SelMaxFil', 'p')

-- exec dbo.sp_pkeys sme_Beneficiario
-- select * from sys.columns where object_id = object_id('dbo.sme_Beneficiario', 'U')
-- select text from sys.syscomments where id = object_id('dbo.usp_sme_Beneficiario_Del', 'p')

-- select * from sys.procedures order by name

/*
usp_sme_Beneficiario_Del                                                                                                          1232111530         NULL           1                0 P    SQL_STORED_PROCEDURE                                         2012-04-23 19:04:53.410 2017-01-24 18:48:33.903             0            0                   0                0                       0                         0                      0
usp_sme_Beneficiario_Ins                                                                                                          1248111587         NULL           1                0 P    SQL_STORED_PROCEDURE                                         2012-04-23 19:04:58.000 2017-02-06 20:37:34.893             0            0                   0                0                       0                         0                      0
usp_sme_Beneficiario_Sel                                                                                                          1264111644         NULL           1                0 P    SQL_STORED_PROCEDURE                                         2012-04-23 19:05:06.347 2017-02-06 20:33:33.460             0            0                   0                0                       0                         0                      0
*/

-- select * from dbo.mpp_niveleducativo
-- exec sp_help mpp_niveleducativo


/*
select t.*, 9999 datos, c.* from sys.columns c 
cross apply sys.types t
where c.object_id = object_id('dbo.products', 'U') and
    c.system_type_id = t.system_type_id and
    c.user_type_id = t.user_type_id

*/

-- select * from dbo.sme_idioma

-- waitfor delay '00:00:50'
-- select * from sys.types

-- select text from sys.syscomments where id = object_id('dbo.usp_sme_General_SelTablas', 'p')



-- drop procedure dbo.usp_sme_Beneficiario_Upd