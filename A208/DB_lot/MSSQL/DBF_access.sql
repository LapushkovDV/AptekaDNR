USE [master]
GO

EXEC sp_configure 'Show Advanced Options', 1
RECONFIGURE
GO

EXEC sp_configure 'Ad Hoc Distributed Queries', 1
RECONFIGURE
GO

EXEC sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'AllowInProcess', 0
GO
/*
EXEC sp_MSSet_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'AllowInProcess', 0
GO

EXEC sp_MSSet_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'DynamicParameters', 0
GO
*/