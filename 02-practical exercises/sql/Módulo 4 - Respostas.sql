/*
1.
SELECT TOP (100)
	*
FROM
	FactSales
ORDER BY SalesQuantity DESC

2.
SELECT TOP (10)
	*
FROM
	DimProduct
ORDER BY UnitPrice DESC, Weight DESC, AvailableForSaleDate ASC

3.
a)
SELECT
	ProductName,
	Weight
FROM
	DimProduct
WHERE Weight >=100
b)
SELECT
	ProductName AS 'Nome Produto',
	Weight AS 'Peso'
FROM
	DimProduct
WHERE Weight >=100
c)
SELECT
	ProductName AS 'Nome Produto',
	Weight AS 'Peso'
FROM
	DimProduct
WHERE Weight >=100
ORDER BY Weight DESC

4.
a)
SELECT
	StoreName,
	OpenDate,
	EmployeeCount
FROM
	DimStore
b)
SELECT
	StoreName AS 'Nome da loja',
	OpenDate AS 'Data de abertura',
	EmployeeCount AS 'Quantidade de funcionários'
FROM
	DimStore
c)
SELECT
	StoreName AS 'Nome da loja',
	OpenDate AS 'Data de abertura',
	EmployeeCount AS 'Quantidade de funcionários'
FROM
	DimStore
WHERE StoreType = 'Store' AND Status = 'On'

5.
SELECT
	*
FROM
	DimProduct
WHERE 
	BrandName = 'Litware' AND 
	ProductName LIKE '%Home Theater%' AND 
	AvailableForSaleDate = '20090315'

6.
SELECT
	*
FROM
	DimStore
WHERE 
	CloseDate IS NOT NULL

7. Cat 1,2,3
SELECT
	*
FROM
	DimStore
WHERE 
	EmployeeCount BETWEEN 1 AND 20

8.
SELECT
	ProductKey AS 'ID',
	ProductName AS 'Nome Produto',
	UnitPrice AS 'Preço Unitário'
FROM
	DimProduct
WHERE 
	ProductDescription LIKE '%LCD%'

9.
SELECT
	*
FROM
	DimProduct
WHERE 
	ColorName IN ('Green','Orange','Black','Silver','Pink') AND
	BrandName IN ('Contoso','Litware','Fabrikam')

10.
SELECT
	*
FROM
	DimProduct
WHERE 
	BrandName = 'Contoso' AND
	ColorName = 'Silver' AND
	Weight BETWEEN 10 AND 30
ORDER BY UnitPrice DESC
*/