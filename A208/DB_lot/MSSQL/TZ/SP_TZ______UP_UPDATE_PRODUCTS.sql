USE [new_gal]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[UP_UPDATE_PRODUCTS](
	@P_NREC		bigint,
	@P_NAME		nvarchar(255),
	@P_MIN		float,
	@P_MAX		float,
    @P_REMMC	varchar(25),
	@P_TNVED	varchar(50),
	@P_VOLUME	FLOAT,
	@P_SIZEX	FLOAT,
	@P_SIZEY	float,
	@P_SIZEZ	INT,
	@P_ATC		nvarchar(50),
	@P_SKLAD	INT,
	@P_OKDP		nvarchar(50),
	@P_MAXRN	float,
	@P_ATC_BASE	nvarchar(50),
	@P_BUDGET	BIT,
	@P_OBOZN	nvarchar(25),
	@P_VOL_16	nvarchar(25),
	@P_ADR_AP	nvarchar(25),
	@P_VOL_AP	nvarchar(25)
)
AS 
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION 
		UPDATE [dbo].PRODUCTS
		SET 
			P_NAME		= @P_NAME,
			P_MIN		= @P_MIN,
			P_MAX		= @P_MAX,
			P_REMMC		= @P_REMMC,
			P_TNVED		= @P_TNVED,
			P_VOLUME	= @P_VOLUME,				--K.F$VOLUME (перенос в другое поле)
			P_SIZEX		= @P_SIZEX,					--K.F$SIZEX (перенос в другое поле)
			P_SIZEY		= @P_SIZEY,					--K.F$SIZEY (перенос в другое поле)
			P_SIZEZ		= @P_SIZEZ,					--K.F$SIZEZ (перенос в другое поле)
			P_ATC		= @P_ATC,					--K.F$BARKOD2 (перенос в другое поле)
			P_SKLAD		= @P_SKLAD,					--K.F$MASSA (перенос в другое поле)
			P_OKDP		= @P_OKDP,
			P_MAXRN		= @P_MAXRN,					--K.F$MAXRN (перенос в другое поле)
			P_ATC_BASE	= @P_ATC_BASE,
			P_BUDGET	= @P_BUDGET,
			P_OBOZN		= @P_OBOZN,
			P_VOL_16	= @P_VOL_16,
			P_ADR_AP	= @P_ADR_AP,
			P_VOL_AP	= @P_VOL_AP
		WHERE [dbo].PRODUCTS.P_NREC = @P_NREC

		IF @@TRANCOUNT > 0 COMMIT TRANSACTION 
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	END CATCH
END