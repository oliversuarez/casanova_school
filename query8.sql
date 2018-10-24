use northwind
go
set rowcount 0
-- exec dbo.sp_help orders
Declare
    @dato varchar(max)='NATO|23_12|5.67|3;34|21.3|1;1|2.34|6;22|3.4|8'

select 'select * from (values('+replace(quotename(@dato,''''), '_', '''),(''')+'))t(dato)'
select(N'select * from (values('''+replace(@dato, '_', '''),(''')+'''))t(dato)')




set rowcount 5
select OrderID, CustomerID, EmployeeID, OrderDate from dbo.orders
select * from dbo.[Order Details]
select productid, UnitsInStock from dbo.products

