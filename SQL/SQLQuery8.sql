UPDATE Production.ProductDescription
SET Description = 'Chromoly steel_High of defects'
WHERE ProductDescriptionID = 3
SELECT Description
from Production.ProductDescription
where Description LIKE '_'

SELECT Distinct FirstName , HireDate
from HumanResources.Employee , Person.Person

SELECT AVG(Distinct ListPrice) 
from Production.Product

select Name
from Production.Product
where ListPrice between 100 and 120

Select INTO store_Archive
select * from store_Archive
select COUNT(*)
from store_Archive

SELECT * INTO  store_Archive
from Sales.Store
WHERE 1=0;