/*
1.
a)
SELECT
	ProductKey AS 'ID Produto',
	ProductName AS 'Nome Produto',
	ClassName AS 'Classe',
	UnitPrice AS 'Preço',
	CASE
		WHEN ClassName = 'Economy' THEN (1 - 0.05) * UnitPrice
		WHEN ClassName = 'Regular' THEN (1 - 0.07) * UnitPrice
		ELSE (1 - 0.09) * UnitPrice
	END AS '% Desconto'
FROM
	DimProduct

b)
DECLARE @varEco FLOAT, @varReg FLOAT, @varDe FLOAT
SET @varEco = 0.05
SET @varReg = 0.07
SET @varDe = 0.09
SELECT
	ProductKey AS 'ID Produto',
	ProductName AS 'Nome Produto',
	ClassName AS 'Classe',
	UnitPrice AS 'Preço',
	CASE
		WHEN ClassName = 'Economy' THEN (1 - @varEco) * UnitPrice
		WHEN ClassName = 'Regular' THEN (1 - @varReg) * UnitPrice
		ELSE (1 - @varDe) * UnitPrice
	END AS '% Desconto'
FROM
	DimProduct
--------------------------------------------------------------------------------------------------------------
2.
SELECT
	BrandName AS 'Marcas',
	COUNT(*) AS 'Quantidade de Produtos',
	CASE
		WHEN COUNT(*) >= 500 THEN 'Categoria A'
		WHEN COUNT(*) >= 100 THEN 'Categoria B'
		ELSE 'Categoria C'
	END AS 'Categorias'
FROM
	DimProduct
GROUP BY BrandName
--------------------------------------------------------------------------------------------------------------
3.
SELECT
	StoreName AS 'Nome das Lojas',
	EmployeeCount AS 'Quantidade de Funcionários',
	CASE
		WHEN EmployeeCount >= 50 THEN 'Acima de 50 Funcionários'
		WHEN EmployeeCount >= 40 THEN 'Entre 40 e 50 Funcionários'
		WHEN EmployeeCount >= 30 THEN 'Entre 30 e 40 Funcionários'
		WHEN EmployeeCount >= 20 THEN 'Entre 20 e 30 Funcionários'
		WHEN EmployeeCount >= 10 THEN 'Entre 10 e 20 Funcionários'
		ELSE 'Abaixo de 10 Funcionários'
	END AS 'Categorias'
FROM
	DimStore
--------------------------------------------------------------------------------------------------------------
4.
SELECT
	ProductSubcategoryName AS 'Nome Subcategorias',
	ROUND (AVG(Weight) * 100,2) AS 'Peso Total',
	CASE
		WHEN 	ROUND (AVG(Weight) * 100,2) >= 1000 THEN 'Rota 2'
		ELSE 'Rota 1'
	END AS 'Rotas'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
GROUP BY ProductSubcategoryName
--------------------------------------------------------------------------------------------------------------
5.
SELECT
	FirstName AS 'Nome',
	Gender As 'Sexo',
	TotalChildren As 'Quantidade de Filhos',
	EmailAddress AS 'Email',
	CASE
		WHEN Gender = 'F' AND TotalChildren > 0 THEN 'Sorteio mãe do ano'
		WHEN Gender = 'M' AND TotalChildren > 0 THEN 'Sorteio pai do ano'
		ELSE 'Sorteio Caminhão de Prêmios'
	END AS 'Ação de Marketing'
FROM
	DimCustomer
--------------------------------------------------------------------------------------------------------------
6.
SELECT
	StoreName,
	OpenDate,
	CloseDate,
	CASE
		WHEN CloseDate IS NULL THEN DATEDIFF(DAY, OpenDate, GETDATE())
		ELSE DATEDIFF(DAY, OpenDate, CloseDate)
	END AS 'Dias em Atividade'
FROM
	DimStore
--------------------------------------------------------------------------------------------------------------
*/