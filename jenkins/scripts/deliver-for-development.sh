#! /bin/bash

# My first script

git rev-parse HEAD > curr_com.txt
set /p curr_com=<curr_com.txt
echo "Latest commit id is: ${curr_com}"