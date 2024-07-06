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
select getDate()
*/

SELECT 'MANUFACTURERS', * FROM [SQLBOOCK].[new_gal].[dbo].MANUFACTURERS
SELECT 'ARTICLES', * FROM [SQLBOOCK].[new_gal].[dbo].ARTICLES
SELECT 'PRODUCTS', * FROM [SQLBOOCK].[new_gal].[dbo].PRODUCTS
SELECT 'JOURNAL', * FROM [SQLBOOCK].[new_gal].[dbo].JOURNAL
SELECT 'ARTICLES_TEMP', * FROM [SQLBOOCK].[new_gal].[dbo].ARTICLES_TEMP
SELECT 'PRICES', * FROM [SQLBOOCK].[new_gal].[dbo].PRICES
SELECT 'CHECKS', * FROM [SQLBOOCK].[new_gal].[dbo].CHECKS
SELECT 'CHECK_ITEMS', * FROM [SQLBOOCK].[new_gal].[dbo].CHECK_ITEMS


