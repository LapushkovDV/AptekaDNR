USE [new]
SET DATEFORMAT dmy
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[CASH_PROT_TO_JSON]
		@DATEPROD = N'30-01-2024',
		@OUT_PATH = N'd:\'

SELECT	'Return Value' = @return_value

GO
