if [ $# -ne 3 ] || [ `echo $2 | egrep "^[[:digit:]].*m$|^[[:digit:]].*d$|^[[:digit:]].*y$" | wc -l` -eq 0 ]
then
    echo "USAGE  : $0 <principle> <time in years/months/days> <rate of interest>"
    echo "EXAMPLE: $0 50000 1y 12.15"
    echo "EXAMPLE: $0 50000 10m 12.15"
    echo "EXAMPLE: $0 50000 500d 12.15"
    exit 1
fi

p=$1
if [ `echo $2 | grep "m" | wc -l` -eq 1 ]
then
    t=`echo $2 | sed 's/m//g'`
    t=`echo "$t / 12" | bc -l`
elif [ `echo $2 | grep "y" | wc -l` -eq 1 ]
then
    t=`echo $2 | sed 's/y//g'`
else 
    t=`echo $2 | sed 's/d//g'`
    t=`echo "$t / 365" | bc -l`
fi
r=$3
i=`echo "$p * $t * $r / 100" | bc -l`
echo $i
