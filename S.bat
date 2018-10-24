@echo off

echo %time%
set query="%~f1.sql"
set out="%~f2.sql"



sqlcmd -Usa -Pjuana -i%query% -o%out% -b



echo %time%
if errorlevel = 1 (type %out%)
