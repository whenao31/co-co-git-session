#!/bin/bash

path=$1
if [[ -d $path ]];
then
  #du -d0 -h $path
  ls -lh $path
else
  echo "$path is not a valid path"
fi
