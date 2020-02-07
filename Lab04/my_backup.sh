#!/bin/bash
# Backs up a single directory
#Joshua Tellier 2/7/2020

if [ $# != 1 ]
then
    echo Requires a single argument which is the directory to be backed up
    exit
fi
if [ ! -d ~/ABE65100/$1 ]
then
    echo Given argument is not a directory or directory does not exist
    exit
fi
date=`date +%F`

if [ -d ~/ABE65100/backups/$1_$date ]
then
    echo This project has already been backed up today, overwrite?
    read answer
    if [ $answer != 'y' ]
    then
        exit
    fi
else
    mkdir -p ~/ABE65100/backups/$1_$date
fi
cp -R ~/ABE65100/$1 ~/ABE65100/backups/$1_$date
echo Backup of $1 completed
