IF EXISTS (SELECT name FROM sysobjects WHERE name = 'get_customers_sp' AND type = 'P')
	drop proc get_customers_sp
go
CREATE PROCEDURE get_customers_sp
AS
SELECT * FROM Customers
GO
RETURN 0
GO;

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'get_customers_by_city_sp' AND type = 'P')
	drop proc get_customers_by_city_sp
go
CREATE PROCEDURE get_customers_by_city_sp @City nvarchar(30)
AS
SELECT * FROM Customers WHERE City = @City
GO
RETURN 0
GO;
