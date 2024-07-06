USE [msdb]
GO

/****** Object:  Job [GET_RESULTPROD_FROM_TORGZAL (EVERY DAY IN 04:00)]    Script Date: 04.02.2024 21:19:59 ******/
BEGIN TRANSACTION
DECLARE @ReturnCode INT
SELECT @ReturnCode = 0
/****** Object:  JobCategory [[Uncategorized (Local)]]    Script Date: 04.02.2024 21:19:59 ******/
IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
BEGIN
EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback

END

DECLARE @jobId BINARY(16)
EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'GET_RESULTPROD_FROM_TORGZAL (EVERY DAY IN 04:00)', 
		@enabled=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=0, 
		@notify_level_netsend=0, 
		@notify_level_page=0, 
		@delete_level=0, 
		@description=N'Получение данных о продажах (возвратах)', 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'SQL-XXID\User', @job_id = @jobId OUTPUT
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
/****** Object:  Step [Step_1_Start_GET_RESULTPROD_FROM_TORGZAL]    Script Date: 04.02.2024 21:20:00 ******/
EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Step_1_Start_GET_RESULTPROD_FROM_TORGZAL', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'
DECLARE @DATE BINARY(8)
-- для сегодняшней даты 
SET @DATE = [dbo].[ToAtlDate]( GETDATE() )
--для вчерашней даты
-- SET @DATE = [dbo].[ToAtlDate]( DATEADD(DAY,-1,GETDATE()) )
EXEC [dbo].[S$GET_RESULTPROD_FROM_TORGZAL]
@DATEPROD     = @DATE,
@ISOFFLINE = 0', 
		@database_name=N'AA208', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
/****** Object:  Step [Step_2_Create_Sales_Invoice]    Script Date: 04.02.2024 21:20:00 ******/
EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Step_2_Create_Sales_Invoice', 
		@step_id=2, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'CmdExec', 
		@command=N'rem Start C:\GalaktikaCorp\GAL91\EXE\galnet.exe /GALAXY.NOWRUN:L_KASSA::_Make_Nakl_AUTO(%DATE%) /c:C:\GalaktikaCorp\GAL91\Start\exch.cfg  /u:supervisor /p:123456
rem exit', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 1
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'GET_RESULTPROD_FROM_TORGZAL', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=0, 
		@active_start_date=20240112, 
		@active_end_date=99991231, 
		@active_start_time=40000, 
		@active_end_time=235959, 
		@schedule_uid=N'e52732ae-450e-484f-9f8e-56b7fd1f2141'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
COMMIT TRANSACTION
GOTO EndSave
QuitWithRollback:
    IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
EndSave:
GO


