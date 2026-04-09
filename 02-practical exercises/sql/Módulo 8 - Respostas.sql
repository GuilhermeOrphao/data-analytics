/*
1.
DECLARE @valor1 INT = 10, @valor2 INT = 5, @valor3 INT = 34, @valor4 INT = 7
DECLARE @soma INT, @subtracao INT
a)
SET @soma = @valor1 + @valor2
SELECT @soma

b)
SET @subtracao = @valor3 - @valor2
SELECT @subtracao

c)
SET @multiplicacao = @valor1 * @valor4
SELECT @multiplicacao

d)
DECLARE @valor1 FLOAT = 10, @valor2 FLOAT = 5, @valor3 FLOAT = 34, @valor4 FLOAT = 7
DECLARE @soma FLOAT, @subtracao FLOAT, @multiplicacao FLOAT, @divisao FLOAT

SET @divisao = @valor3 / @valor4
SELECT @divisao

e)
SET @divisao = @valor3 / @valor4
SELECT ROUND(@divisao, 2)
--------------------------------------------------------------------------------------------------------------
2.
DECLARE @produto VARCHAR(20), @quantidade INT, @preco FLOAT, @faturamento FLOAT

SET @produto = 'Celular'
SET @quantidade = 12
SET @preco = 9.99
SET @faturamento = @quantidade * @preco

SELECT
	@produto AS 'Produto',
	@quantidade AS 'Quantidade',
	@preco AS 'Preço Unitário',
	@faturamento AS 'Faturamento'
--------------------------------------------------------------------------------------------------------------
3.
DECLARE @nome VARCHAR(20), @dataNascimento DATETIME, @numPets INT

SET @nome = 'André'
SET @dataNascimento = '10/02/1998'
SET @numPets = 2

SELECT 'Meu nome é ' + @nome + ', nasci em ' + FORMAT(@dataNascimento, 'dd/MM/yyyy') + ' e tenho ' + CAST(@numPets AS VARCHAR(20)) + ' pets'
--------------------------------------------------------------------------------------------------------------
4.
DECLARE @listaLojas VARCHAR(30)
SET @listaLojas = ''

SELECT
	@listaLojas = @listaLojas + StoreName + ', '
FROM
	DimStore
WHERE FORMAT(CloseDate, 'yyyy') = 2008
PRINT 'As lojas fechadas no ano de 2008 foram: ' + @listaLojas
--------------------------------------------------------------------------------------------------------------
5.
DECLARE @idSubcategoria INT, @nomeSubcategoria VARCHAR(20)
SET @nomeSubcategoria = 'Lamps'
SET @idSubcategoria = (SELECT ProductSubcategoryKey FROM DimProductSubcategory WHERE ProductSubcategoryName = @nomeSubcategoria)

SELECT
	*
FROM
	DimProduct
WHERE ProductSubcategoryKey = @idSubcategoria
*/