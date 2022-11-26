#!/bin/bash -x

m1=0
m2=0
m3=0
m4=0
m5=0
m6=0
m7=0
m8=0
m9=0
m10=0
m11=0
m12=0
i=1
declare -A emp
declare -A finalPrint

while (($i<=50))
do
	randomCheck=$((RANDOM%12+1))
	emp[$i]=$randomCheck
	((i++))
	case $randomCheck in
				 1)
				  ((m1++))
				;;
				 2)
                                  ((m2++))
                                ;;
                                 3)
                                  ((m3++))
                                ;;
                                 4)
                                  ((m4++))
                                ;;
                                 5)
                                  ((m5++))
                                ;;
                                 6)
                                  ((m6++))
                                ;;
                                 7)
                                  ((m7++))
                                ;;
                                 8)
                                  ((m8++))
                                ;;
                                 9)
                                  ((m9++))
                                ;;
                                 10)
                                  ((m10++))
                                ;;
                                 11)
                                  ((m11++))
                                ;;
				 *)
				  ((m12++))
				;;
	esac
done

for ((j=1; j<=12; j++))
do
	finalPrint[$j]=$((m$j))
done

echo "Total Individual having Birthday insame Months are: ${finalPrint[@]}"
