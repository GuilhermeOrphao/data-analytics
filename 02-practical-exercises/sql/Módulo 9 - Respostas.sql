/*
1.
a)
SELECT
	ProductName AS 'Nome produto',
	LEN(ProductName) AS 'Quantidade de caracteres'
FROM
	DimProduct
ORDER BY LEN(ProductName) DESC

b)
SELECT
	AVG(LEN(ProductName)) AS 'Média de caracteres'
FROM
	DimProduct

c)
SELECT
	ProductName,
	BrandName,
	ColorName,
	REPLACE(REPLACE(ProductName, BrandName, ''), ColorName, '')
FROM
	DimProduct

d)
SELECT
	AVG(LEN(REPLACE(REPLACE(ProductName, BrandName, ''), ColorName, '')))
FROM
	DimProduct
--------------------------------------------------------------------------------------------------------------
2.
SELECT
	ProductName,
	StyleName,
	TRANSLATE(StyleName, '0123456789', 'ABCDEFGHIJ')
FROM
	DimProduct
--------------------------------------------------------------------------------------------------------------
3.
SELECT
	FirstName + ' ' + LastName AS 'Nome Completo',
	EmailAddress AS 'Email',
	LEFT(EmailAddress, CHARINDEX('@', EmailAddress) -1 ) AS 'Login',
	UPPER(FirstName + DATENAME(DAYOFYEAR, BirthDate)) AS 'Senha'
FROM
	DimEmployee
--------------------------------------------------------------------------------------------------------------
4.
SELECT
	FirstName,
	EmailAddress,
	AddressLine1,
	DateFirstPurchase
FROM
	DimCustomer
WHERE YEAR(DateFirstPurchase) = 2001
--------------------------------------------------------------------------------------------------------------
5.
SELECT
	FirstName AS 'Nome',
	EmailAddress AS 'Email',
	HireDate AS 'Data de Contratação',
	DAY(HireDate) AS 'Dia da contratação',
	DATENAME(MONTH, HireDate) AS 'Mês da contratação',
	YEAR(HireDate) AS 'Ano da contratação'
FROM
	DimEmployee
--------------------------------------------------------------------------------------------------------------
6.
SELECT
	StoreName AS 'Nome da Loja',
	OpenDate AS 'Data de Abertura',
	CloseDate AS 'Data de Fechamento',
	DATEDIFF(DAY, OpenDate, GETDATE()) AS 'Dias ativo'
FROM
	DimStore
WHERE CloseDate IS NULL
--------------------------------------------------------------------------------------------------------------
*/