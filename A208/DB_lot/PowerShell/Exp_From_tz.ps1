$FolderObmen = "D:\!-=obmen=-!\HALL1\"
$TZ_Name = "HALL1"
$NeedRemoveFiles = $true
$DateProd = Get-Date -Format "yyyyMMdd_HHmmss"
$file_json = $FolderObmen + 'CASH_PROT_' + $TZ_Name + '_' + $DateProd +'.json'

#$InstanceName = "SQL-XXID"
#$DataBaseName = "new"
#$conStrinGal  = "Server=$InstanceName ;Database=$DataBaseName; Integrated Security=SSPI;"

$InstanceName = "SQLBOOCK"
$DataBaseName = "new_gal"
$conStrinGal  = "Server=$InstanceName; Database=$DataBaseName; User=sa; Password=123456;"

function Invoke-DatabaseQuery {

        [CmdletBinding()]
        param (
                [string]$connectionString,
                [string]$query,
                [switch]$isSQLServer
        )
        if ($isSQLServer) {
                Write-Verbose 'in SQL Server mode'
                $connection = New-Object -TypeName System.Data.SqlClient.SqlConnection
        } else {
                Write-Verbose 'in OleDB mode'
                $connection = New-Object -TypeName System.Data.OleDb.OleDbConnection
        }
        $connection.ConnectionString = $connectionString
        $command = $connection.CreateCommand()
        $command.CommandText = $query
        $connection.Open()
        #$command.ExecuteNonQuery()
        #$connection.close()
        $result = $command.ExecuteReader()
        $table = new-object "System.Data.DataTable"
        $table.Load($result)

        #$table | select $table.Columns.ColumnName | ConvertTo-Json | Out-File $file_json

        [pscustomobject] @{ 
           CASH_PROT = @($table | select $table.Columns.ColumnName)
        } | ConvertTo-Json -Compress | Out-File $file_json  -Encoding oem  

}

$TmpStrQuery = '
  SET DATEFORMAT dmy
  DECLARE @TZ_NAME VARCHAR(255) = '''+$TZ_Name+''' 
  IF OBJECT_ID(''tempdb..##tmpCASH_PROT'') IS NOT NULL drop table ##tmpCASH_PROT
  IF OBJECT_ID(''tempdb..#TERMS'') IS NOT NULL drop table #TERMS
  
  CREATE Table ##tmpCASH_PROT(
    OPER     INT,
    ARTICUL  VARCHAR(30),
    [COUNT]  FLOAT,
    PRICE    FLOAT,
    H_NO     INT,
    H_DATE   nVarchar(100),
    H_RET    INT,
    T_ID     INT,
    Z_ID     INT,
    U_ID     INT,
    C_ID     INT,
    H_Items  INT,
    H_TYPE   INT,
    H_ID     INT,
    TZ_NAME  VARCHAR(255)
  )


  DECLARE @DT DATETIME = getDate() -- DATEADD(DAY,-1,getDate())
  DECLARE @T_ID INTEGER = 0
-- Отбросить время если оно есть
  SET @DT = CONVERT(NVARCHAR,@DT,112)
  DECLARE @DT_END DATETIME = DATEADD(DAY,1,@DT)


-- LOG START PROCEDURE
  DECLARE @RC int
  EXEC @RC = [dbo].[LOG_SP_START] ''[CASH_PROT_ADD]''
-- Реестр терминалов
  CREATE TABLE #TERMS (TERM INT)
  IF (@T_ID = 0)	-- по всем терминалам
    INSERT #TERMS 
    SELECT DISTINCT A.[T_ID]
    FROM [dbo].CHECKS A WITH (NOLOCK)
    WHERE
        A.[H_DATE] BETWEEN @DT AND @DT_END 
    ELSE -- по одному, заданному параметром, терминалу
    INSERT #TERMS 
    SELECT @T_ID
  INSERT INTO ##tmpCASH_PROT
  SELECT 
    [OPER]		= CASE WHEN A.[H_TYPE]>0 THEN A.[H_TYPE] ELSE 99 END,
    [ARTICUL]	= B.[A_ID],
    [COUNT]		= B.[I_QTY]/1000.0,
    [PRICE]		= CAST(	
       (		ROUND(CAST(B.I_PRICE AS MONEY)/100.0,2) * CAST(B.I_QTY AS MONEY)/1000.0
	         -	ROUND(CAST(B.I_PRICE AS MONEY)/100.0	* CAST(B.I_QTY AS MONEY)/1000.0 * (CAST(B.I_DISCOUNT AS MONEY)/10000.0),2)
       )/CAST(B.I_QTY/1000.0 AS MONEY)*(A.[R_COURSE]*1.0) AS MONEY),
    [H_NO]      = A.H_NO,
    [H_DATE]    = CONVERT(nvarchar,A.H_DATE,126),
    [H_RET]     = A.H_RET,
    [T_ID]      = A.T_ID,
    [Z_ID]      = A.Z_ID,
    [U_ID]      = A.U_ID,
    [C_ID]      = A.C_ID,
    [H_Items]   = A.H_Items,
    [H_TYPE]    = A.H_TYPE,
    [H_ID]      = B.[H_ID],
    [TZ_NAME]   = @TZ_NAME
    FROM [dbo].CHECKS A WITH (NOLOCK)
    INNER JOIN [dbo].CHECK_ITEMS B WITH (NOLOCK) ON A.[H_ID] = B.[H_ID] 
    WHERE
            A.[H_DATE] BETWEEN @DT AND @DT_END 
        AND A.[T_ID] IN (SELECT TERM FROM #TERMS)	-- По заданным терминалам
--  LOG END PROCEDURE
    EXEC [dbo].[LOG_SP_END] @RC

    SELECT * FROM ##tmpCASH_PROT
    IF OBJECT_ID(''tempdb..##tmpCASH_PROT'') IS NOT NULL drop table ##tmpCASH_PROT
' #end script 
$tmpVar = Invoke-DatabaseQuery -connectionString $conStrinGal -query $TmpStrQuery -isSQLServer
