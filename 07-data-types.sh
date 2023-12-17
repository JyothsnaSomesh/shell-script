#!/bin/bash

number1=$1
number2=$2
number3=$3
number4=$4
number10=$10

sum=$(($number1+$number2+$number3+$number4+$number10))

echo "Total::$sum"

echo "How many args passed:: $#"

echo "All  args passed:: $@"

echo "Script name:: $0"