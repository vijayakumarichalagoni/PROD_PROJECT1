if [ $# -ne 1 ]
then
    echo "USAGE: $0 <number>"
    exit 1
fi
i=1
fact=1
while [ $i -le $1 ]
do
    fact=`echo "$fact * $i" | bc -l`
    i=`expr $i + 1`
done
echo $fact
