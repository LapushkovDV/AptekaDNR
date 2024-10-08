USE [A208]
GO
/****** Object:  StoredProcedure [dbo].[S$SEND_FULL_KATMC_TO_TORGZAL]    Script Date: 19.03.2024 10:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[S$SEND_FULL_KATMC_TO_TORGZAL]
AS
BEGIN	

/*
изменены поля
    стало                            было
T$KatMC.F$PRICEPU             --T$KatMC.F$VOLUME  (перенос в другое поле)
T$KatMC.F$WPLANLEVEL          --T$KatMC.F$SIZEX   (перенос в другое поле)
T$KatMC.F$PRIOR               --T$KatMC.F$SIZEY   (перенос в другое поле)
T$KatMC.F$TPPLAN              --T$KatMC.F$SIZEZ   (перенос в другое поле)
T$KatMC.F$GOST                --T$KatMC.F$BARKOD2 (перенос в другое поле)
T$KatMC.F$PRMAT               --T$KatMC.F$MASSA   (перенос в другое поле)
T$KatMC.F$POLZAK              --T$KatMC.F$MAXRN   (перенос в другое поле)
*/

SET DATEFORMAT dmy
SET XACT_ABORT ON;
SET NOCOUNT ON;


-- очистка временных таблиц
IF OBJECT_ID('tempdb..#T_ATC') IS NOT NULL drop table #T_ATC
IF OBJECT_ID('tempdb..#T_BUDGET') IS NOT NULL drop table #T_BUDGET
IF OBJECT_ID('tempdb..#T_OBOZN') IS NOT NULL drop table #T_OBOZN
IF OBJECT_ID('tempdb..#T_VOL_16') IS NOT NULL drop table #T_VOL_16
IF OBJECT_ID('tempdb..#T_ADR_AP') IS NOT NULL drop table #T_ADR_AP
IF OBJECT_ID('tempdb..#T_VOL_AP') IS NOT NULL drop table #T_VOL_AP

SELECT
  K.F$NREC AS NREC, ES.F$VALUE AS [VALUE]
INTO #T_ATC
FROM T$KATMC AS K WITH (NOLOCK)
INNER JOIN T$EXCLASSVAL EV on K.F$NREC=EV.F$CREC
INNER JOIN T$EXCLASSSEG ES on EV.F$CCLASSSEG=ES.F$NREC
WHERE ((EV.F$CLASSCODE=9) OR (EV.F$CLASSCODE is null)) 
  AND (ES.F$VALUE NOT like 'T%') 
  AND (ES.F$VALUE NOT like 'Т%')
--SELECT * FROM #T_ATC

SELECT
  F$CREC AS NREC
 ,F$VSTRING AS VSTRING
INTO #T_BUDGET 
FROM T$ATTRVAL WITH (NOLOCK)
WHERE (F$VSTRING IS NOT NULL) AND (F$VSTRING<>'') AND (F$WTABLE=1411) AND ([dbo].[toInt64](F$CATTRNAM)=4612035785572282659)
--SELECT * FROM #T_BUDGET

SELECT
  F$CREC AS NREC
 ,F$VSTRING	AS VSTRING
INTO #T_OBOZN
FROM T$ATTRVAL WITH (NOLOCK)
WHERE (F$VSTRING IS NOT NULL) AND (F$WTABLE=1411) AND ([dbo].[toInt64](F$CATTRNAM)=4612025349548250528)
--SELECT * FROM #T_OBOZN

SELECT
  F$CREC AS NREC
 ,F$VSTRING AS VSTRING
INTO #T_VOL_16
FROM T$ATTRVAL WITH (NOLOCK)
WHERE (F$VSTRING IS NOT NULL) AND (F$WTABLE=1411) AND ([dbo].[toInt64](F$CATTRNAM)=4612206905805660221)
--SELECT * FROM #T_VOL_16

SELECT
  F$CREC AS NREC
 ,F$VSTRING AS VSTRING
INTO #T_ADR_AP
FROM T$ATTRVAL WITH (NOLOCK)
WHERE (F$VSTRING IS NOT NULL) AND (F$WTABLE=1411) AND ([dbo].[toInt64](F$CATTRNAM)=4612039079690425756)
--SELECT * FROM #T_ADR_AP

SELECT
  F$CREC AS NREC
 ,F$VSTRING AS VSTRING
INTO #T_VOL_AP
FROM T$ATTRVAL WITH (NOLOCK)
WHERE (F$VSTRING IS NOT NULL) AND (F$WTABLE=1411) AND ([dbo].[toInt64](F$CATTRNAM)=4611983380205400893)
--SELECT * FROM #T_ADR_AP


