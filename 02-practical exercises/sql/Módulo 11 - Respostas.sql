/*
1.
a)
CREATE VIEW vwProdutos AS
SELECT
	ProductName AS 'Nome Produto',
	ColorName AS 'Cor',
	UnitPrice AS 'Preço',
	UnitCost AS 'Custo'
FROM
	DimProduct

b)
CREATE VIEW vwFuncionarios AS
SELECT
	FirstName AS 'Nome',
	BirthDate AS 'Data de Nascimento',
	DepartmentName 'Departamento'
FROM
	DimEmployee

c)
CREATE VIEW vwLojas AS
SELECT
	StoreKey AS 'Nome',
	StoreName AS 'Data de Nascimento',
	OpenDate AS 'Departamento'
FROM
	DimStore
--------------------------------------------------------------------------------------------------------------
2.
CREATE VIEW vwClientes AS
SELECT
	CONCAT(FirstName, ' ', LastName) AS 'Nome Completo',
	REPLACE(REPLACE(Gender, 'M', 'Masculino'), 'F', 'Feminino') AS 'Gênero',
	EmailAddress AS 'Email',
	FORMAT(YearlyIncome, 'C') AS 'Renda Anual'
FROM
	DimCustomer
--------------------------------------------------------------------------------------------------------------
3.
a)
CREATE VIEW vwLojasAtivas AS
SELECT *
FROM
	DimStore
WHERE Status = 'On'

b)
CREATE VIEW vwFuncionariosMk AS
SELECT 
	FirstName,
	EmailAddress,
	DepartmentName
FROM
	DimEmployee
WHERE DepartmentName = 'Marketing'

c)
CREATE VIEW vwContosoLitwareSilver AS
SELECT 
	*
FROM
	DimProduct
WHERE BrandName IN ('Contoso', 'Litware') AND ColorName = 'Silver'
--------------------------------------------------------------------------------------------------------------
4.
CREATE VIEW vwTotalVendidoProdutos AS
SELECT 
	ProductName AS 'Nome Produto',
	SUM(SalesQuantity) AS 'Quantidade Vendida'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ProductName
--------------------------------------------------------------------------------------------------------------
5.
a)
ALTER VIEW vwProdutos AS
SELECT 
	ProductName AS 'Nome Produto',
	BrandName AS 'Marca',
	ColorName AS 'Cor',
	UnitPrice AS 'Preço Unitário',
	UnitCost AS 'Custo Unitário'
FROM
	DimProduct

b)
ALTER VIEW vwFuncionarios AS
SELECT 
	FirstName AS 'Nome',
	BirthDate AS 'Data de Nascimento',
	DepartmentName AS 'Departamento'
FROM
	DimEmployee
WHERE Gender = 'F'

c)
ALTER VIEW vwLojas AS
SELECT 
	StoreKey AS 'ID Loja',
	StoreName AS 'Nome da Loja',
	OpenDate AS 'Data da Abertura'
FROM
	DimStore
WHERE Status = 'On'
--------------------------------------------------------------------------------------------------------------
6.
a)
CREATE VIEW vw_6a AS
SELECT 
	BrandName AS 'Marca',
	COUNT(*) 'Quantidade de Produtos'
FROM
	DimProduct
GROUP BY BrandName

b)
ALTER VIEW vw_6a AS
SELECT 
	BrandName AS 'Marca',
	COUNT(*) 'Quantidade de Produtos',
	SUM(Weight) AS 'Peso Total'
FROM
	DimProduct
GROUP BY BrandName
c)
DROP VIEW vw_6a
--------------------------------------------------------------------------------------------------------------
*/