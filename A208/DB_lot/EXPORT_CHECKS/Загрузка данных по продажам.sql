/*
DECLARE @Result int ;
DECLARE @Cmd nvarchar(255) ;  --вызов пакетной выгрузки
-- Таблица чеков
DELETE FROM CHECKS
SET @Cmd = N'BCP NEW.dbo.CHECKS in "d:\out\CHECKS.xml" -T -E -k -c -CUTF-8'
EXEC @Result = MASTER..XP_CMDSHELL @Cmd	  --выполнение пакетной выгрузки
IF @Result <> 0								-- если завершилось с ошибкой
	raiserror (N'Не удалось создать импортировать таблицу CHECKS', 16,-1)
--7 843 679 rows copied.
*/
/*
-- Таблица содержимого чеков
DECLARE @Result int ;
DECLARE @Cmd nvarchar(255) ;  --вызов пакетной выгрузки
DELETE FROM CHECK_ITEMS
SET @Cmd = N'BCP NEW.dbo.CHECK_ITEMS in "d:\out\CHECK_ITEMS.xml" -T -E -k -c -CUTF-8'
EXEC @Result = MASTER..XP_CMDSHELL @Cmd	  --выполнение пакетной выгрузки
IF @Result <> 0								-- если завершилось с ошибкой
	raiserror (N'Не удалось создать импортировать таблицу CHECK_ITEMS', 16,-1)
--14 017 149 rows copied.
*/

use [new]
/*
--CHECK_ITEMS без CHECKS
SELECT CHECK_ITEMS.*,P.P_NAME, P.P_NREC
FROM CHECK_ITEMS 
LEFT JOIN ARTICLES A ON A.A_ID = CHECK_ITEMS.A_ID
LEFT JOIN PRODUCTS P ON P.P_NREC = A.P_NREC
WHERE CHECK_ITEMS.H_ID NOT IN (SELECT H_ID FROM CHECKS)
ORDER BY P_NAME DESC
*/
--Select * from CHECKS WHERE H_ID = 7533360
--Select * from CHECK_ITEMS
DECLARE @DT DATETIME = '17-01-2024'
DECLARE @T_ID INTEGER = 0
SET @DT = CONVERT(NVARCHAR,@DT,112)
DECLARE @DT_END DATETIME = DATEADD(DAY,1,@DT)

SELECT @DT, @DT_END

IF OBJECT_ID('tempdb..#tmpCASH_PROT') IS NOT NULL drop table #tmpCASH_PROT
	SELECT 
		[OPER]		= CASE WHEN A.[H_TYPE]>0 THEN A.[H_TYPE] ELSE 99 END,
		[ARTICUL]	= B.[A_ID],
		[COUNT]		= B.[I_QTY]/1000.0,
		[PRICE]		= CAST(	
		(		ROUND(CAST(B.I_PRICE AS MONEY)/100.0,2) * CAST(B.I_QTY AS MONEY)/1000.0
			-	ROUND(CAST(B.I_PRICE AS MONEY)/100.0	* CAST(B.I_QTY AS MONEY)/1000.0 * (CAST(B.I_DISCOUNT AS MONEY)/10000.0),2)
		)/CAST(B.I_QTY/1000.0 AS MONEY)*(A.[R_COURSE]*1.0) AS MONEY),
		A.H_NO,
		A.H_DATE,
		A.H_RET,
		A.T_ID,
		A.Z_ID,
		A.U_ID,
		A.C_ID,
		A.H_Items,
		A.H_TYPE,
		A.H_ID
    INTO #tmpCASH_PROT
	FROM [dbo].CHECKS A WITH (NOLOCK)
	INNER JOIN [dbo].CHECK_ITEMS	B WITH (NOLOCK) ON A.[H_ID] = B.[H_ID] 
	WHERE
        A.[H_DATE] BETWEEN @DT AND @DT_END 
	AND H_TYPE < 99

--SELECT * FROM #tmpCASH_PROT

SELECT P.P_NAME, P.P_NREC, C.*  FROM #tmpCASH_PROT C
LEFT JOIN ARTICLES A ON A.A_ID = C.ARTICUL
LEFT JOIN PRODUCTS P ON P.P_NREC = A.P_NREC
--ORDER BY T_ID, H_NO, H_DATE
--ORDER BY P_NAME DESC
ORDER BY t_id, C.H_NO, C.H_DATE