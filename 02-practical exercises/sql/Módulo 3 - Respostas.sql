/*
1.
a) SELECT * FROM DimProduct (Possui os 2.517 Produtos cadastrados)
b) SELECT * FROM DimCustomer (O número de clientes diminuiu de 19.500 pra 18.869)

2. A e B)
SELECT 
	CustomerKey AS 'ID Cliente', 
	FirstName AS 'Nome', 
	EmailAddress AS 'Email', 
	BirthDate AS 'Data de Nascimento'
FROM 
	DimCustomer

3.
a)
SELECT TOP(100) 
	* 
FROM 
	DimCustomer
b) 
SELECT TOP(20) PERCENT 
	* 
FROM 
	DimCustomer
c)
SELECT TOP(100)
	FirstName,
	EmailAddress,
	BirthDate
FROM 
	DimCustomer
d)
SELECT TOP(100)
	FirstName AS 'Primeiro Nome',
	EmailAddress AS 'Email de contato',
	BirthDate AS 'Data de Nascimento'
FROM 
	DimCustomer

4.
SELECT DISTINCT 
	Manufacturer AS 'Fornecedores'
FROM 
	DimProduct
5.
SELECT DISTINCT
	ProductKey
FROM 
	FactSales
*/