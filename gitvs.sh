#!/bin/bash
chmod 755 /home/holbertonschool-low_level_programming
chmod 755 /home/holbertonschool-low_level_programming/*/
git add *
echo 'Enter the commit message:'
read commitMessage
git commit -m "$commitMessage"
git push -u origin main
chmod 777 /home/holbertonschool-low_level_programming
chmod 777 /home/holbertonschool-low_level_programming/*/