USE [A208]
GO
/* 
***** Object:  StoredProcedure [dbo].[S$SENDTOVAR_TO_TORGZAL]    
Script Date: 30.12.2023 18:41:50 
*****
*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER PROCEDURE [dbo].[S$SENDTOVAR_TO_TORGZAL](
  @ARTCODE  VARCHAR(30)    --1 
 ,@MNAME  VARCHAR(255)     --2
 ,@PACK  FLOAT             --3
 ,@PNAME  VARCHAR(255)     --4
 ,@PUNU  VARCHAR(8)        --5
 ,@PTAX  VARCHAR(2)        --6
 ,@PNREC  VARCHAR(30)      --7
 ,@MIN_K  FLOAT            --8
 ,@MAX_K  FLOAT            --9
 ,@REMMC  VARCHAR(255)     --10
 ,@PRICE  FLOAT            --11
 ,@QTY  INTEGER            --12
 ,@QTYU  FLOAT             --13
 ,@KOEF  FLOAT             --14
 ,@OKDP  VARCHAR(50)       --15
 ,@TNVED  VARCHAR(50)      --16
 ,@SRV_NAME  VARCHAR(255)  --17
 ,@DB_NAME  VARCHAR(255)   --18   
 ,@MODE TINYINT            --19
 ) AS    

BEGIN
--Хранимая процедура которая выгружает данные из Галактики в БД торговых залов
--при выполнении операции в Галактике - Передача товаров в ТЗ и Возврат товаров из ТЗ
--выгружается 1 товарная позиция
--предполагается, что БД торовых залов могут быть на разных серверах и в разных БД
--логирование работы данной процедуры выполняется в Галактике!!!!!!!!!!!
/*
изменены поля
    стало                            было
изменены поля
    стало                            было
T$KatMC.F$PRICEPU             --T$KatMC.F$VOLUME  (перенос в другое поле)
T$KatMC.F$WPLANLEVEL          --T$KatMC.F$SIZEX   (перенос в другое поле)
T$KatMC.F$PRIOR               --T$KatMC.F$SIZEY   (перенос в другое поле)
T$KatMC.F$TPPLAN              --T$KatMC.F$SIZEZ   (перенос в другое поле)
T$KatMC.F$GOST                --T$KatMC.F$BARKOD2 (перенос в другое поле)
T$KatMC.F$PRMAT               --T$KatMC.F$MASSA   (перенос в другое поле)
T$KatMC.F$POLZAK              --T$KatMC.F$MAXRN   (перенос в другое поле)

но в этой хранимке они не использовались...
*/

SET NOCOUNT ON 
SET XACT_ABORT ON
SET @ARTCODE = LTRIM(@ARTCODE)
SET @ARTCODE = RTRIM(@ARTCODE)
DECLARE @ARTCODE_BIGINT BIGINT = CAST(@ARTCODE as BIGINT)
DECLARE @RC int
DECLARE @returnvalue int
DECLARE @sqlCommand NVARCHAR(MAX)

--Скрипт запроса на обмен данными с linked сервером
--Решил использовать скрипт, поскольку linked Сервер и БД это параметр @SRV_NAME и @DB_NAME соответственно
SET @sqlCommand = N'
DECLARE @CAN_DO INT = 0
DECLARE @OST_KOL FLOAT = 0

