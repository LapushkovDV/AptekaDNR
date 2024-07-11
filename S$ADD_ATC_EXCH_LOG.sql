USE [TST208]
GO
/****** Object:  StoredProcedure [dbo].[S$ADD_ATC_EXCH_LOG]    Script Date: 11.07.2024 9:01:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER PROCEDURE [dbo].[S$ADD_ATC_EXCH_LOG]( 
   @P_LOG_TYPE  INTEGER, 
   @P_PROCNAME  VARCHAR(255), 
   @P_DT_START  BINARY(8), 
   @P_STATUS  INTEGER
   ) AS    
BEGIN
  SET DATEFORMAT dmy
  IF OBJECT_ID('tempdb ..#xx$locks')IS NOT NULL drop table #xx$locks create table #xx$locks (TableNRec binary(8))

  INSERT INTO [dbo].[V$ATC_EXCH_LOG] 
         ( [F$LOG_TYPE],
	       [F$DT_START],
	       [F$DT_END],
	       [F$USERNAME],
	       [F$PROCNAME],
		   [F$STATUS]
		 )
  VALUES ( @P_LOG_TYPE,
           @P_DT_START, 
           [dbo].[ToAtlDateTime](GETDATE()), --время окончания 
		   SUSER_name(),
		   @P_PROCNAME,
           @P_STATUS
		   )
 END