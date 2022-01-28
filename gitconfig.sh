echo "Insert a message for the initial README:"
read readMeMessage
echo "$readMeMessage" >> README.md
git init
git add README.md
echo "Insert a message for the first commit:"
read commitMessage
git commit -m "$commitMessage"
git branch -M main
echo "Insert the link for the repo:"
read repoLink
git remote add origin $repoLink
git push -u origin main
