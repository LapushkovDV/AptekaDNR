USE [new]
GO
/****** Object:  StoredProcedure [dbo].[LOAD_FROM_JSON]    Script Date: 27.01.2024 15:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER PROCEDURE [dbo].[LOAD_FROM_JSON]( 
 @PODR_NAME NVARCHAR(255),
 @JSON_PATH NVARCHAR(MAX)
 ) AS    

BEGIN
 
  
 --для проверки
 --DECLARE @PODR_NAME NVARCHAR(255) = 'TEST'
 --DECLARE @JSON_PATH NVARCHAR(MAX) = 'D:\!-=obmen=-!\TEST\TEST_20240127_154702.json'


DECLARE @tmpREPORT TABLE (
	A_ID  BIGINT,
	P_NAME VARCHAR(255),
	RESULT VARCHAR(10)
)

IF OBJECT_ID('tempdb..#tmpCASH_OUT') IS NOT NULL drop table #tmpCASH_OUT
DECLARE @JSON NVARCHAR(MAX)
DECLARE @sqlCommand NVARCHAR(MAX)
SET @sqlCommand = N'SELECT @JSON = BulkColumn FROM OPENROWSET(BULK '''+ @JSON_PATH +''', SINGLE_CLOB) as j '

EXEC sp_executesql @sqlCommand, N'@JSON NVARCHAR(MAX) OUTPUT', @JSON = @JSON OUTPUT

DECLARE @ROOT VARCHAR(20) = '$.'+ @PODR_NAME
SELECT *
INTO #tmpCASH_OUT
FROM OPENJSON ( @JSON, @ROOT)  
WITH (   
		LOC			VARCHAR(30)		'$.LOC',
		GALLOCAL	VARCHAR(30)		'$.GALLOCAL',
		BARKOD		VARCHAR(30)		'$.BARKOD',
		PRICE       FLOAT			'$.PRICE',
		[COUNT]	    FLOAT			'$.COUNT',
		NAM			VARCHAR(255)    '$.NAM',
		VES			INT				'$.VES',
		ED			VARCHAR(5)		'$.ED',
		EDMSG		VARCHAR(50)		'$.EDMSG',
		DEP			VARCHAR(4)		'$.DEP',
		KOEF		FLOAT			'$.KOEF',
		SALE		INT				'$.SALE',
		FPRICE		FLOAT			'$.FPRICE',
		[GROUP]		VARCHAR(255)    '$.GROUP',
		[MIN]		FLOAT			'$.MIN',
		[MAX]		FLOAT			'$.MAX',
		REMMC		VARCHAR(50)		'$.REMMC',
		NREC		VARCHAR(30)		'$.NREC',
		ZAKUP		FLOAT			'$.ZAKUP',
		PLANVOL		FLOAT			'$.PLANVOL',
		TNVED		VARCHAR(20)		'$.TNVED',
		OKDP		VARCHAR(20)		'$.OKDP'
)

--SELECT * FROM #tmpCASH_OUT

DECLARE @RC int = 1111
DECLARE @LOC		BIGINT
DECLARE @GALLOCAL	BIGINT
DECLARE @BARKOD		VARCHAR(30)
DECLARE @PRICE      FLOAT		
DECLARE @COUNT		FLOAT		
DECLARE @NAM		VARCHAR(255)
DECLARE @VES		INT			
DECLARE @ED			VARCHAR(5)	
DECLARE @EDMSG		VARCHAR(50)
DECLARE @DEP		VARCHAR(4)	
DECLARE @KOEF		FLOAT		
DECLARE @SALE		INT			
DECLARE @FPRICE		FLOAT		
DECLARE @GROUP		VARCHAR(255)
DECLARE @MIN		FLOAT		
DECLARE @MAX		FLOAT		
DECLARE @REMMC		VARCHAR(50)
DECLARE @NREC		VARCHAR(30)
DECLARE @ZAKUP		FLOAT		
DECLARE @PLANVOL	FLOAT		
DECLARE @TNVED		VARCHAR(20)
DECLARE @OKDP		VARCHAR(20)

DECLARE MY_CURSOR CURSOR 
  LOCAL STATIC READ_ONLY FORWARD_ONLY
FOR 
SELECT CAST(LOC AS BIGINT),CAST(GALLOCAL AS BIGINT),BARKOD,PRICE,[COUNT],NAM,VES,ED,EDMSG,DEP,KOEF,SALE,FPRICE,[GROUP],[MIN],[MAX],REMMC,NREC,ZAKUP,PLANVOL,TNVED,OKDP	
FROM #tmpCASH_OUT 
OPEN MY_CURSOR
	FETCH NEXT FROM MY_CURSOR INTO @LOC,@GALLOCAL,@BARKOD,@PRICE,@COUNT,@NAM,@VES,@ED,@EDMSG,@DEP,@KOEF,@SALE,@FPRICE,@GROUP,@MIN,@MAX,@REMMC,@NREC,@ZAKUP,@PLANVOL,@TNVED,@OKDP	

WHILE @@FETCH_STATUS = 0
BEGIN 
--		SELECT @LOC,@GALLOCAL,@BARKOD,@PRICE,@COUNT,@NAM,@VES,@ED,@EDMSG,@DEP,@KOEF,@SALE,@FPRICE,@GROUP,@MIN,@MAX,@REMMC,@NREC,@ZAKUP,@PLANVOL,@TNVED,@OKDP	
		EXEC @RC = [dbo].[UP_INSERT_ARTICLE]
			@ARTCODE	=	@LOC,					--@ARTCODE	bigint ,
			@MNAME		=	@GROUP,					--@MNAME	NVARCHAR (255 ),
			@PACK		=	@KOEF,					--@PACK	FLOAT ,
			@PNAME		=	@NAM,					--@PNAME	NVARCHAR (255 ),
			@PUNU		=	@ED,					--@PUNU	NVARCHAR (8 ),
			@PTAX		=	@DEP,					--@PTAX	NVARCHAR (2 ),
			@PNREC		=	@GALLOCAL,				--@PNREC	BIGINT ,
			@MIN		=	@MIN,					--@MIN	INT ,
			@MAX		=	@MAX,					--@MAX	INT ,
			@REMMC		=	@REMMC,					--@REMMC	NVARCHAR (255 ),
			@PRICE		=	@PRICE,					--@PRICE	FLOAT ,
			@QTY		=	0,						--@QTY	INT ,
			@QTYU		=	@COUNT,					--@QTYU	FLOAT ,
			@KOEF		=	@KOEF,					--@KOEF	FLOAT = 1 ,
			@OKDP		=	@OKDP,					--@OKDP	NVARCHAR (50 ),
			@TNVED		=	@TNVED					--@TNVED	NVARCHAR (50 )
		INSERT INTO @tmpREPORT (A_ID,P_NAME,RESULT)
		SELECT @LOC AS ARTCODE, @NAM AS TOVAR, CASE WHEN @RC = 0 THEN 'OK' ELSE 'ERR' END AS RESULT  
	FETCH NEXT FROM MY_CURSOR INTO @LOC,@GALLOCAL,@BARKOD,@PRICE,@COUNT,@NAM,@VES,@ED,@EDMSG,@DEP,@KOEF,@SALE,@FPRICE,@GROUP,@MIN,@MAX,@REMMC,@NREC,@ZAKUP,@PLANVOL,@TNVED,@OKDP	
END
CLOSE MY_CURSOR
DEALLOCATE MY_CURSOR
SELECT * FROM @tmpREPORT
-- очистка временной таблицы
IF OBJECT_ID('tempdb..#tmpCASH_OUT') IS NOT NULL drop table #tmpCASH_OUT


END