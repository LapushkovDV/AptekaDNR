USE [new]
GO
/****** Object:  StoredProcedure [dbo].[CASH_PROT_TO_JSON]    Script Date: 27.01.2024 14:05:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER PROCEDURE [dbo].[CASH_PROT_TO_JSON]( 
 @DATEPROD datetime,
 @OUT_PATH NVARCHAR(MAX)
 ) AS    

BEGIN

SET DATEFORMAT dmy

DECLARE @TZ_NAME VARCHAR(255) = 'TEST' -- НУЖНО ЗАДАТЬ СВОЕ ЗНАЧЕНИЕ ДЛЯ КАЖДОЙ БД
DECLARE @Result int ;
DECLARE @Cmd nvarchar(4000) ;  --вызов пакетной выгрузки
-- Таблица чеков
-- очистка временной таблицы
IF OBJECT_ID('tempdb..##tmpCASH_PROT') IS NOT NULL drop table ##tmpCASH_PROT
IF OBJECT_ID('tempdb..#TERMS') IS NOT NULL drop table #TERMS



CREATE Table ##tmpCASH_PROT(
	OPER     INT,
	ARTICUL  VARCHAR(30),
	[COUNT]  FLOAT,
	PRICE    FLOAT,
	H_NO     INT,
	H_DATE   DATETIME,
	H_RET    INT,
	T_ID     INT,
	Z_ID     INT,
	U_ID     INT,
	C_ID     INT,
	H_Items  INT,
	H_TYPE   INT,
	H_ID     INT,
	TZ_NAME  VARCHAR(255)
)

DECLARE @DT DATETIME = @DATEPROD
DECLARE @T_ID INTEGER = 0

-- Отбросить время если оно есть
	SET @DT = CONVERT(NVARCHAR,@DT,112)
    DECLARE @DT_END DATETIME = DATEADD(DAY,1,@DT)


-- LOG START PROCEDURE
	DECLARE @RC int
	EXEC @RC = [dbo].[LOG_SP_START] '[CASH_PROT_ADD]'

-- Реестр терминалов
	CREATE TABLE #TERMS (TERM INT)
	IF (@T_ID = 0)	-- по всем терминалам
		INSERT #TERMS 
		SELECT DISTINCT A.[T_ID]
		FROM [dbo].CHECKS A WITH (NOLOCK)
		WHERE
          A.[H_DATE] BETWEEN @DT AND @DT_END 
	ELSE			-- по одному, заданному параметром, терминалу
		INSERT #TERMS 
		SELECT @T_ID

-- Очистить таблице протоколов в Галактике (Pervasive)
--  DELETE FROM ODBC_PVSGAL.GAL..CASH_PROT 
-- Заполнить таблицу протоколов в Галактике (Pervasive)
--  INSERT ODBC_PVSGAL.GAL..CASH_PROT 
-- Данные о продажах с POS-терминалов (Строки чеков)
	INSERT INTO ##tmpCASH_PROT 
	SELECT 
		[OPER]		= CASE WHEN A.[H_TYPE]>0 THEN A.[H_TYPE] ELSE 99 END,
		[ARTICUL]	= B.[A_ID],
		[COUNT]		= B.[I_QTY]/1000.0,
		[PRICE]		= CAST(	
		(		ROUND(CAST(B.I_PRICE AS MONEY)/100.0,2) * CAST(B.I_QTY AS MONEY)/1000.0
			-	ROUND(CAST(B.I_PRICE AS MONEY)/100.0	* CAST(B.I_QTY AS MONEY)/1000.0 * (CAST(B.I_DISCOUNT AS MONEY)/10000.0),2)
		)/CAST(B.I_QTY/1000.0 AS MONEY)*(A.[R_COURSE]*1.0) AS MONEY),
		[H_NO]      = A.H_NO,
		[H_DATE]    = A.H_DATE,
		[H_RET]     = A.H_RET,
		[T_ID]      = A.T_ID,
		[Z_ID]      = A.Z_ID,
		[U_ID]      = A.U_ID,
		[C_ID]      = A.C_ID,
		[H_Items]   = A.H_Items,
		[H_TYPE]    = A.H_TYPE,
		[H_ID]      = B.[H_ID],
		[TZ_NAME]   = @TZ_NAME
	FROM [dbo].CHECKS A WITH (NOLOCK)
	INNER JOIN [dbo].CHECK_ITEMS	B WITH (NOLOCK) ON A.[H_ID] = B.[H_ID] 
	WHERE
        A.[H_DATE] BETWEEN @DT AND @DT_END 
		AND A.[T_ID] IN (SELECT TERM FROM #TERMS)	-- По заданным терминалам
-- LOG END PROCEDURE
	EXEC [dbo].[LOG_SP_END] @RC

--SELECT * FROM ##tmpCASH_PROT  FOR JSON PATH, ROOT('CASH_PROT')

--SET @Cmd = N'bcp "SELECT [OPER],[ARTICUL],[COUNT],[PRICE],[H_NO],[H_DATE],[H_RET],[T_ID],[Z_ID],[U_ID],[C_ID],[H_Items],[H_TYPE],[H_ID],[TZ_NAME] FROM ##tmpCASH_PROT FOR JSON PATH, ROOT(''CASH_PROT'')" queryout "'+@OUT_PATH+'CASH_PROT_'+@TZ_NAME+'_'+CONVERT(NVARCHAR,@DT,112)+'.json"  -c -S "." -d new -T' 
SET @Cmd = N'bcp "SELECT [OPER],[ARTICUL],[COUNT],[PRICE],[H_NO],[H_DATE],[H_RET],[T_ID],[Z_ID],[U_ID],[C_ID],[H_Items],[H_TYPE],[H_ID],[TZ_NAME] FROM ##tmpCASH_PROT FOR JSON PATH, ROOT(''CASH_PROT'')" queryout "'+@OUT_PATH+'CASH_PROT_'+@TZ_NAME+'_'+CONVERT(NVARCHAR,@DT,112)+'.json"  -T -k -c -S"." -d new -T' 

EXEC @Result = MASTER..XP_CMDSHELL @Cmd	  --выполнение пакетной выгрузки

IF @Result <> 0								-- если завершилось с ошибкой
	raiserror (N'Не удалось создать импортировать таблицу', 16,-1)

IF OBJECT_ID('tempdb..##tmpCASH_PROT') IS NOT NULL drop table ##tmpCASH_PROT

END