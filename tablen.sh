#! /bin/bash
n=$1
if [ $# -eq 0 ]
then
	echo "A shell script to print multiplication table."
	echo "Usage : $0 number"
	exit 1
fi

for i in {1..10} 
do
	echo "$n * $i = $(( $i * $n))"
done
