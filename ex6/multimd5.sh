#!/bin/bash


usage="Usage: `basename ${0}` <DIR> "

if [[ ${#} != 1 ]];
then
        echo $usage
        exit 1
fi

if [[ ! -d $1 ]];
then
        echo $usage
        exit 1
fi


find ${1} -type f | xargs -n 4 -P 0 md5sum | awk '{print NR","$2","$1}'