--ЕСЛИ ЭТО ВОЗВРАТ В ТЗ (@MODE = 2) 
IF @MODE = 2 
BEGIN
  SELECT  @OST_KOL = isNull(Sum(J_my.J_QTYU),0)
  FROM [###SRV###].[###DB###].[dbo].JOURNAL AS J_my
  WHERE J_my.A_ID = @ARTCODE_BIGINT
  GROUP BY J_my.A_ID
  HAVING (((Sum(J_my.J_QTY))>0))

  IF (@OST_KOL > 0)  AND  (@OST_KOL >= (0- @QTYU * @PACK) )
     BEGIN
		SET @CAN_DO = 111
	 END
END
ELSE
BEGIN
	SET @CAN_DO = 111
END

--SELECT @CAN_DO = 111, @OST_KOL

IF @CAN_DO = 111
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION 
		EXEC @returnvalue = [###SRV###].[###DB###].[dbo].[UP_INSERT_ARTICLE] 
			@ARTCODE_BIGINT
			,@MNAME
			,@PACK
			,@PNAME
			,@PUNU
			,@PTAX
			,@PNREC
			,@MIN_K
			,@MAX_K
			,@REMMC
			,@PRICE
			,@QTY
			,@QTYU
			,@KOEF
			,@OKDP
			,@TNVED

		IF @@TRANCOUNT > 0 COMMIT TRANSACTION 
	END TRY
	BEGIN CATCH
	    SET @returnvalue = 311
		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	END CATCH
END 
ELSE
BEGIN
	SET @returnvalue = 404
END
'--end

-- Установка Сервера и БД в скрипте
IF LOWER (@SRV_NAME) <> '(local)'
	SET @sqlCommand = REPLACE(@sqlCommand,'###SRV###', @SRV_NAME);
ELSE SET @sqlCommand = REPLACE(@sqlCommand,'[###SRV###].', '');

SET @sqlCommand = REPLACE(@sqlCommand,'###DB###', @DB_NAME);

EXECUTE @RC = sp_executesql @sqlCommand,
N'
 @ARTCODE_BIGINT BIGINT   --1
,@MNAME  VARCHAR(255)     --2
,@PACK  FLOAT             --3
,@PNAME  VARCHAR(255)     --4
,@PUNU  VARCHAR(8)        --5
,@PTAX  VARCHAR(2)        --6
,@PNREC  VARCHAR(30)      --7
,@MIN_K  FLOAT            --8
,@MAX_K  FLOAT            --9
,@REMMC  VARCHAR(255)     --10
,@PRICE  FLOAT            --11
,@QTY  INTEGER            --12
,@QTYU  FLOAT             --13
,@KOEF  FLOAT             --14
,@OKDP  VARCHAR(50)       --15
,@TNVED  VARCHAR(50)      --16
,@MODE TINYINT            --19
,@returnvalue INT OUTPUT
'
,@ARTCODE_BIGINT
,@MNAME   
,@PACK    
,@PNAME   
,@PUNU    
,@PTAX    
,@PNREC   
,@MIN_K   
,@MAX_K   
,@REMMC   
,@PRICE   
,@QTY     
,@QTYU    
,@KOEF    
,@OKDP    
,@TNVED
,@MODE
,@returnvalue OUTPUT

SELECT @RC AS EXECRESULT, @returnvalue as ReturnValue
END

/*
--===========================================
--оригинальная хранимая процедура
--на основании которой была сделана доработка
--===========================================
USE [new] 
GO 

SET ANSI_NULLS ON 
GO 
SET QUOTED_IDENTIFIER ON 
GO 
 
-- ============================================= 
-- Author:		<Author,,Name> 
-- ALTER  date: 2009-09-16 16:35:58.560 
-- Description:	ПРОЦЕДУРА ВСТАВКИ АРТИКУЛА В RETAIL 
-- ============================================= 

ALTER   PROCEDURE [dbo].[UP_INSERT_ARTICLE] 
@ARTCODE	INT ,
@MNAME	NVARCHAR (255 ),
@PACK	FLOAT,
@PNAME	NVARCHAR (255 ),
@PUNU	NVARCHAR (8 ),
@PTAX	NVARCHAR (2 ),
@PNREC	BIGINT,
@MIN	INT,
@MAX	INT,
@REMMC	NVARCHAR (255 ),
@PRICE	FLOAT,
@QTY	INT,
@QTYU	FLOAT,
@KOEF	FLOAT = 1,
@OKDP	NVARCHAR (50 ),
@TNVED	NVARCHAR (50 ),

@TZ_Name  NVARCHAR (255 )

AS  

SET NOCOUNT ON 
 
DECLARE @MID INT 
DECLARE @PID INT 
DECLARE @PROD_PACK INT 
 
BEGIN TRAN 

--ЕСЛИ НЕТ ТАКОГО ПРОИЗВОДИТЕЛЯ => ВСТАВИТЬ 
 IF NOT EXISTS (SELECT M_ID FROM MANUFACTURERS WITH (NOLOCK) WHERE M_NAME = @MNAME ) 
    INSERT INTO MANUFACTURERS (M_NAME) VALUES (@MNAME) 
--НАЙДЕМ СУЩЕСТВУЮЩЕГО ПРОИЗВОДИТЕЛЯ 
 SELECT @MID = M_ID FROM MANUFACTURERS WHERE M_NAME = @MNAME 

/* 
SELECT Max(M_ID) 
FROM MANUFACTURERS M WITH (NOLOCK)   
left join [192.168.23.150].GAL208.dbo.KATMC K on M.M_NREC=K.CGROUPMC 
WHERE M_NAME like '%PFIZ%'  
*/ 
 
--ЕСЛИ НЕТ ТАКОГО АРТИКУЛА 
 IF NOT EXISTS (SELECT A_ID FROM ARTICLES WITH (NOLOCK) WHERE A_ID = @ARTCODE) 
 BEGIN 
--ЕСЛИ НЕТ ТАКОГО ТОВАРА => ВСТАВИТЬ 
    IF NOT EXISTS (SELECT P_NREC FROM PRODUCTS WITH (NOLOCK) WHERE P_NREC = @PNREC ) 
       INSERT INTO PRODUCTS (P_PACK , P_NAME , P_UNU , P_TAX , P_NREC , M_ID, P_MIN, P_MAX, P_REMMC , P_KOEF , P_OKDP , P_TNVED ) 
       VALUES (CAST (ROUND(1 /@PACK,1) AS INT ), @PNAME , @PUNU , (CASE WHEN @PTAX='1' then 'A' else NULL end) , @PNREC , @MID, @MIN, @MAX, @REMMC , @KOEF , @OKDP , @TNVED ) 
    ELSE 
--ИНАЧЕ ОБНОВИМ ТОВАР 
       UPDATE PRODUCTS SET 
         P_PACK	= CAST( ROUND(1/@PACK,1) AS INT), 
         P_NAME = @PNAME, 
         P_UNU  = @PUNU, 
         P_TAX  = (CASE WHEN @PTAX='1' then 'A' else NULL end), 
         M_ID   = @MID , 
         P_MIN	= @MIN, 
         P_MAX	= @MAX, 
         P_REMMC= @REMMC, 
         P_KOEF = @KOEF, 
         P_TNVED= @TNVED, 
         P_OKDP = @OKDP 
       WHERE P_NREC = @PNREC  
         AND (ISNULL(P_PACK, 0)<> ISNULL( CAST(ROUND(1 /@PACK,1) AS INT ),0 )  
         OR  ISNULL (P_NAME ,'' )<>ISNULL (@PNAME ,'' )  
         OR  ISNULL (P_UNU, '')<> ISNULL( @PUNU, '')  
         OR  ISNULL (P_TAX, '')<> ISNULL( @PTAX, '')  
         OR  ISNULL (M_ID, 0)<> ISNULL( @MID,0 )  
         OR  ISNULL (P_MIN, 0)<> ISNULL( @MIN,0 )  
         OR  ISNULL (P_MAX, 0)<> ISNULL( @MAX,0 )  
         OR  ISNULL (P_REMMC ,'' )<>ISNULL (@REMMC ,'' )  
         OR  ISNULL (P_OKDP ,'' )<>ISNULL (@OKDP ,'' )  
         OR  ISNULL (P_TNVED ,'' )<>ISNULL (@TNVED ,'' ) 
         OR  ISNULL (P_KOEF ,0 )<>ISNULL (@KOEF ,0 )) 
--НАЙДЕМ СУЩЕСТВУЮЩИЙ ТОВАР 
    SELECT @PID = P_ID FROM PRODUCTS WITH (NOLOCK) WHERE P_NREC = @PNREC    
--НАЙДЕМ ДЕЛИМОСТЬ ИЗ PRODUCTS (ТА, КОТОРАЯ ПЕРЕДАЕТСЯ ИЗ ТАБЛИЦЫ ARTICLES, МАЛО ЗНАКОВ ПОСЛЕ ЗАПЯТОЙ) 
    SELECT @PROD_PACK = P_PACK FROM PRODUCTS WITH (NOLOCK) WHERE P_NREC = @PNREC        
--ВСТАВИМ АРТИКУЛ 
    INSERT INTO ARTICLES (A_ID ,P_ID, P_PRICE, P_NREC) 
    VALUES (@ARTCODE , @PID, ROUND(@PRICE*@PROD_PACK,5), @PNREC) 

/*--ВСТАВИМ АРТИКУЛ по-старому2 
    INSERT INTO ARTICLES (A_ID ,P_ID, P_PRICE, P_NREC) 
    VALUES (@ARTCODE , @PID, ROUND(@PRICE/ @PACK,5), @PNREC) 
*/ 

/*--ВСТАВИМ АРТИКУЛ по-старому 
    INSERT INTO ARTICLES (A_ID ,P_ID, P_PRICE, P_NREC) 
    VALUES (@ARTCODE , @PID, @PRICE/ @PACK, @PNREC) 
*/     

--для теста 
--INSERT INTO ARTICLES_TEMP (A_ID ,P_ID, P_PRICE, P_PRICE_NEW, P_NREC, P_PACK, P_PRICE_BEGIN, AT_DT, AT_TYPE) 
    --VALUES (@ARTCODE , @PID, @PRICE/ @PACK, ROUND(@PRICE/ @PACK,5), @PNREC, @PACK, @PRICE, GETDATE(),'INS') 
    INSERT INTO ARTICLES_TEMP (A_ID ,P_ID, P_PRICE, P_PRICE_NEW, P_NREC, P_PACK, P_PRICE_BEGIN, AT_DT, AT_TYPE) 
    VALUES (@ARTCODE , @PID, @PRICE/ @PACK, ROUND(@PRICE*@PROD_PACK,5), @PNREC, @PACK, @PRICE, GETDATE(),'INS') 
 END 
  ELSE 
 BEGIN 
--ВОЗЬМЕМ СУЩЕСТВУЮЩИЙ ТОВАР 
    SELECT @PID = P_ID FROM ARTICLES WITH (NOLOCK) WHERE A_ID = @ARTCODE 

--НАЙДЕМ ДЕЛИМОСТЬ ИЗ PRODUCTS (ТА, КОТОРАЯ ПЕРЕДАЕТСЯ ИЗ ТАБЛИЦЫ ARTICLES, МАЛО ЗНАКОВ ПОСЛЕ ЗАПЯТОЙ) 
    SELECT @PROD_PACK = P_PACK FROM PRODUCTS WITH (NOLOCK) WHERE P_NREC = @PNREC        
     
--ОБНОВИМ ЦЕНУ ПО ТОВАРУ 

    UPDATE ARTICLES   
    SET P_PRICE = ROUND(@PRICE*@PROD_PACK,5) 
    WHERE A_ID = @ARTCODE 

/*--ОБНОВИМ ЦЕНУ ПО ТОВАРУ по-старому 
    UPDATE ARTICLES   
    SET P_PRICE = @PRICE /@PACK 
    WHERE A_ID = @ARTCODE 
*/   
  --для теста 
--INSERT INTO ARTICLES_TEMP (A_ID ,P_ID, P_PRICE, P_PRICE_NEW, P_NREC, P_PACK, P_PRICE_BEGIN, AT_DT, AT_TYPE) 
    --VALUES (@ARTCODE , @PID, @PRICE/ @PACK, ROUND(@PRICE/ @PACK,5), @PNREC, @PACK, @PRICE, GETDATE(),'UPD') 

    INSERT INTO ARTICLES_TEMP (A_ID ,P_ID, P_PRICE, P_PRICE_NEW, P_NREC, P_PACK, P_PRICE_BEGIN, AT_DT, AT_TYPE) 
    VALUES (@ARTCODE , @PID, @PRICE/ @PACK, ROUND(@PRICE*@PROD_PACK,5), @PNREC, @PACK, @PRICE, GETDATE(),'UPD') 

    UPDATE PRODUCTS  
    SET P_NAME=@PNAME, 
		P_PACK = CAST( ROUND(1/@PACK,1) AS INT), 
		P_TAX = (CASE WHEN @PTAX='1' then 'A' else NULL end) 
    WHERE P_ID=@PID 
 END 
--ВСТАВИМ В ЖУРНАЛ 
 INSERT INTO JOURNAL ( A_ID,     J_QTY,       J_QTYU ,       J_TYPE ) 
 VALUES (              @ARTCODE, @QTYU*1000 , @QTYU *@PACK,  1) 

COMMIT TRAN 

*/


 
