/*
1.
SELECT
	ProductKey AS 'ID Produtos',
	ProductName AS 'Produtos',
	ProductSubcategoryName AS 'Subcategorias'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
--------------------------------------------------------------------------------------------------------------
2.
SELECT
	ProductSubcategoryKey AS 'ID Subcategoria',
	ProductSubcategoryName AS 'Subcategorias',
	ProductCategoryName AS 'Categorias'
FROM
	DimProductSubcategory
LEFT JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey

3.
SELECT
	StoreKey AS 'ID Lojas',
	StoreName AS 'Lojas',
	Employeecount AS 'Quantidade de Funcionários',
	ContinentName AS 'Continente',
	RegionCountryName AS 'País'
FROM
	DimStore
LEFT JOIN DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey
--------------------------------------------------------------------------------------------------------------
4.
SELECT
	ProductName AS 'Nome Produto',
	ProductCategoryDescription AS 'Categorias'
FROM
	DimProduct
LEFT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
		LEFT JOIN DimProductCategory
			ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
--------------------------------------------------------------------------------------------------------------
5.
a)
SELECT TOP(100) * FROM FactStrategyPlan

b)
SELECT
	StrategyPlanKey,
	DateKey,
	AccountName,
	Amount
FROM
	FactStrategyPlan
INNER JOIN DimAccount
	ON	FactStrategyPlan.AccountKey = DimAccount.AccountKey
--------------------------------------------------------------------------------------------------------------
6.
SELECT
	StrategyPlanKey,
	DateKey,
	ScenarioName,
	Amount
FROM
	FactStrategyPlan
INNER JOIN DimScenario
	ON	FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey
--------------------------------------------------------------------------------------------------------------
7.
SELECT
	ProductName,
	ProductSubcategoryName
FROM
	DimProduct
RIGHT JOIN DimProductSubcategory
	ON	DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
WHERE ProductName IS NULL
--------------------------------------------------------------------------------------------------------------
8.
SELECT
	DISTINCT BrandName,
	ChannelName
FROM
	DimProduct
CROSS JOIN DimChannel
WHERE BrandName IN ('Contoso', 'Fabrikam', 'Litware')
--------------------------------------------------------------------------------------------------------------
9.
SELECT TOP(100) 
	OnlineSalesKey,
	DateKey,
	PromotionName,
	SalesAmount
FROM
	FactOnlineSales
INNER JOIN DimPromotion
	ON FactOnlineSales.PromotionKey = DimPromotion.PromotionKey
WHERE PromotionName <> 'No Discount'
ORDER BY DateKey ASC
--------------------------------------------------------------------------------------------------------------
10.
SELECT TOP(100) 
	SalesKey,
	ChannelName,
	StoreName,
	ProductName,
	SalesAmount
FROM
	FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
ORDER BY SalesAmount DESC
*/