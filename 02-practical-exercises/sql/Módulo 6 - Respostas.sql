/*
1.
a)
SELECT
	channelKey AS 'Canal de Venda',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
GROUP BY channelKey

b)
SELECT
	StoreKey AS 'Identificador das Lojas',
	SUM(SalesQuantity) AS 'Total Vendido',
	SUM(ReturnQuantity) AS 'Total Devolvido'
FROM
	FactSales
GROUP BY StoreKey

c)
SELECT
	channelKey AS 'Canal de vendas',
	SUM(SalesAmount) AS 'Total Vendido'
FROM
	FactSales
WHERE DateKey BETWEEN '20070101' AND '20071231'
GROUP BY channelKey
-------------------------------------------------------
2.
a)
SELECT
	ProductKey AS 'ID Produtos',
	SUM(SalesAmount) AS 'Faturamento Total'
FROM
	FactSales
GROUP BY ProductKey
HAVING SUM(SalesAmount) > 5000000
ORDER BY SUM(SalesAmount)

b)
SELECT TOP(10)
	ProductKey AS 'ID Produtos',
	SUM(SalesAmount) AS 'Faturamento Total'
FROM
	FactSales
GROUP BY ProductKey
ORDER BY SUM(SalesAmount) DESC
-------------------------------------------------------
3.
a)
SELECT TOP(1)
	CustomerKey AS 'ID Cliente',
	SUM(SalesQuantity) AS 'Total comprado'
FROM
	FactOnlineSales
GROUP BY CustomerKey
ORDER BY SUM(SalesQuantity) DESC

b)
SELECT TOP(100) * FROM FactOnlineSales

SELECT TOP (3)
	ProductKey AS 'ID Produto',
	SUM(SalesQuantity) AS 'Total comprado'
FROM
	FactOnlineSales
WHERE CustomerKey = 19037
GROUP BY ProductKey
ORDER BY SUM(SalesQuantity) DESC

4.
a)
SELECT
	BrandName AS 'Marca',
	COUNT(ProductKey) AS 'Quantidade de Produtos'
FROM
	DimProduct
GROUP BY BrandName
ORDER BY COUNT(ProductKey) DESC

b)
SELECT
	ClassName AS 'Classes',
	AVG(UnitPrice) AS 'Média Preço Unitário'
FROM
	DimProduct
GROUP BY ClassName

c)
SELECT TOP(100) * FROM DimProduct

SELECT
	ColorName AS 'Cores',
	SUM(Weight) AS 'Peso Total'
FROM
	DimProduct
GROUP BY ColorName
ORDER BY SUM(Weight) DESC

5.
SELECT
	StockTypeName AS 'Tipo',
	SUM(Weight) AS 'Peso Total'
FROM
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY SUM(Weight) DESC

6.
SELECT
	BrandName AS 'Marca',
	COUNT(DISTINCT ColorName) AS 'Quantidade de Cores'
FROM
	DimProduct
GROUP BY BrandName

7.
SELECT
	Gender AS 'Sexo',
	COUNT(Gender) AS 'Quantidade de Clientes',
	AVG(YearlyIncome) AS 'Média Salarial'
FROM
	DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender

8.
SELECT
	Education AS 'Nível Escolar',
	COUNT(Education) AS 'Quantidade Total',
	AVG(YearlyIncome) AS 'Média Salarial'
FROM
	DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education
ORDER BY AVG(YearlyIncome) DESC

9.
SELECT
	DepartmentName AS 'Departamento',
	COUNT(DepartmentName) AS 'Quantidade por Departamento'
FROM
	DimEmployee
WHERE Status = 'Current'
GROUP BY DepartmentName

10.
SELECT
	Title AS 'Cargo',
	SUM(VacationHours) AS 'Total de Horas'
FROM
	DimEmployee
WHERE Gender = 'F' AND 
	DepartmentName IN ('Production', 'Marketing','Engineering', 'Finance') AND
	HireDate BETWEEN '1999-01-01' AND '2000-12-31'
GROUP BY Title
*/