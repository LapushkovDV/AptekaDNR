/*
IF OBJECT_ID('tempdb ..#xx$locks')IS NOT NULL drop table #xx$locks create table #xx$locks (TableNRec binary(8))
delete from [dbo].[T$ATC_exch_log]

delete from [SQL-XXID].[new].[dbo].CHECK_ITEMS
delete from [SQL-XXID].[new].[dbo].CHECKS
delete from [SQL-XXID].[new].[dbo].JOURNAL
delete from [SQL-XXID].[new].[dbo].[POS_ARTICLES]
delete from [SQL-XXID].[new].[dbo].ARTICLES
delete from [SQL-XXID].[new].[dbo].PRODUCTS
delete from [SQL-XXID].[new].[dbo].MANUFACTURERS
delete from [SQL-XXID].[new].[dbo].ARTICLES_TEMP
delete from [SQL-XXID].[new].[dbo].PRICES


delete from [SQL-XXID\TEST_VS01].[new].[dbo].CHECK_ITEMS
delete from [SQL-XXID\TEST_VS01].[new].[dbo].CHECKS
delete from [SQL-XXID\TEST_VS01].[new].[dbo].JOURNAL
delete from [SQL-XXID\TEST_VS01].[new].[dbo].[POS_ARTICLES]
delete from [SQL-XXID\TEST_VS01].[new].[dbo].ARTICLES
delete from [SQL-XXID\TEST_VS01].[new].[dbo].PRODUCTS
delete from [SQL-XXID\TEST_VS01].[new].[dbo].MANUFACTURERS
delete from [SQL-XXID\TEST_VS01].[new].[dbo].ARTICLES_TEMP
delete from [SQL-XXID\TEST_VS01].[new].[dbo].PRICES


SELECT 'MANUFACTURERS', * FROM [SQL-XXID].[new].[dbo].MANUFACTURERS
SELECT 'ARTICLES', * FROM [SQL-XXID].[new].[dbo].ARTICLES
SELECT 'PRODUCTS', * FROM [SQL-XXID].[new].[dbo].PRODUCTS
SELECT 'JOURNAL', * FROM [SQL-XXID].[new].[dbo].JOURNAL
SELECT 'ARTICLES_TEMP', * FROM [SQL-XXID].[new].[dbo].ARTICLES_TEMP
SELECT 'PRICES', * FROM [SQL-XXID].[new].[dbo].PRICES
SELECT 'CHECKS', * FROM [SQL-XXID].[new].[dbo].CHECKS
SELECT 'CHECK_ITEMS', * FROM [SQL-XXID].[new].[dbo].CHECK_ITEMS

SELECT 'MANUFACTURERS',  * FROM [SQL-XXID\TEST_VS01].[new].[dbo].MANUFACTURERS
SELECT 'ARTICLES', * FROM [SQL-XXID\TEST_VS01].[new].[dbo].ARTICLES
SELECT 'PRODUCTS', * FROM [SQL-XXID\TEST_VS01].[new].[dbo].PRODUCTS
SELECT 'JOURNAL', * FROM [SQL-XXID\TEST_VS01].[new].[dbo].JOURNAL
SELECT 'ARTICLES_TEMP', * FROM [SQL-XXID\TEST_VS01].[new].[dbo].ARTICLES_TEMP
SELECT 'PRICES', * FROM [SQL-XXID\TEST_VS01].[new].[dbo].PRICES
SELECT 'CHECKS', * FROM [SQL-XXID\TEST_VS01].[new].[dbo].CHECKS
SELECT 'CHECK_ITEMS', * FROM [SQL-XXID\TEST_VS01].[new].[dbo].CHECK_ITEMS


SELECT * FROM [dbo].[T$ATC_exch_log]

--Процедура выгрузка прайс-листов
DECLARE	@return_value int
EXEC @return_value = [dbo].[S$SENDPRICE_TO_TORGZAL]	@CKLPRICE = '4612207583001225432'
SELECT	'Return Value' = @return_value

--Процедура обновления каталога МЦ (Products)
DECLARE	@return_value int
EXEC	@return_value = [dbo].[S$SEND_FULL_KATMC_TO_TORGZAL]
SELECT	'Return Value' = @return_value

--=================================================================
--Получение данных по продажам
DECLARE	@return_value int
DECLARE @CURRENT_DATE BINARY(8) = [dbo].[ToAtlDate](GETDATE())
--SELECT @CURRENT_DATE
EXEC	@return_value = [dbo].[S$GET_RESULTPROD_FROM_TORGZAL]
		@DATEPROD = @CURRENT_DATE,
		@TERMINAL_ID = 0
SELECT	'Return Value' = @return_value

--за прошлый день
/*
DECLARE @DATE BINARY(8) = [dbo].[ToAtlDate]( DATEADD(DAY,-1,GETDATE()) )
EXEC [dbo].[S$GET_RESULTPROD_FROM_TORGZAL]
@DATEPROD     = @DATE,
@TERMINAL_ID = 0
*/
--=================================================================

-- открытие смены
EXEC [SQL-XXID\TEST_VS01].[new].[dbo].[ap_session_open] @tid = 9
-- активный прайс дата
SELECT [SP_DATE] FROM [SQL-XXID\TEST_VS01].[new].[dbo].[SYSPARAMS] WHERE [SP_NAME]='PRICES_ACTIVE_LOAD'
-- наличие в прайсе по nRec МЦ
SELECT * fROM [SQL-XXID\TEST_VS01].[new].[dbo].[PRICES_ACTIVE] where p_nRec = 4612059818266268314
*/

SELECT 'MANUFACTURERS', * FROM [SQL-XXID].[new].[dbo].MANUFACTURERS
SELECT 'MANUFACTURERS',  * FROM [SQL-XXID\TEST_VS01].[new].[dbo].MANUFACTURERS

SELECT 'ARTICLES', * FROM [SQL-XXID].[new].[dbo].ARTICLES
SELECT 'ARTICLES', * FROM [SQL-XXID\TEST_VS01].[new].[dbo].ARTICLES

SELECT 'PRODUCTS', * FROM [SQL-XXID].[new].[dbo].PRODUCTS
SELECT 'PRODUCTS', * FROM [SQL-XXID\TEST_VS01].[new].[dbo].PRODUCTS

SELECT 'JOURNAL', * FROM [SQL-XXID].[new].[dbo].JOURNAL
SELECT 'JOURNAL', * FROM [SQL-XXID\TEST_VS01].[new].[dbo].JOURNAL

SELECT 'ARTICLES_TEMP', * FROM [SQL-XXID].[new].[dbo].ARTICLES_TEMP
SELECT 'ARTICLES_TEMP', * FROM [SQL-XXID\TEST_VS01].[new].[dbo].ARTICLES_TEMP

SELECT 'PRICES', * FROM [SQL-XXID].[new].[dbo].PRICES
SELECT 'PRICES', * FROM [SQL-XXID\TEST_VS01].[new].[dbo].PRICES