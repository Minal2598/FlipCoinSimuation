echo "Welcome to Flip Coin Simulation"

i=1
H=0
T=0

while [ $i -le 21 ]
do
Result=$((RANDOM%2))
if [ ${Result} -eq 0 ]
then
    echo Heads
    H=$(($H+1))
elif [ ${Result} -eq 1 ]
then
    echo Tails
    T=$(($T+1))
fi
i=$(($i+1))
X=$(($T-$H))
Y=$(($H-$T))
done

echo $X
echo $Y

if [ $X -eq 2 ]
then
        echo "Tail wins by 2 points $T"
elif [ $Y -eq 2 ]
then
        echo "Head wins by 2 points $H"
fi
