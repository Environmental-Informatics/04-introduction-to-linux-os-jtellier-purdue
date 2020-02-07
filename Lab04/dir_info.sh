#!/bin/bash
# Gives summary info about a given directory
# Joshua Tellier 2/7/2020

filenum=`ls -1 $1 | wc -l`
ownership=`find $1 -printf '%u\n' | sort | uniq`
size=`du -sh $1`
echo Number of files or subdirectories within directory: $filenum
echo Names of all users who own files within directory: $ownership
echo Total size of directory: $size

