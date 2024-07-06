USE [A208]
GO
/****** Object:  StoredProcedure [dbo].[S$GET_RESULTPROD_FROM_TORGZAL]    Script Date: 10.01.2024 15:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER PROCEDURE [dbo].[S$GET_RESULTPROD_FROM_TORGZAL](
 @DATEPROD  INTEGER, 
 @ISOFFLINE  TINYINT )  AS    

BEGIN
--Загрузка чеков из торговых залов

SET DATEFORMAT dmy
SET XACT_ABORT ON;
SET NOCOUNT ON;
--для проверки
--DECLARE @DATEPROD    INTEGER = [dbo].[ToAtlDate](convert(datetime,'29/01/2024'))
--DECLARE @ISOFFLINE TINYINT = 1  -- 0 онлайн режим  -- 1 для офлайн обмена

DECLARE @tmpCASH_PROT Table (
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
	H_ID     INT
)

DECLARE @sqlCommand NVARCHAR(MAX)
--Шаблон скрипта на модификацию прайс-листа
--Далее в нем будет заменятся имя сервера и имя БД
SET @sqlCommand = N'
-- очистка временной таблицы
IF OBJECT_ID(''tempdb..#tmpCASH_PROT'') IS NOT NULL drop table #tmpCASH_PROT
IF OBJECT_ID(''tempdb..#TERMS'') IS NOT NULL drop table #TERMS

DECLARE @DT DATETIME = [dbo].[date2str](''%dd/%MM/%yyyy'',@DATEPROD)

-- Отбросить время если оно есть
	SET @DT = CONVERT(NVARCHAR,@DT,112)
    DECLARE @DT_END DATETIME = DATEADD(DAY,1,@DT)


-- LOG START PROCEDURE
	DECLARE @RC int
	EXEC @RC = [###SRV###].[###DB###].[dbo].[LOG_SP_START] ''[CASH_PROT_ADD]''

-- Очистить таблице протоколов в Галактике (Pervasive)
--  DELETE FROM ODBC_PVSGAL.GAL..CASH_PROT 
-- Заполнить таблицу протоколов в Галактике (Pervasive)
--  INSERT ODBC_PVSGAL.GAL..CASH_PROT 
-- Данные о продажах с POS-терминалов (Строки чеков)
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
		B.[H_ID] 
    INTO #tmpCASH_PROT
	FROM [###SRV###].[###DB###].[dbo].CHECKS A WITH (NOLOCK)
	INNER JOIN [###SRV###].[###DB###].[dbo].CHECK_ITEMS	B WITH (NOLOCK) ON A.[H_ID] = B.[H_ID] 
	WHERE
        A.[H_DATE] BETWEEN @DT AND @DT_END 

-- LOG END PROCEDURE
	EXEC [###SRV###].[###DB###].[dbo].[LOG_SP_END] @RC

   SELECT * FROM #tmpCASH_PROT
' -- end @sqlCommand


--курсор по настройке обмена KatKassa
DECLARE @SRV_NAME  VARCHAR(255)
DECLARE @DB_NAME  VARCHAR(255)
DECLARE @ADDINFO  VARCHAR(100)
DECLARE @PODR_NAME VARCHAR(255)
DECLARE @PODR_NREC BINARY(8)
DECLARE @KATKASSA_NREC BINARY(8)
DECLARE @LAST_SESSION INT

DECLARE @COMMAND_RUN NVARCHAR(MAX)
DECLARE @RC int = 1111
DECLARE @Beg binary(8)
DECLARE @CUR_PROCNAME VARCHAR(255)

DECLARE KATKASSA_CURSOR CURSOR 
LOCAL STATIC READ_ONLY FORWARD_ONLY
FOR 
SELECT DISTINCT T$KATKASSA.F$ADDINFO, T$KATPODR.F$NAME, T$KATPODR.F$NREC, T$KATKASSA.F$NREC, ISNULL(T$KATKASSA.F$LASTRELIEFE,0)
FROM T$KATKASSA
LEFT JOIN T$KATPODR ON T$KATKASSA.F$CPODR = T$KATPODR.F$NREC
OPEN KATKASSA_CURSOR
FETCH NEXT FROM KATKASSA_CURSOR INTO @ADDINFO, @PODR_NAME, @PODR_NREC, @KATKASSA_NREC, @LAST_SESSION
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
			DELETE FROM @tmpCASH_PROT
			-- ЕСЛИ ОНЛАЙН ОБМЕН
			IF @ISOFFLINE = 0
				BEGIN
					-- СОХРАНЯЕМ РЕЗУЛЬТАТ РАБОТЫ sp_executesql ВО ВРЕМЕННУЮ ТАБЛИЦУ @tmpCASH_PROT
					INSERT @tmpCASH_PROT EXECUTE @RC = sp_executesql @COMMAND_RUN, N'@DATEPROD INTEGER', @DATEPROD
				END
				ELSE
				BEGIN
					SET @RC = 0
					INSERT INTO @tmpCASH_PROT (OPER,ARTICUL,[COUNT],PRICE,H_NO,H_DATE,H_RET,T_ID,Z_ID,U_ID,C_ID,H_Items,H_TYPE,	H_ID)
					SELECT 
						[OPER]    = T.F$LS#1#  ,
						[ARTICUL] = T.F$S,
						[COUNT]   = T.F$SUMS#1#,
						[PRICE]   = T.F$SUMS#2#,
						[H_NO]    = T.F$LS#2#  ,
						[H_DATE]  = CAST ( T.F$SS#2# AS DATETIME),
						[T_RET]   = T.F$LS#9#  ,
						[T_ID]    = T.F$LS#3#  ,
						[Z_ID]    = T.F$LS#4#  ,
						[U_ID]    = T.F$LS#5#  ,
						[C_ID]    = T.F$LS#10# ,
						[H_Items] = T.F$LS#6#  ,
						[H_TYPE]  = T.F$LS#7#  ,
						[H_ID]    = T.F$LS#8#  

					FROM T$TMPGRN T WHERE F$KTBL = 44777 AND T.F$CRECS#1# = @KATKASSA_NREC
				END


			--ПРОВЕРЯЕМ ПОЛУЧЕНЫ ЛИ ЗАПИСИ О ПРАДАЖАХ
			IF EXISTS(SELECT * FROM @tmpCASH_PROT)
			BEGIN
				-- СВЯЗЫВАЕМ ПОЛУЧЕННЫЙ @tmpCASH_PROT С LISTGOOD, В РАЗРЕЗЕ ПОДРАЗДЕЛЕНИЯ РОЗН.ТОРГ.  ПО АРТИКУЛУ 
				-- С ВЫГРУЗКОЙ ВО ВРЕМЕННУЮ ТАБЛИЦУ
				IF OBJECT_ID('tempdb..#tmpCP_ON_LG') IS NOT NULL drop table #tmpCP_ON_LG -- УДАЛЕНИЕ ВРЕМЕННОЙ ТАБЛИЦЫ
				SELECT OPER, ARTICUL, [COUNT], PRICE, H_NO,	H_DATE,	H_RET, T_ID, Z_ID, U_ID, C_ID, H_Items,	H_TYPE, H_ID, L.F$NREC AS LISTGOOG_NREC, OST.IN_PROD, 
						PART.F$CREATEDATETIME, [dbo].[toInt64](PART.F$NREC) as PARTY_NREC, PART.F$NAME AS PARTY_NAME,
						ROW_NUMBER() OVER(ORDER BY PART.F$CREATEDATETIME, PART.F$NREC ASC) AS Row# -- ПРЯДКОВЫЙ НОМЕР ДЛЯ СОРТИРОВКИ FIFO
				INTO #tmpCP_ON_LG
				FROM @tmpCASH_PROT AS C
/*
				-- ВРЕМЕННО СВЯЗЫВАЕМ ВОТ ТАК КРИВО - ПОКА КОРОТКИЙ АРТИКУЛ, НУЖНО ПЕРЕДЕЛАТЬ НА LEFT JOIN T$LISTGOOD L ON L.F$BARCODE = C.ARTICUL
				LEFT JOIN T$LISTGOOD L	ON SUBSTRING (L.F$BARCODE,LEN(L.F$BARCODE)-5,LEN(L.F$BARCODE)) = C.ARTICUL
*/
				LEFT JOIN T$LISTGOOD L ON L.F$BARCODE = C.ARTICUL
										AND L.F$CPODR = @PODR_NREC
				LEFT JOIN T$RZKUTPRIH KUT_P ON KUT_P.F$NREC = L.F$C1
				LEFT JOIN T$KATPARTY PART ON PART.F$NREC = KUT_P.F$CPARTY
				OUTER APPLY (SELECT TOP 1 (ISNULL(L.F$KOL,0) - ISNULL(K.F$KOLSUB,0) - ISNULL(K.F$KOLSTART,0) - ISNULL(K.F$KOL,0)) AS IN_PROD
							FROM T$KOLMC K WHERE K.F$CGOODS = L.F$NREC) AS OST

				--select * from #tmpCP_ON_LG ORDER BY Row#

				--ИЗ-ЗА ТОГО ЧТО АРТИКУЛ НЕУНИКАЛЬНЫЙ (ТО ЕСТ БЫЛ РАНЕЕ НЕУНИКАЛЬНЫЙ) ТО ДЛЯ ОДНОГО @tmpCASH_PROT МОГУТ БЫТЬ НЕСКОЛЬКО T$LISTGOOD
				--ПО ЭТОЙ ПРИЧИНЕ РАСПРЕДЕЛЯЕМ [COUNT] ИЗ @tmpCASH_PROT ПО T$LISTGOOD С УЧЕТОМ ТЕК. ОСТАТКА ТОВАРА В ТОРГОВОМ ЗАЛЕ
				--И ГЕНЕРИРУЕМ ДЛЯ ЭТИХ LISTGOOD ЗАПИСИ В ТАБЛИЦЕ RESTRADE И ATC_ResTrade_atr 
				--ДЛЯ НАГЛЯДНОСТИ РЕШИЛ РЕАЛИЗОВАТЬ ЧЕРЕЗ КУРСОР
				--ОБЪЯВЛЯЕМ ПЕРЕМЕННЫЕ ДЛЯ КУРСОРА И САМИ КУРСОРЫ
				DECLARE @OPER     INT
				DECLARE @ARTICUL  VARCHAR(30)
				DECLARE @COUNT    FLOAT
				DECLARE @PRICE    FLOAT
				DECLARE @H_NO     INT
				DECLARE @H_DATE   DATETIME
				DECLARE @H_RET    INT
				DECLARE @T_ID     INT
				DECLARE @Z_ID     INT
				DECLARE @U_ID     INT
				DECLARE @C_ID     INT
				DECLARE @H_Items  INT
				DECLARE @H_TYPE   INT
				DECLARE @H_ID     INT
	
				DECLARE с_CASH_PROT CURSOR 
				LOCAL STATIC READ_ONLY FORWARD_ONLY
				FOR 
					SELECT OPER, ARTICUL, [COUNT], PRICE, H_NO,	H_DATE,	H_RET, T_ID, Z_ID, U_ID, C_ID, H_Items,	H_TYPE, H_ID
					FROM @tmpCASH_PROT
				OPEN с_CASH_PROT
					FETCH NEXT FROM с_CASH_PROT INTO @OPER, @ARTICUL, @COUNT, @PRICE, @H_NO, @H_DATE, @H_RET, @T_ID, @Z_ID, @U_ID, @C_ID, @H_Items, @H_TYPE, @H_ID
				WHILE @@FETCH_STATUS = 0
				BEGIN 
					DECLARE @LISTGOOD_NREC BINARY(8)
					DECLARE @OST_IN_PROD FLOAT
					DECLARE @LG_KOL FLOAT = 0

					DECLARE с_CP_ON_LG CURSOR 
					LOCAL STATIC READ_ONLY FORWARD_ONLY
					FOR SELECT LISTGOOG_NREC, IN_PROD
						FROM #tmpCP_ON_LG
						WHERE OPER=@OPER AND ARTICUL=@ARTICUL AND [COUNT]=@COUNT AND PRICE=@PRICE AND H_NO=@H_NO AND H_DATE=@H_DATE
								AND T_ID=@T_ID AND Z_ID=@Z_ID AND H_Items=@H_Items AND H_TYPE=@H_TYPE AND H_ID=@H_ID
						ORDER BY Row# --ПРЯДКОВЫЙ НОМЕР ДЛЯ СОРТИРОВКИ FIFO
					OPEN с_CP_ON_LG
						FETCH NEXT FROM с_CP_ON_LG INTO @LISTGOOD_NREC, @OST_IN_PROD
					WHILE @@FETCH_STATUS = 0
					BEGIN 
						IF @COUNT >= @OST_IN_PROD
						BEGIN
							SET @LG_KOL = @OST_IN_PROD
							SET @COUNT = @COUNT - @OST_IN_PROD
						END 
						ELSE 
						BEGIN
							SET @LG_KOL = @COUNT
							SET @COUNT = 0
						END

						-- ПРОВЕРКА НА ТО ЧТО НЕ БЫЛ ЛИ ЧЕК ЗАГРУЖЕН РАНЕЕ
						-- ВДРУГ ЗАЧЕМ ТО ЗАПУСТИЛИ ПОЛУЧЕНИЕ ДАННЫХ НЕСКОЛЬКО РАЗ В ОДИН ДЕНЬ
						DECLARE @ATC_ResTrade_atr_NREC BINARY(8) = NULL
						SELECT @ATC_ResTrade_atr_NREC = ATR.F$NREC 
						FROM T$ATC_ResTrade_atr ATR
						LEFT JOIN T$RESTRADE RT ON RT.F$NREC = ATR.F$CRESTRADE
						WHERE ATR.F$CPODR = @PODR_NREC AND ATR.F$H_ID = @H_ID AND RT.F$CGOODS = @LISTGOOD_NREC
						-- ЕСЛИ ЧЕК ПО ЭТОЙ ПОЗИЦИИ НЕ ЗАГРУЖАЛСЯ И КОЛИЧЕСТВО ПРОДАННОГО НЕ ПОЛНОСТЬЮ РАСПРЕДЕЛЕНО ПО LISTGOOD
						IF @ATC_ResTrade_atr_NREC IS NULL AND @LG_KOL*@PRICE > 0
							BEGIN
								-- РЕГИСТРАЦИЯ НОВОЙ СЕССИИ ОБМЕНА
								IF OBJECT_ID('tempdb ..#xx$locks')IS NOT NULL drop table #xx$locks create table #xx$locks (TableNRec binary(8))
								UPDATE T$KATKASSA SET T$KATKASSA.F$LASTRELIEFE = @LAST_SESSION + 1
								WHERE T$KATKASSA.F$NREC = @KATKASSA_NREC

								--ЗАПОЛНЕНИЕ ТАБЛИЦЫ RESTRADE			
								INSERT INTO V$RESTRADE (F$CGOODS,
														F$KOL,		--нал
														F$TKOL,  
														F$SUMMA,	--нал
														F$TSUMMA,	
														F$SESSION,
														F$CKASSA)
								SELECT	@LISTGOOD_NREC,
										@LG_KOL,			--CASE WHEN @OPER = 1 THEN @LG_KOL ELSE 0 END,			-- КОЛ-ВО ЗА НАЛ
										@LG_KOL, 
										@LG_KOL*@PRICE,		--CASE WHEN @OPER = 1 THEN @LG_KOL*@PRICE ELSE 0 END,	-- СУММА ЗА НАЛИЧНЫЕ
										@LG_KOL*@PRICE, 
										@LAST_SESSION+1, 
										@KATKASSA_NREC

								-- ОПРЕДЕЛЕНИЕ NREC ВСТАВЛЕННОГО RESTRADE
								-- ПОСКОЛЬКУ SELECT SCOPE_IDENTITY(), @@IDENTITY ВООБШЕ НЕ РАБОТАЮТ Т.К. ГАЛАКТИКА САМА ФОРМИРУЕТ NREC В ТРИГГЕРЕ, ТО ПОЛУЧИТЬ МЫ ЕГО ТАК НЕ МОЖЕМ
								-- ЗНАЧИТ ПОЛУЧИМ ЕГО ИНАЧЕ
								-- ВЫБЕРЕМ НЕПРИВЯЗАННУЮ ЗАПИСЬ К RESTRADE_ATTR В ТЕКУЩЕЙ СЕССИ ОБМЕНА ДЛЯ ЭТОГО ПОДРАЗДЕЛЕНИЯ РОЗНЧНОЙ ТОРГОВЛИ
								-- ТО ЕСТЬ ЕДИНСТВЕННУЮ НЕ ПРИВЯЗАННУЮ ПОКА К RESTRADE_ATTR В ТЕКУЩЕЙ СЕССИИ ДЛЯ ЭТОГО ПРОДРАЗДЕЛЕНИЯ
								-- (ДАЖЕ ЕСЛИ ОКАЖУТСЯ ДРУГИЕ НЕПРИВЯЗАННЫЕ ЗАПИСИ, ОНИ ТОЧНО БУДУТ НЕ ИЗ ЭТОЙ СЕССИИ ЭТОГО ПОДРАЗДЕЛЕНИЯ)
								DECLARE @RESTRADE_NREC BINARY(8)
								SELECT @RESTRADE_NREC = RT.F$NREC 
								FROM T$RESTRADE RT
								LEFT JOIN T$ATC_ResTrade_atr ATR ON ATR.F$CRESTRADE = RT.F$NREC
								WHERE	ATR.F$NREC IS NULL
									AND RT.F$CKASSA  = @KATKASSA_NREC
									AND RT.F$SESSION = @LAST_SESSION+1
						
								--ЗАПОЛНЕНИЕ ТАБЛИЦЫ  ATC_ResTrade_atr
								INSERT INTO V$ATC_ResTrade_atr (F$CRESTRADE,    F$H_NO, F$H_DATE,                        F$H_RET, F$T_ID,F$Z_ID, F$U_ID, F$C_ID, F$H_ITEMS, F$H_TYPE, F$CPODR,    F$H_ID )
								SELECT						@RESTRADE_NREC, @H_NO,  [dbo].[ToAtlDateTime](@H_DATE),  @H_RET,  @T_ID, @Z_ID,  @U_ID,  @C_ID,  @H_ITEMS,  @OPER,    @PODR_NREC, @H_ID 
						
								-- УМЕНЬШАЕМ ОСТАТОК В ПРОДАЖЕ ДЛЯ ЭТОГО LISTGOOD
							    UPDATE #tmpCP_ON_LG SET IN_PROD = IN_PROD - @LG_KOL WHERE LISTGOOG_NREC = @LISTGOOD_NREC

							END -- IF @ATC_ResTrade_atr_NREC IS NULL AND @LG_KOL*@PRICE > 0

						FETCH NEXT FROM с_CP_ON_LG INTO @LISTGOOD_NREC, @OST_IN_PROD
					END -- CURSOR с_CP_ON_LG
					CLOSE с_CP_ON_LG
					DEALLOCATE с_CP_ON_LG

					FETCH NEXT FROM с_CASH_PROT INTO @OPER, @ARTICUL, @COUNT, @PRICE, @H_NO, @H_DATE, @H_RET, @T_ID, @Z_ID, @U_ID, @C_ID, @H_Items, @H_TYPE, @H_ID
				END -- CURSOR с_CASH_PROT
				CLOSE с_CASH_PROT
				DEALLOCATE с_CASH_PROT
			END --IF EXISTS(SELECT * FROM @tmpCASH_PROT)
		END TRY  
		BEGIN CATCH  
			SET @RC = 311
			IF @@TRANCOUNT > 0  ROLLBACK TRANSACTION;  
		END CATCH;  

		IF @@TRANCOUNT > 0 COMMIT TRANSACTION; 
		--запись в лог
		IF EXISTS(SELECT * FROM @tmpCASH_PROT)
			BEGIN
				SET @CUR_PROCNAME = N'Загрузка данных из кассы '+ @PODR_NAME + N' (SQL GET_RESULTPROD_FROM_TORGZAL)'
				EXEC [dbo].[S$ADD_ATC_exch_log] @P_LOG_TYPE = 1, @P_PROCNAME = @CUR_PROCNAME, @P_DT_START = @Beg, @P_STATUS = @RC
			END
	END --IF @DB_NAME IS NOT NULL AND @SRV_NAME IS NOT NULL
    FETCH NEXT FROM KATKASSA_CURSOR INTO @ADDINFO, @PODR_NAME, @PODR_NREC, @KATKASSA_NREC, @LAST_SESSION
END --FETCH KATKASSA_CURSOR
CLOSE KATKASSA_CURSOR
DEALLOCATE KATKASSA_CURSOR




END 