-- ВЫГРУЗКА В БД ТЕРМИНАЛОВ
DECLARE @sqlCommand NVARCHAR(MAX)
--Шаблон скрипта на модификацию прайс-листа
--Далее в нем будет заменятся имя сервера и имя БД
SET @sqlCommand = N'
UPDATE [###SRV###].[###DB###].[dbo].PRODUCTS
SET 
	P_NAME   = K.F$NAME,
	P_MIN    = K.F$ZAPASMIN, 
	P_MAX    = K.F$ZAPASMAX,
	P_REMMC  = K.F$REMMC,
	P_TNVED  = K.F$TNVED,
	P_VOLUME = K.F$PRICEPU,                          --K.F$VOLUME (перенос в другое поле)
	P_SIZEX  = CAST(K.F$WPLANLEVEL AS INT),          --K.F$SIZEX (перенос в другое поле)
	P_SIZEY  = CAST(K.F$PRIOR AS INT),               --K.F$SIZEY (перенос в другое поле)
	P_SIZEZ  = CAST(K.F$TPPLAN AS INT),              --K.F$SIZEZ (перенос в другое поле)
	P_ATC    = K.F$GOST,                             --K.F$BARKOD2 (перенос в другое поле)
	P_SKLAD  = K.F$PRMAT,                            --K.F$MASSA (перенос в другое поле)
	P_OKDP   = K.F$OKDP,
	P_MAXRN  = K.F$POLZAK                            --K.F$MAXRN (перенос в другое поле)

FROM T$KATMC AS K
WHERE P_NREC = [dbo].[toInt64](K.F$NREC)

--Обновление из Exclassval кода АТС
UPDATE [###SRV###].[###DB###].[dbo].PRODUCTS
SET	P_ATC_BASE = #T_ATC.VALUE
FROM #T_ATC
WHERE P_NREC = #T_ATC.NREC

--Обновление из Attrval бюджета (льготная цена если есть)
UPDATE [###SRV###].[###DB###].[dbo].PRODUCTS
SET	P_BUDGET = 1
FROM #T_BUDGET
WHERE  P_NREC = #T_BUDGET.NREC

--Обновление из Attrval АДРЕСА ДЛЯ АПТЕКИ 16 
UPDATE [###SRV###].[###DB###].[dbo].PRODUCTS
SET	PRODUCTS.P_OBOZN = #T_OBOZN.VSTRING
FROM #T_OBOZN
WHERE P_NREC = #T_OBOZN.NREC

--Обновление из Attrval ГРУППЫ МЕНЕДЖЕРА ДЛЯ АПТЕКИ 16 
UPDATE [###SRV###].[###DB###].[dbo].PRODUCTS
SET	P_VOL_16 = #T_VOL_16.VSTRING
FROM #T_VOL_16
WHERE  P_NREC = #T_VOL_16.NREC

--Обновление из Attrval АДРЕСА ДЛЯ АПТЕЧНОГО ПУНКТА
UPDATE [###SRV###].[###DB###].[dbo].PRODUCTS
SET	P_ADR_AP = #T_ADR_AP.VSTRING
FROM #T_ADR_AP
WHERE P_NREC = #T_ADR_AP.NREC

--Обновление из Attrval ГРУППЫ МЕНЕДЖЕРА ДЛЯ АП
UPDATE [###SRV###].[###DB###].[dbo].PRODUCTS
SET	P_VOL_AP = #T_VOL_AP.VSTRING
FROM #T_VOL_AP
WHERE P_NREC = #T_VOL_AP.NREC 

' -- END @sqlCommand


--курсор по настройке обмена KatKassa
DECLARE @SRV_NAME  VARCHAR(255)
DECLARE @DB_NAME  VARCHAR(255)
DECLARE @ADDINFO  VARCHAR(100)
DECLARE @PODRNAME VARCHAR(255)
DECLARE @COMMAND_RUN NVARCHAR(MAX)
DECLARE @RC int = 1111
DECLARE @Beg binary(8)
DECLARE @CUR_PROCNAME VARCHAR(255)

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

         EXECUTE @RC = sp_executesql @COMMAND_RUN
--запись в лог
         SET @CUR_PROCNAME = N'Обновление каталога МЦ для подразделения '+ @PODRNAME + N' (SQL SEND_FULL_KATMC_TO_TORGZAL)'
         EXEC [dbo].[S$ADD_ATC_exch_log] @P_LOG_TYPE = 2, @P_PROCNAME = @CUR_PROCNAME, @P_DT_START = @Beg, @P_STATUS = @RC
	   END
    FETCH NEXT FROM MY_CURSOR INTO @ADDINFO, @PODRNAME
END
CLOSE MY_CURSOR
DEALLOCATE MY_CURSOR

-- очистка временных таблиц
IF OBJECT_ID('tempdb..#T_ATC') IS NOT NULL drop table #T_ATC
IF OBJECT_ID('tempdb..#T_BUDGET') IS NOT NULL drop table #T_BUDGET
IF OBJECT_ID('tempdb..#T_OBOZN') IS NOT NULL drop table #T_OBOZN
IF OBJECT_ID('tempdb..#T_VOL_16') IS NOT NULL drop table #T_VOL_16
IF OBJECT_ID('tempdb..#T_ADR_AP') IS NOT NULL drop table #T_ADR_AP
IF OBJECT_ID('tempdb..#T_VOL_AP') IS NOT NULL drop table #T_VOL_AP
    
END

