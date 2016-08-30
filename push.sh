ide/sync.sh "$1"
echo "main"
cd dev
git add --all
git commit -m "$1" --quiet
git push origin master --quiet
cd ../
