#!/bin/bash

echo "Day 10: Arithmetic Computation & Sorting"

#UC_01:Take three inputs

echo "Enter the number:"
read a

echo "Enter the number:"
read b

echo "Enter the number:"
read c

#UC_02: Compute a+b*c

x=$(((a+b)*c))
echo $x

#UC_03: Compute a*b+c

y=$((a*(b+c)))
echo $y

#UC_04: Compute c+a/b

z=$(((c+a)/b))
echo $z

#UC_05: Compute a%b+c

t=$((a%(b+c)))
echo $u

#UC_06:Store result in Dictionary
#declare -A dict

dict+=( ["1"]=$x ["2"]=$y ["3"]=$z ["4"]=$u )

echo "Print Dict: "
echo ${!dict[@]}
echo ${dict[@]}

#UC_07:Read the values from dictionary to array

for i in ${dict[@]}
do
        array+=($i)
done

echo "Array of dict values"
echo ${array[@]}

#UC_08:Results in Descending order

echo "Descending order"
printf '%s\n' "${array[@]}" | sort -nr


#UC_09:Results in Ascending order

echo "Ascending order"
printf '%s\n' "${array[@]}" | sort -n
