$FolderObmen = "D:\!-=obmen=-!\HALL1\"
$TZ_Name = "HALL1"
$NeedRemoveFiles = $true

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
        $command.ExecuteNonQuery()
        $connection.close()
}


function Invoke-ReadJSON {

  [CmdletBinding()]
  param (
          [string]$JSON_FilePath
        )

  $JSON_FilePath

  $json = Get-Content $JSON_FilePath | Out-String | ConvertFrom-Json
  ForEach ($arr in $json.$TZ_Name)
  {
    $LOC      = $arr.LOC
    $GALLOCAL = $arr.GALLOCAL
    $BARKOD   = $arr.BARKOD
    $PRICE    = $arr.PRICE
    $COUNT    = $arr.COUNT
    $NAM      = $arr.NAM
    $VES      = $arr.VES
    $ED       = $arr.ED
    $EDMSG    = $arr.EDMSG
    $DEP      = $arr.DEP
    $KOEF     = $arr.KOEF
    $SALE     = $arr.SALE
    $FPRICE   = $arr.FPRICE
    $GROUP    = $arr.GROUP
    $MIN      = $arr.MIN
    $MAX      = $arr.MAX
    $REMMC    = $arr.REMMC
    $NREC     = $arr.NREC
    $ZAKUP    = $arr.ZAKUP
    $PLANVOL  = $arr.PLANVOL
    $TNVED    = $arr.TNVED
    $OKDP     = $arr.OKDP

    $TmpStrQuery = '
    DECLARE @RC int
    EXEC @RC = [dbo].[UP_INSERT_ARTICLE]
         @ARTCODE	=	'+$LOC     +',
         @MNAME		=	'''+$GROUP   +''',
         @PACK		=	'+$KOEF    +',
         @PNAME		=	'''+$NAM     +''',
         @PUNU		=	'''+$ED      +''',
         @PTAX		=	'+$DEP     +',
         @PNREC		=	'+$GALLOCAL+',
         @MIN		=	'+$MIN     +',
         @MAX		=	'+$MAX     +',
         @REMMC		=	'''+$REMMC   +''',
         @PRICE		=	'+$PRICE   +',
         @QTY		=	0,
         @QTYU		=	'+$COUNT   +',
         @KOEF		=	'+$KOEF    +',
         @OKDP		=	'''+$OKDP    +''',
         @TNVED		=	'''+$TNVED +'''
    ' #end script 
    $tmpVar = Invoke-DatabaseQuery -connectionString $conStrinGal -query $TmpStrQuery -isSQLServer
  }
}

Get-ChildItem $FolderObmen *.json | ForEach-Object {
  $fullPath = $FolderObmen + $_.Name
  $tmpReadJSON = Invoke-ReadJSON -JSON_FilePath $fullPath
  if ($NeedRemoveFiles)
     {
       Remove-Item $tmpReadJSON
     }
}


