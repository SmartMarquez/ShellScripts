@echo off
:begin
cls
echo %cd%
echo\ & echo\
echo a. Imprimir en pantalla ''Hello World''
echo b. Listar el contenido del directorio actual.
echo c. Crear un subdirectorio (folder) llamado Test.
echo d. Cambiarse al subdirectorio Test.
echo e. Listar el contenido del subdirectorio Test.
echo x. Salir
set /p choice= Ingresa la letra de la accio'n a realizar: 

if %choice% EQU a (
	cls
	echo\ & echo\ & echo\
	echo Hello World.
	echo\ & echo\ & echo\
	pause
	goto :begin
	) 
if %choice% EQU b ( 
	cls
	echo Mostrando contenido del directorio actual.
	echo\ & echo\ & echo\
	dir
	echo\ & echo\ & echo\
	pause
	goto :begin
	)
if %choice% EQU c ( 
	echo Creando el directorio ''Test''.
	echo\ & echo\ & echo\
	mkdir Test
	echo\ & echo\ & echo\
	pause
	goto :begin
	)
if %choice% EQU d ( 
	echo Cambiando de directorio actual a ''Test''.
	echo\ & echo\ & echo\
	cd Test
	echo Directorio en ejecucion cambiado a ''Test''
	echo\ & echo\ & echo\
	pause
	goto :begin
	)
if %choice% EQU e ( 
	cls
	echo Mostrando contenido del directorio ''Test''.
	echo\ & echo\ & echo\
	dir ".\Test"
	echo\ & echo\ & echo\
	pause
	goto :begin
	)
if %choice% EQU x ( 
	goto :end
	)	else (
	echo Opcion Invalida
	goto :begin
	)

:end
echo\ & echo\ & echo\
echo Programa terminado.
echo\ & echo\ & echo\& echo\ & echo\ & echo\
pause
