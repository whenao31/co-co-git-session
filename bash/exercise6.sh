#!/bin/bash
option=1
while [[ ($option -ge 1) && ($option -le 4) ]] ; do
cat << "EOF"

*********Script Executioner Menu**********

Please ingress the number of the script
to be executed according to these options:

1. Even or Odd number
2. Dir size and list of its files
3. Remove certain extension files from 
   a dir
4. Check internet connection
5. Exit

*****************************************
EOF
  read option
  case $option in
    1)
      clear
      echo "**Even or Odd number**"
      echo "Enter a number:"
      read number
      ./exercise1.sh $number
      ;;
    2)
      clear
      echo "**Dir size and list of its files**"
      echo "Enter the dir path:"
      read path
      ./exercise2.sh $path
      ;;
    3)
      clear
      echo "**Remove certain extension files from a dir**"
      echo "Enter an extension (without the dot prefix):"
      read extension
      echo "Enter a dir path"
      read path
      ./exercise3.sh $extension $path
      ;;
    4)clear
      echo "**Check internet connection**"
      ./exercise4.sh
      ;;
    5)
      echo "See ya ;)"
      ;;
    *)
      echo "Not a valid option :("
      ;;
  esac
done
