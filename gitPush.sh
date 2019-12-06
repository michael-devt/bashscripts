#! /bin/bash

echo "Check remote url"
git remote -v

echo "Check Status";
git status

echo "Add all changes";
git add .

echo "Check Status";
git status

echo "Enter the commit message";
read commitMessage

if [ -z ${commitMessage} ]; then
  echo "commit message is required"
  exit 1
fi

git commit -m $commitMessage
echo "Check Status";
git status

echo "Are you sure you want to push the update? (Y/N)"
read areYouSure

if [[ $areYouSure == "Y" || areYouSure == "y" ]]: then
  git push origin master
else
  exit 1
end

