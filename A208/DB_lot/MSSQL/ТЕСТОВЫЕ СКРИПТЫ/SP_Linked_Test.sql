USE [AA208]
GO
/****** Object:  StoredProcedure [dbo].[S$LINKED_TEST]    Script Date: 02.02.2024 10:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER PROCEDURE [dbo].[S$LINKED_TEST]( 
 @Param  VARCHAR(30) 
 ) AS    
BEGIN
--DECLARE @Param  VARCHAR(30) = 'test 12232'
 SET XACT_ABORT ON
--SET XACT_ABORT OFF
DECLARE @sqlCommand NVARCHAR(MAX)
DECLARE @Result int
SET @sqlCommand = N'
BEGIN TRY
	BEGIN TRANSACTION
	INSERT INTO [SQLBOOCK].[new_gal].[dbo].MANUFACTURERS (M_NAME) VALUES (@Param) 
	SET @Result = 0
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	SET @Result = 1
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
'
DECLARE @RC INT
EXECUTE @RC = sp_executesql @sqlCommand, N'@Param VARCHAR(30), @Result int OUTPUT', @Param, @Result OUTPUT

SELECT @RC AS rc, @Result ResultTran

END