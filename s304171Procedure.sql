USE [AdventureWorksDW2019]
GO
/****** Object:  StoredProcedure [dbo].[s304171proc]    Script Date: 13.11.2022 20:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[s304171proc]
@YearsAgo INT
AS
SET @YearsAgo = @YearsAgo
SELECT *
FROM [AdventureWorksDW2019].[dbo].[DimCurrency]
INNER JOIN [AdventureWorksDW2019].[dbo].[FactCurrencyRate]
ON [AdventureWorksDW2019].[dbo].[DimCurrency].[CurrencyKey] = [AdventureWorksDW2019].[dbo].[FactCurrencyRate].[CurrencyKey]
WHERE DATEDIFF(YEAR, [AdventureWorksDW2019].[dbo].[FactCurrencyRate].[Date],CAST(GETDATE() as datetime)) = @YearsAgo AND ([AdventureWorksDW2019].[dbo].[DimCurrency].[CurrencyAlternateKey] = 'GBP' OR [AdventureWorksDW2019].[dbo].[DimCurrency].[CurrencyAlternateKey] = 'EUR')
