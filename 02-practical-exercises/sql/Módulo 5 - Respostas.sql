/*
1.
SELECT
	SUM(SalesQuantity) AS 'Quantidade Vendida',
	SUM(ReturnQuantity) AS 'Quantidade Devolvida'
FROM
	FactSales
WHERE	
	channelKey = 1

2.
SELECT
	AVG(YearlyIncome) AS 'Média Salarial Anual'
FROM
	DimCustomer
WHERE 
	Occupation = 'Professional'

3.
a)
SELECT
	MAX(EmployeeCount) AS 'Maior Quantidade de Funcionários'
FROM
	DimStore
b)
SELECT
	TOP(1) StoreName AS 'Nome da loja',
	EmployeeCount AS 'Maior Quantidade de Funcionários'
FROM
	DimStore
ORDER BY EmployeeCount DESC
c)
SELECT
	MIN(EmployeeCount) AS 'Menor Quantidade de Funcionários'
FROM
	DimStore
d)
SELECT
	TOP(1) StoreName AS 'Nome da loja',
	EmployeeCount AS 'Maior Quantidade de Funcionários'
FROM
	DimStore
WHERE EmployeeCount IS NOT NULL
ORDER BY EmployeeCount ASC

4.
a)
SELECT
	COUNT(FirstName)
FROM
	DimEmployee
WHERE Gender = 'M'
b)
SELECT
	TOP (1) FirstName AS 'Primeiro Nome',
	HireDate AS 'Data de Contratação',
	EmailAddress AS 'Email'
FROM
	DimEmployee
WHERE Gender = 'F'
ORDER BY HireDate ASC

5.
SELECT
	COUNT(DISTINCT BrandName) AS 'Quantidade de Marcas',
	COUNT(DISTINCT ClassName) AS 'Quantidade de Classes',
	COUNT(DISTINCT ColorName) AS 'Quantidade de Cores'
FROM
	DimProduct
*/