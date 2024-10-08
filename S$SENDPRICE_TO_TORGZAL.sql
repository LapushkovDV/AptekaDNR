
/****** Object:  StoredProcedure [dbo].[S$SENDPRICE_TO_TORGZAL]    Script Date: 11.07.2024 8:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create or  ALTER PROCEDURE [dbo].[S$SENDPRICE_TO_TORGZAL]( 
  @CKLPRICE  VARCHAR(30) = '4612207583001225432'
 ) AS    

BEGIN 
--Выгрузка прайс-листов из БД Галактика в БД подразделений розничной торговли
--Определение серверов и баз данных производится по каталогу KatKassa.AddInfo
--предполагается следующий формат заполнения этого поля: ИмяСервера<ИмяБД> или ИмяСервера\Инстанс<ИмяБД>
--Прайс выгружается из Галактики во временную таблицу, а затем передается в настроенные БД из KatKassa


SET DATEFORMAT dmy
SET XACT_ABORT ON;
SET NOCOUNT ON;

DECLARE @sqlCommand NVARCHAR(MAX)
--Шаблон скрипта на модификацию прайс-листа
--Далее в нем будем заменять имя Сервера и имя БД
SET @sqlCommand = N'

DECLARE @RC INT
IF EXISTS(SELECT * FROM #tmpPrices)
	EXEC [###SRV###].[###DB###].[dbo].[UP_CLEAR_PRICE_BEFORE_INSERT]

DECLARE @NREC				[bigint]
DECLARE @ATL_LASTDATE		[datetime]
DECLARE @ATL_LASTTIME		[datetime]
DECLARE @ATL_LASTUSER		[bigint]
DECLARE @ATL_ORIGINOFFICE	[smallint]
DECLARE @CKLPRICE			[bigint]
DECLARE @CTHING				[bigint]
DECLARE @TIP				[smallint]
DECLARE @NAME				[varchar](81)
DECLARE @BARKOD				[varchar](26)
DECLARE @BAROTP				[varchar](26)
DECLARE @DISKRET			[smallint]
DECLARE @PRICE				[float]
DECLARE @CVAL				[bigint]
DECLARE @SUMVAL				[float]
DECLARE @DFORM				[datetime]
DECLARE @PRAVT				[smallint]
DECLARE @COTPED				[bigint]
DECLARE @GARANT				[float]
DECLARE @DOPHAR				[varchar](81)
DECLARE @CGROUPMC			[bigint]
DECLARE @KOD				[varchar](21)
DECLARE @CPARTY				[bigint]
DECLARE @NPARTY				[varchar](81)
DECLARE @SRPRICE			[float]
DECLARE @SRVPRICE			[float]
DECLARE @CGRUSL				[bigint]
	
SET @RETURNVALUE = 0

DECLARE tmpPrices_C CURSOR 
  LOCAL STATIC READ_ONLY FORWARD_ONLY
FOR 
SELECT NREC,ATL_LASTDATE,ATL_LASTTIME,ATL_LASTUSER,ATL_ORIGINOFFICE,CKLPRICE,CTHING,TIP,NAME,BARKOD,BAROTP,DISKRET,PRICE,CVAL,SUMVAL,DFORM,PRAVT,
		COTPED,GARANT,DOPHAR,CGROUPMC,KOD,CPARTY,NPARTY,SRPRICE,SRVPRICE,CGRUSL				
FROM #tmpPrices
OPEN tmpPrices_C
FETCH NEXT FROM tmpPrices_C INTO @NREC,@ATL_LASTDATE,@ATL_LASTTIME,@ATL_LASTUSER,@ATL_ORIGINOFFICE,@CKLPRICE,@CTHING,@TIP,@NAME,@BARKOD,@BAROTP,
			@DISKRET,@PRICE,@CVAL,@SUMVAL,@DFORM,@PRAVT,@COTPED,@GARANT,@DOPHAR,@CGROUPMC,@KOD,@CPARTY,@NPARTY,@SRPRICE,@SRVPRICE,@CGRUSL
WHILE @@FETCH_STATUS = 0
BEGIN 
	BEGIN TRY
		BEGIN TRANSACTION 
		EXEC [###SRV###].[###DB###].[dbo].[UP_INSERT_PRICE]
			@NREC,@ATL_LASTDATE,@ATL_LASTTIME,@ATL_LASTUSER,@ATL_ORIGINOFFICE,@CKLPRICE,@CTHING,@TIP,@NAME,@BARKOD,@BAROTP,
			@DISKRET,@PRICE,@CVAL,@SUMVAL,@DFORM,@PRAVT,@COTPED,@GARANT,@DOPHAR,@CGROUPMC,@KOD,@CPARTY,@NPARTY,@SRPRICE,@SRVPRICE,@CGRUSL
/*
		EXEC [###SRV###].[###DB###].[dbo].[UP_INSERT_PRICE]
			''тест'',@ATL_LASTDATE,@ATL_LASTTIME,@ATL_LASTUSER,@ATL_ORIGINOFFICE,@CKLPRICE,@CTHING,@TIP,@NAME,@BARKOD,@BAROTP,
			@DISKRET,@PRICE,@CVAL,@SUMVAL,@DFORM,@PRAVT,@COTPED,@GARANT,@DOPHAR,@CGROUPMC,@KOD,@CPARTY,@NPARTY,@SRPRICE,@SRVPRICE,@CGRUSL
*/
		SET @RC = 0
		IF @@TRANCOUNT > 0 COMMIT TRANSACTION 
	END TRY
	BEGIN CATCH
	    SET @RC = 311
		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	END CATCH

	IF @RC > 0 SET @RETURNVALUE = @RC

	FETCH NEXT FROM tmpPrices_C INTO @NREC,@ATL_LASTDATE,@ATL_LASTTIME,@ATL_LASTUSER,@ATL_ORIGINOFFICE,@CKLPRICE,@CTHING,@TIP,@NAME,@BARKOD,@BAROTP,
		@DISKRET,@PRICE,@CVAL,@SUMVAL,@DFORM,@PRAVT,@COTPED,@GARANT,@DOPHAR,@CGROUPMC,@KOD,@CPARTY,@NPARTY,@SRPRICE,@SRVPRICE,@CGRUSL
