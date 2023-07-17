#!/bin/bash

number=$1
re='^[0-9]+$'
if [[ $number =~ $re ]];
then
  if [[ $((number%2)) == 0 ]];
  then
  echo "$number is an Even number";
  else
  echo "$number is an Odd number";
  fi
else
  echo "$number is Not a number" >&2; exit 1
fi
