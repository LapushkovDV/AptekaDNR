USE [new_gal]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[UP_INSERT_PRICE](
	@NREC [bigint],
	@ATL_LASTDATE [datetime],
	@ATL_LASTTIME [datetime],
	@ATL_LASTUSER [bigint],
	@ATL_ORIGINOFFICE [smallint],
	@CKLPRICE [bigint],
	@CTHING [bigint],
	@TIP [smallint],
	@NAME [varchar](81),
	@BARKOD [varchar](26),
	@BAROTP [varchar](26),
	@DISKRET [smallint],
	@PRICE [float],
	@CVAL [bigint],
	@SUMVAL [float],
	@DFORM [datetime],
	@PRAVT [smallint],
	@COTPED [bigint],
	@GARANT [float],
	@DOPHAR [varchar](81),
	@CGROUPMC [bigint],
	@KOD [varchar](21),
	@CPARTY [bigint],
	@NPARTY [varchar](81),
	@SRPRICE [float],
	@SRVPRICE [float],
	@CGRUSL [bigint]
)
AS 
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION 

		-- LOG START PROCEDURE
		DECLARE @RC int;
		EXEC @RC = [DBO].[LOG_SP_START] '[PRICES].[PRICES_LOAD]';

		-- Корректировка в LOG-TABLE (Отменить предыдущие загрузки)
		/*
		@@@
		UPDATE [GAL208].[dbo].[_LOG_LOAD_PRICES]
			SET [LLP_STATE] = 2		-- Статус: Удален
		WHERE [LLP_STATE] = 1;	-- Статус: Ожидание
		*/
		-- ID ЗАПИСИ В LOG-TABLE
		DECLARE @LID INT; 
		-- Запись в LOG-TABLE
		/*
		@@@
		INSERT INTO [GAL208].[dbo].[_LOG_LOAD_PRICES] ([LLP_STATE]) VALUES (0);
			SET @LID = SCOPE_IDENTITY();
		*/

		-- Загрузить данные в табл.прайс-листов в БД POS-терминалов
		INSERT INTO [DBO].[PRICES](
			[NREC]
			,[ATL_LASTDATE]
			,[ATL_LASTTIME]
			,[ATL_LASTUSER]
			,[ATL_ORIGINOFFICE]
--			,[LASTUSER]  -- такого поля уже нет в Галактике
--			,[LASTTIME]  -- такого поля уже нет в Галактике
--			,[LASTDATE]  -- такого поля уже нет в Галактике
--			,[FILIALNO]  -- такого поля уже нет в Галактике
			,[CKLPRICE]
			,[CTHING]
			,[TIP]
			,[NAME]
			,[BARKOD]
			,[BAROTP]
			,[DISKRET]
			,[PRICE]
			,[CVAL]
			,[SUMVAL]
			,[DFORM]
			,[PRAVT]
			,[COTPED]
			,[GARANT]
			,[DOPHAR]
			,[CGROUPMC]
			,[KOD]
--			,[PRSORT]    -- такого поля уже нет в Галактике
			,[CPARTY]
			,[NPARTY]
			,[SRPRICE]
			,[SRVPRICE]
			,[CGRUSL]
			)
		SELECT 
			@NREC
			,@ATL_LASTDATE
			,@ATL_LASTTIME
			,@ATL_LASTUSER
			,@ATL_ORIGINOFFICE
--			,[LASTUSER]    -- такого поля уже нет в Галактике
--			,[F$LASTTIME]  -- такого поля уже нет в Галактике
--			,[LASTDATE]    -- такого поля уже нет в Галактике
--			,[F$FILIALNO]  -- такого поля уже нет в Галактике
			,@CKLPRICE
			,@CTHING
			,@TIP
			,@NAME
			,@BARKOD
			,@BAROTP
			,@DISKRET
			,@PRICE
			,@CVAL
			,@SUMVAL
			,@DFORM
			,@PRAVT
			,@COTPED
			,@GARANT
			,@DOPHAR
			,@CGROUPMC
			,@KOD
--			,[F$PRSORT]    -- такого поля уже нет в Галактике
			,@CPARTY
-- Наименование отпускной единицы измерения
			,@NPARTY
			,@SRPRICE
-- Коефициент делимости отпускной единицы измерения
			,@SRVPRICE
			,@CGRUSL
		-- Корректировка в LOG-TABLE
		/*
		@@@
		UPDATE [GAL208].[dbo].[_LOG_LOAD_PRICES]
			SET [LLP_DTS_END] = GETDATE()
				,[LLP_STATE] = 1		-- Статус: Ожидание
				,[COUNTSTR] = (SELECT COUNT(*) FROM [192.168.24.151].[new].[DBO].[PRICES])
		WHERE LLP_ID = @LID;
		-- Отчет
		SELECT * FROM [GAL208].[dbo].[_LOG_LOAD_PRICES] WHERE LLP_ID = @LID;
		*/
--	END;

-- LOG END PROCEDURE
		EXEC [DBO].[LOG_SP_END] @RC;

		IF @@TRANCOUNT > 0 COMMIT TRANSACTION 
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	END CATCH
END