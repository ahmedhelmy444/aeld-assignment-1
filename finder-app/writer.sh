#!/bin/bash

#check on input params

if [ "$#" -ne 2 ]; then
    echo "expected 2 inputs params, however $# params found"
    exit 1
else 
    writefile=$1
    writestr=$2

    #extract directory of the path
    dirpath=$(dirname "$writefile")    
    #try to create the file
    mkdir -p "$dirpath"
    
    if [ "$?" -ne 0 ]; then
        echo "failed creating file $writefile" 
	exit 1
    else	
	echo "$writestr" > "$writefile"
   	exit 0 
    fi
fi
