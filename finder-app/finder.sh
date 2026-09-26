#!/bin/bash

#check on input params nimber

if [ "$#" != 2 ]; then
	echo "expected 2 inputs paramas, however $# params found"
	exit 1
else 
	filesdir=$1
	searchstr=$2
	#check on filesdir must represent a directory in file system
	if [ ! -d "$filesdir" ] ; then
		echo "${filesdir} isn't an existing directory"
		exit 1
	else
	
                check_dir_count=$(find "$filesdir" -type f | wc -l)
		check_str_count=$(grep -r "$searchstr" "$filesdir" | wc -l)
	        echo "The number of files are ${check_dir_count} and the number of matching lines are ${check_str_count}"  
		exit 0	
	fi	
fi




