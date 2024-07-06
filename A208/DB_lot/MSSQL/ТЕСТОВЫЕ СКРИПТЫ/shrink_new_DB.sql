alter database new set recovery simple;
use new;
dbcc shrinkfile(2);
alter database new set recovery full;

--sp_changedbowner 'GALAXYDBOWNER'

