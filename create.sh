#!/bin/bash

echo "Hello World!" > helloworld.txt
echo; echo; echo
echo Displaying contents of helloworld.txt
echo;
cat helloworld.txt
echo;
echo Creating Backup directory
mkdir Backup
echo;
echo Showing current contents of Working Directory.
echo;
ls
echo;
echo Moving helloworld.txt into Backup directory.
mv helloworld.txt ./Backup
echo;
echo Showing contents of Backup directory.
echo;
ls ./Backup
echo;
echo Deleting helloworld.txt file from backup directory
rm ./Backup/helloworld.txt
echo Showing contents of Backup directory.
echo;
ls ./Backup
echo;
echo Removing Backup directory.
rm -r Backup
echo;
echo Showing current contents of Working Directory.
echo;
ls
read -n1 -r -p "Press any key to continue..." key
