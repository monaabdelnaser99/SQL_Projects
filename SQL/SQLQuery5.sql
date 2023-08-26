USE AdventureWorks2012
select SalesOrderID, ShipDate from sales.SalesOrderHeader where DueDate between '7/28/2008' and '7/29/2014'

select ProductID , Name from Production.Product where StandardCost < 110.00 

select ProductID , name from Production.product where Weight is null

select * from Production.Product where Color in('Silver', 'Black' ,' Red') 
select * from Production.Product where Name like 'B%'

 
SELECT * INTO custT_Archive FROM Sales.Customer