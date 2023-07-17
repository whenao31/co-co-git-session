#!/bin/bash

extension=$1
path=$2

if [ ! -z "$extension" ];
then
  echo "valid ext"
  if [ -d $path ];
  then
    echo "$path is a dir"
    for file in $(find $path/*);
    do
       echo "working on $(basename $file)"
       if [[ $file == *.$extension ]];
       then
         echo "-->$(basename $file) removed."
         rm -f $file
       else
         echo "-->$(basename $file) untouched."
       fi
    done;
  else
    echo "it is not a dir"
  fi
else
  echo "not an extension"
fi
