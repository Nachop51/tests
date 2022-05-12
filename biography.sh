#!/bin/bash
clear -x
echo "Welcome to biography generator!"
echo "Please, enter first name:"
read name
echo "Enter surname:"
read surname
echo "Enter date of birth: (DD/MM/YY)" 
read birth
echo "Enter address:"
read address
echo "Enter job:"
read job

echo "Name: $name $surname" >> $name.txt
echo "Birth: $birth" >> $name.txt
echo "Address: $address" >> $name.txt
echo "Job: $job" >> $name.txt
echo "Biography generated at $name.txt!"
