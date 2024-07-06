USE [new_gal]
GO
/****** Object:  StoredProcedure [dbo].[UP_INSERT_ARTICLE]    Script Date: 02.02.2024 23:55:42 ******/
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
	@ARTCODE	BIGINT ,
	@MNAME	NVARCHAR (255 ),
	@PACK	FLOAT ,
	@PNAME	NVARCHAR (255 ),
	@PUNU	NVARCHAR (8 ),
	@PTAX	NVARCHAR (2 ),
	@PNREC	BIGINT ,
	@MIN	INT ,
	@MAX	INT ,
	@REMMC	NVARCHAR (255 ),
	@PRICE	FLOAT ,
	@QTY	INT ,
	@QTYU	FLOAT ,
	@KOEF	FLOAT = 1 ,
	@OKDP	NVARCHAR (50 ),
	@TNVED	NVARCHAR (50 )
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
 INSERT INTO JOURNAL ( A_ID, J_QTY, J_QTYU , J_TYPE )
 VALUES ( @ARTCODE, @QTYU*1000 , @QTYU *@PACK, 1)

COMMIT TRAN
