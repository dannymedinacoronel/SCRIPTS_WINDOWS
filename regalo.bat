@echo off
:: variables
set drive=C:\Users\Asus\Documents\TOPCONFIDENTIAL
set folder=%date:~7,2%
set backupcmd=xcopy /s /c /d /e /h /i /r /k /y
set dirname="%date:~0,2%-%date:~3,2%-%date:~6,6%_%time:~0,2%-%time:~3,2%"

echo ### Creando copia de seguridad...

mkdir "%drive%\%dirname%" 

%backupcmd% "\\192.168.1.10\serverdemcor\dannymedinacoronel\PRUEBAS" "%drive%\%dirname%"

echo Backup Complete!
@pause

