#!/bin/bash
git add *
echo 'Enter the commit message:'
read commitMessage
git commit -m "$commitMessage"
git push -u origin main
