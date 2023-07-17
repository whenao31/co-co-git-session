#!/bin/bash

echo "Testing your internet connection, please wait few seconds ..."
if [[ $(ping -c 2 8.8.8.8 | grep -oP '[\d+.,]+(?=% packet loss)') == 0 ]];
then
  echo "Your internet connection is Up!"
else
  echo "No internet connection"
fi
