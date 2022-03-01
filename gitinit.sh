branch=main
# Init git below here
git init
echo "Insert a message for the initial README:"
read readMeMessage
echo "$readMeMessage" >> README.md
git add README.md
echo "Insert your email:"
read email
git config --global user.email "$email"
echo "Insert your username:"
read name
git config --global user.name "$name"
echo "Insert a message for the first commit:"
read commitMessage
git commit -m "$commitMessage"
for (( i=1; i>0; i++ ))
do
	echo "Custom branch? (Default is main), answer 1 for yes or 0 for default"
	read bool
	if (($bool == 1 || $bool == 0))
	then
		if (($bool == 1))
		then
			echo "Insert the name of the custom branch:"
			read $branch
			break
		elif (($bool == 0))
		then
			break
	fi
	else
		echo "Insert a valid number please."
	fi
done
git branch -M $branch
echo "Insert the link for the repository:"
read repoLink
git remote add origin $repoLink
for (( i=1; i>0; i++ ))
do
	echo "Want to save your data? (Credential helper) answer 1 for yes or 0 for no"
	read bool
	if (($bool == 1 || $bool == 0))
	then
		if (($bool == 1))
		then
			git config --global credential.helper store
			break
		elif (($bool == 0))
		then
			break
	fi
	else
		echo "Insert a valid number please."
	fi
done
git push -u origin $branch