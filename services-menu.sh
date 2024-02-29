#!/bin/bash
while [ "$choice" != "x" ];
do
	clear	
	pwd
	echo; echo
	echo a. Get content of a Directory by absolute route.
	echo b. Create a single line text file.
	echo c. Compare two different text files using the cmp command.
	echo d. Show the use of the AWK command.
	echo e. Show the use of the Grep command.
	echo x. Exit.
	read -p 'Ingresa la letra de la accion a realizar: ' choice
	if [ "$choice" == "a" ];
	then
		clear
		echo Get content of a Directory by absolute route.
		echo; echo;
		read -p "Enter absolute route of the directory to explore: " directory
		ls /./$directory
		echo; echo; echo
		read -n1 -r -p "Press any key to continue..." key
	elif [ "$choice" == "b" ];
	then 
		clear
		echo Create a single line text file.
		echo; echo; echo
		read -p "Enter the name of the new file to be created: " fname
		touch $fname
		echo; 
		echo "Enter the new line of text to be stored on the newly created file: " 
		read -p "" ftext
		echo $ftext > $fname
		echo; echo; echo
		read -n1 -r -p "Press any key to continue..." key
	elif [ "$choice" == "c" ]
	then 
		clear
		echo Compare two different text files using the cmp command.
		echo;
		read -p "Enter the name of the first text file to compare: " file1
		read -p "Enter the name of the second text file to compare: " file2
		echo; echo
		cmp $file1 $file2
		echo; echo; echo
		read -n1 -r -p "Press any key to continue..." key
	elif [ "$choice" == "d" ];
	then 
		clear
		echo Showing the use of the AWK command.
		echo;
		read -p "Enter the name of the text file to use for this test: " file1
		echo; echo
		echo Printing the file to screen with row number column:
		echo;
		awk  '{print NR, $0}' $file1
		echo; echo; echo
		read -n1 -r -p "Press any key to continue..." key
	elif [ "$choice" == "e" ];
	then
		clear
		echo Showing the use of the Grep command.
		echo;
		read -p "Enter the name of the text file to use for this test: " file1
		read -p "Enter the name of another text file to use for this test: " file2
		read -p "Enter the word to highlight for this test: " word1
		echo; echo
		echo Printing te file to screen with word highlight:
		echo;
		grep -w $word1 $file1 $file2
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
