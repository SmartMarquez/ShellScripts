#!/bin/bash
while [ "$choice" != "x" ];
do
	clear	
	pwd
	echo 
	echo
	echo a. Imprimir en pantalla ''Hello World''
	echo b. Listar el contenido del directorio actual.
	echo c. Crear un subdirectorio folder llamado Test.
	echo d. Cambiarse al subdirectorio Test.
	echo e. Listar el contenido del subdirectorio Test.
	echo x. Salir
	read -p 'Ingresa la letra de la accion a realizar: ' choice
	if [ "$choice" == "a" ];
	then
		clear
		echo "Hello World"
		echo; echo; echo
		read -n1 -r -p "Press any key to continue..." key
	elif [ "$choice" == "b" ];
	then 
		clear
		echo Mostrando contenido del directorio actual.
		echo; echo; echo
		ls
		echo; echo; echo
		read -n1 -r -p "Press any key to continue..." key
	elif [ "$choice" == "c" ]
	then 
		clear
		echo Creando el directorio ''Test''.
		echo; echo; echo
		mkdir Test
		echo; echo; echo
		read -n1 -r -p "Press any key to continue..." key
	elif [ "$choice" == "d" ];
	then 
		clear
		echo Cambiando de directorio actual a ''Test''.
		echo; echo; echo
		cd Test
		echo Directorio en ejecucion cambiado a ''Test''
		echo; echo; echo
		read -n1 -r -p "Press any key to continue..." key
	elif [ "$choice" == "e" ];
	then
		clear
		echo Mostrando contenido del directorio Test.
		echo; echo; echo
		ls ./Test
		echo; echo; echo
		read -n1 -r -p "Press any key to continue..." key
	elif [ "$choice" == "x" ];
	then
echo; echo; echo
	else
		echo Opcion Invalida
	fi
done
echo
echo
echo
echo Programa terminado.
