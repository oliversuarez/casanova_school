use SCP_DEMO
go

exec dbo.sp_change_users_login 'auto_fix', 'ownersoft'
go
exec dbo.sp_change_users_login 'auto_fix' , 'ownersoft' ,NULL,  'gcti121335'


-- select * from sys.procedures order by 1

U: sme_organizacionBeneficiaria  -- ya esta
U: sme_beneficiario -- mio