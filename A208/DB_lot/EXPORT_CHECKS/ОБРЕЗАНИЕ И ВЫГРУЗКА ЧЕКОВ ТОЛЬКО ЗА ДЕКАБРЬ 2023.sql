/*
SET DATEFORMAT DMY
-- ОБРЕЗАНИЕ ЧЕКОВ (ОСТАВЛЯЕМ ТОЛЬКО ДЕКАБРЬ)
DECLARE @DBEG DATETIME = '01-12-2023'
DECLARE @DEND DATETIME = '31-12-2023'

IF OBJECT_ID('tempdb..#TMP_C') IS NOT NULL drop table #TMP_C
SELECT H_ID 
INTO #TMP_C
FROM CHECKS 
WHERE [H_DATE] BETWEEN @DBEG AND @DEND

DELETE FROM CHECKS
WHERE H_ID NOT IN (SELECT H_ID FROM #TMP_C)

--SELECT * FROM CHECK_ITEMS WHERE CHECK_ITEMS.H_ID NOT IN (SELECT H_ID FROM CHECKS)
------DELETE FROM CHECK_ITEMS WHERE CHECK_ITEMS.H_ID NOT IN (SELECT H_ID FROM CHECKS)
*/

DECLARE @Result int ;
DECLARE @Cmd nvarchar(255) ;  --вызов пакетной выгрузки
-- Таблица чеков
SET @Cmd = N'BCP NEW.dbo.CHECKS out "D:\CHECKS_12-2023.xml" -T -k -c -CUTF-8'
EXEC @Result = MASTER..XP_CMDSHELL @Cmd	  --выполнение пакетной выгрузки
IF @Result <> 0								-- если завершилось с ошибкой
	raiserror (N'Не удалось создать импортировать таблицу CHECKS', 16,-1)
GO

-- Таблица содержимого чеков
DECLARE @Result int ;
DECLARE @Cmd nvarchar(255) ;  --вызов пакетной выгрузки
SET @Cmd = N'BCP NEW.dbo.CHECK_ITEMS out "D:\CHECK_ITEMS_12-2023.xml" -T -k -c -CUTF-8'
EXEC @Result = MASTER..XP_CMDSHELL @Cmd	  --выполнение пакетной выгрузки
IF @Result <> 0								-- если завершилось с ошибкой
	raiserror (N'Не удалось создать импортировать таблицу CHECK_ITEMS', 16,-1)

/*	
SELECT CHECKS.*,
 CHECK_ITEMS.*
FROM CHECK_ITEMS
LEFT OUTER JOIN CHECKS  ON  CHECKS.H_ID = CHECK_ITEMS.H_ID
--WHERE CHECKS.H_ID = 6845996

SELECT PRODUCTS.P_NAME, *
FROM CHECK_ITEMS
LEFT JOIN ARTICLES ON ARTICLES.A_ID = CHECK_ITEMS.A_ID
LEFT JOIN PRODUCTS ON PRODUCTS.P_NREC = ARTICLES.P_NREC
WHERE CHECK_ITEMS.H_ID = 629
*/