END
CLOSE tmpPrices_C
DEALLOCATE tmpPrices_C

' -- end @sqlCommand


-- Сберем прайс лист во временную таблицу чтобы не мучить каждый раз БД Галактики
-- очистка временной таблицы
IF OBJECT_ID('tempdb..#tmpPrices') IS NOT NULL drop table #tmpPrices
SELECT 
	[dbo].[toInt64]([F$NREC]) AS [NREC]
--	,[dbo].[date2str]('%dd/%MM/%yyyy',[F$ATL_LASTDATE]) AS [ATL_LASTDATE]
    ,[dbo].[date2str]('%yyyy-%MM-%dd',[F$ATL_LASTDATE]) AS [ATL_LASTDATE]
--	,[dbo].[time2str]('%hh:%mm:%ss',[F$ATL_LASTTIME]) AS [ATL_LASTTIME]
	,NULL AS [ATL_LASTTIME]
	,[dbo].[toInt64]([F$ATL_LASTUSER]) AS [ATL_LASTUSER]
	,[F$ATL_ORIGINOFFICE] AS [ATL_ORIGINOFFICE]
--	,[dbo].[toInt64]([F$LASTUSER]) AS [LASTUSER]	-- такого поля уже нет в Галактике
--	,[F$LASTTIME]									-- такого поля уже нет в Галактике
--	,[LASTDATE]										-- такого поля уже нет в Галактике
--	,[F$FILIALNO]									-- такого поля уже нет в Галактике
	,[dbo].[toInt64]([F$CKLPRICE]) AS [CKLPRICE]
	,[dbo].[toInt64]([F$CTHING]) AS [CTHING] 
	,[F$TIP] AS [TIP]
	,[F$NAME] AS [NAME]
	,[F$BARKOD] AS [BARKOD]
	,[F$BAROTP] AS [BAROTP]
	,[F$DISKRET] AS [DISKRET]
	,[F$PRICE] AS [PRICE]
	,[dbo].[toInt64]([F$CVAL]) AS [CVAL]
	,[F$SUMVAL] AS [SUMVAL]
	,[dbo].[date2str]('%yyyy-%MM-%dd',[F$DFORM]) AS DFORM
	,[F$PRAVT] AS [PRAVT]
	,[dbo].[toInt64]([F$COTPED]) AS [COTPED]
	,[F$GARANT] AS [GARANT]
	,[F$DOPHAR] AS [DOPHAR]
	,[dbo].[toInt64]([F$CGROUPMC]) AS [CGROUPMC]
	,[F$KOD] AS [KOD]
--  ,[F$PRSORT] -- такого поля уже нет в Галактике
	,[dbo].[toInt64]([F$CPARTY]) AS [CPARTY]
