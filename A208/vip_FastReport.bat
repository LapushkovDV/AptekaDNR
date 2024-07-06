rem del fr.res
del *.tmp
del tmp\*.tmp
del *.log
@echo off

set ApiExePath=D:\Galaxy\GalSrv\ATL36\Gal\exe\
set SRCPath=D:\Galaxy\GalSrv\ATL36\Gal\Frm\SRC\

set MainVIP=D:\Galaxy\GalSrv\ATL36\Gal\Frm\Vip_partner\
set ApiOutFile=D:\Galaxy\GalSrv\ATL36\Gal\Frm\Vip_partner\A208.res


%ApiExePath%frres.exe /to /r:%ApiOutFile% /source:FR\
rem %ApiExePath%additem.exe  %ApiOutFile% @BMP\BMP.txt
rem %ApiExePath%vip.exe vip.prj /b /linc=01.01.2016

del *.crf

pause