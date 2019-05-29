#!/bin/bash



# description: renaming a file by changing the extenion of the file



USEGE(){
	echo "`basename $0`: <Format> <Path>"
	exit 1
}

if [[ $# != 2 ]];
then
	USEGE
fi

format=$1
path=$2

if [[ ! -d $path ]];
then
	USEGE
fi


# iterating on all the files in the path and checking 
# if the the file contains the format given by the scripts arguments

for file in `ls ${path}`
do
	if [[ $file =~ .${format}$ ]] || [[ $file =~ .sh$ ]] || [[ $file =~ .py$ ]];
	then
		continue
	else 
		echo "${file} name changed to ${file}.${format}"
		mv ${file} ${file}.${format}
       fi	       

done
