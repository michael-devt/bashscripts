git remote -v
echo 'Reset Commit'
echo 'Are you sure you want to reset your repo(Y/N)'
read areYouSure

if [[ $areYouSure == "Y" || $areYouSure == "y" ]]; then
  echo "Number of Head"
  read numberOfHead
  echo $numberOfHead
  git reset HEAD~$numberOfHead
  git push origin HEAD --force
elif [[ $areYouSure == "N" || $areYouSure == "n" ]]; then
  echo "Good bye =)"
  exit 1
fi

