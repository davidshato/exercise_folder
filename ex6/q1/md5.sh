#!/bin/bash



#description:
# creating a CSV file with follwoing fields:
# number, file path, the file path hashed in md5


usage="Usage: `basename ${0}` <DIR> "

dir_name=$1

if [[ ${#} != 1 ]];
then
	echo $usage
	exit 1
fi

if [[ ! -d $dir_name ]];
then
	echo $usage
	exit 1
fi


#using the find to return a recursive tree of all the files
# using xargs to call md5sum command on each file path that find command returns.
# printing the result using awk

find ${dir_name} -type f | xargs md5sum | awk '{print NR","$2","$1}'



