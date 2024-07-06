/*
IF OBJECT_ID('tempdb ..#xx$locks')IS NOT NULL drop table #xx$locks create table #xx$locks (TableNRec binary(8))
delete from [dbo].[T$ATC_exch_log]

delete from [SQLBOOCK].[new_gal].[dbo].CHECK_ITEMS
delete from [SQLBOOCK].[new_gal].[dbo].CHECKS
delete from [SQLBOOCK].[new_gal].[dbo].JOURNAL
delete from [SQLBOOCK].[new_gal].[dbo].[POS_ARTICLES]
delete from [SQLBOOCK].[new_gal].[dbo].ARTICLES
delete from [SQLBOOCK].[new_gal].[dbo].PRODUCTS
delete from [SQLBOOCK].[new_gal].[dbo].MANUFACTURERS
delete from [SQLBOOCK].[new_gal].[dbo].ARTICLES_TEMP
delete from [SQLBOOCK].[new_gal].[dbo].PRICES
*/

SELECT * FROM [SQLBOOCK].[new_gal].[dbo].MANUFACTURERS
SELECT * FROM [SQLBOOCK].[new_gal].[dbo].ARTICLES
SELECT * FROM [SQLBOOCK].[new_gal].[dbo].PRODUCTS
SELECT * FROM [SQLBOOCK].[new_gal].[dbo].JOURNAL
SELECT * FROM [SQLBOOCK].[new_gal].[dbo].ARTICLES_TEMP
SELECT * FROM [SQLBOOCK].[new_gal].[dbo].PRICES
SELECT * FROM [SQLBOOCK].[new_gal].[dbo].CHECKS
SELECT * FROM [SQLBOOCK].[new_gal].[dbo].CHECK_ITEMS
