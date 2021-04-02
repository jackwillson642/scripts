#!/bin/bash

program_name=$1

sudo pacman -Fy $1 > ~/test.txt

counter=0
bool=false
cat ~/test.txt | while read y
do
  echo "Line contents are : $y "
  counter=$(($counter+1))
  if [ $counter -gt 5 ]
  then
    eval 'bool=true'
    # sudo pacman -Sy $1
    break
  fi
done

echo $bool

rm ~/test.txt
