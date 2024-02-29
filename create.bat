@echo off
echo "Hola Mundo">.\mytext.txt
echo Opening created file 'mytext.txt'
echo\ & echo\ & echo\
TYPE mytext.txt
echo\ & echo\ & echo\
pause
cls
mkdir backup
echo Created 'backup' directory.
echo\ & echo\ & echo\
pause
cls
copy mytext.txt .\backup
echo File copied into 'backup' directory.
echo\ & echo\ & echo\
pause
cls
echo Showing contents of 'backup' directory.
echo\ & echo\ & echo\
dir .\backup
echo\ & echo\ & echo\
pause
cls
echo Deleting file 'mytext.txt' from backup directory.
del /P .\backup\mytext.txt
echo\
echo File deleted.
echo\ & echo\ & echo\
pause
cls
echo Removing directory 'backup'.
rd backup
echo\
echo Removed 'backup' directory.
echo\ & echo\ & echo\
pause