-- Наименование отпускной единицы измерения
	,(SELECT UPPER([F$NAME]) FROM T$KATOTPED WHERE F$NREC = T$PRICES.F$COTPED) AS [NPARTY]
	,[F$SRPRICE] AS [SRPRICE]
-- Коефициент делимости отпускной единицы измерения
	,(SELECT [F$KOEF] FROM T$KATOTPED WHERE F$NREC = T$PRICES.F$COTPED) AS [SRVPRICE]
	,[dbo].[toInt64]([F$CGRUSL]) AS [CGRUSL]

INTO #tmpPrices
FROM T$PRICES WITH (NOLOCK)
WHERE [dbo].[toInt64](F$CKLPRICE) = @CKLPRICE AND F$PRICE<>0;

--SELECT * FROM #tmpPrices

--курсор по настройке обмена KatKassa
DECLARE @SRV_NAME  VARCHAR(255)
DECLARE @DB_NAME  VARCHAR(255)
DECLARE @ADDINFO  VARCHAR(100)
DECLARE @PODRNAME VARCHAR(255)
DECLARE @COMMAND_RUN NVARCHAR(MAX)
DECLARE @RC INT = 0
DECLARE @Beg BINARY(8)
DECLARE @CUR_PROCNAME VARCHAR(255)
DECLARE @returnvalue INT

DECLARE MY_CURSOR CURSOR 
  LOCAL STATIC READ_ONLY FORWARD_ONLY
FOR 
SELECT DISTINCT T$KATKASSA.F$ADDINFO, T$KATPODR.F$NAME
FROM T$KATKASSA
LEFT JOIN T$KATPODR ON T$KATKASSA.F$CPODR = T$KATPODR.F$NREC
OPEN MY_CURSOR
FETCH NEXT FROM MY_CURSOR INTO @ADDINFO, @PODRNAME
WHILE @@FETCH_STATUS = 0
BEGIN 
	SET @DB_NAME = NULL
    SET @SRV_NAME = NULL

    IF @ADDINFO IS NOT NULL AND @ADDINFO <> ''
		BEGIN TRY
			SET @DB_NAME = REPLACE(REPLACE(SUBSTRING(@ADDINFO, CHARINDEX('<',@ADDINFO),LEN(@ADDINFO)),'<',''),'>','')
			SET @SRV_NAME = SUBSTRING(@ADDINFO, 1 , CHARINDEX('<',@ADDINFO)-1)
		END TRY  
		BEGIN CATCH  
			SET @DB_NAME = NULL
			SET @SRV_NAME = NULL
		END CATCH;
-- Установка Сервера и БД в скрипте
	IF @DB_NAME IS NOT NULL AND @SRV_NAME IS NOT NULL
		BEGIN 
			SET @COMMAND_RUN = @sqlCommand
			IF LOWER (@SRV_NAME) <> '(local)'
				SET @COMMAND_RUN = REPLACE(@COMMAND_RUN,'###SRV###', @SRV_NAME);
					ELSE SET @COMMAND_RUN = REPLACE(@COMMAND_RUN,'[###SRV###].', '');

			SET @COMMAND_RUN = REPLACE(@COMMAND_RUN,'###DB###', @DB_NAME);
--Начало операции для лога
			SET @Beg = [dbo].[ToAtlDateTime](GETDATE())

			BEGIN TRANSACTION;  
			BEGIN TRY  
				EXECUTE @RC = sp_executesql @COMMAND_RUN, N'@returnvalue INT OUTPUT', @returnvalue OUTPUT
			END TRY  
			BEGIN CATCH  
				SET @RC = 311
				IF @@TRANCOUNT > 0  ROLLBACK TRANSACTION;  
			END CATCH;  
			
			IF @@TRANCOUNT > 0 COMMIT TRANSACTION; 
--запись в лог
			SELECT @RC, @returnvalue
			SET @CUR_PROCNAME = N'Выгрузка прайс-листа в '+ @PODRNAME + N' (SQL SENDPRICE_TO_TORGZAL)'
			EXEC [dbo].[S$ADD_ATC_exch_log] @P_LOG_TYPE = 2, @P_PROCNAME = @CUR_PROCNAME, @P_DT_START = @Beg, @P_STATUS = @RC
		END
	FETCH NEXT FROM MY_CURSOR INTO @ADDINFO, @PODRNAME
END
CLOSE MY_CURSOR
DEALLOCATE MY_CURSOR

IF OBJECT_ID('tempdb..#tmpPrices') IS NOT NULL drop table #tmpPrices

END
