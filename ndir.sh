#!/bin/bash
echo "Enter the new directory name:"
read Dirname
mkdir -m 777 /home/holbertonschool-low_level_programming/$Dirname
cd /home/holbertonschool-low_level_programming/$Dirname
echo "First version of readme" > README.md
