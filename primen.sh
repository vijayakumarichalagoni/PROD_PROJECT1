#! /bin/bash
if [ $# -ne 1 ]
then
    echo "Usage : $0 <number till prime numbers are to be displayed>"
    exit 1
fi

if [ $1 -lt 10 ]
then
    last=$1 
else
    last=9
fi

for i in `seq $1`
do
    p=1
    for j in `seq 2 $last` 
    do
        if [ `expr $i % $j` -eq 0 ] && [ $i -ne $j ]
        then
           p=0
           break 
        fi
    done
    if [ $p -eq 1 ]
    then
        echo $i
    fi
done
