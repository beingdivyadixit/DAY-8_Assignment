#!/bin/bash -x
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
declare -A diceNumber
diceNumber=()
while(($count1<10&& $count2<10 && $count3<10 && $count4<10 && $count5<10  && $count6<10))
do
DiceRole=$((RANDOM%6+1))
dice[$i]=$DiceRole
((i++))
if(($DiceRole==1))
then
count1=$(($count1+1))
elif(($DiceRole==2))
then
count2=$(($count2+1))
elif(($DiceRole==3))
then
count3=$(($count3+1))
elif(($DiceRole==4))
then
count4=$(($count4+1))
elif(($DiceRole==5))
then
count5=$(($count5+1))
else
count6=$(($count6+1))
fi
done
echo "totale one :" $count1
echo "totale two :" $count2
echo "totale three :" $count3
echo "totale four :" $count4
echo "totale five:" $count5
echo "totale six:" $count6
arr=($count1,$count2,$count3,$count4,$count5,$count6)
echo ${arr[@]}
echo "All the dice numbers are: ${dice[@]}"
diceNumber=$arr
echo ${diceNumber[@]}
if(($count1>$count2 & $count1>$count3 & $count1>$count4 & $count1>$count5 & $count1>$count6))
then
echo "One comes maximum times"
elif(($count2>$count3 & $count2>$count4 & $count2>$count5 & $count2>$count6 ))
then
echo "Two comes maximum times"
elif(($count3>$count4 & $count3>$count5 & $count3>$count6 ))
then
echo "Three comes maximum times"
elif(($count4>$count5 & $count4>$count6 ))
then
echo "four comes maximum times"
elif(($count5>$count6 ))
then
echo "five comes maximum times"
else
echo "six comes maximum times"
fi
