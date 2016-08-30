#!/bin/bash
## read params
message=$1
if [ -z $1 ]
  then
    message="auto commit"
fi
## fix permissions
chmod g=rwx * -R
## copy source
# copy from dev to test
rsync -a dev/ test --exclude=admin --exclude=.git --delete
# copy from dev to woTP exclude admin
rsync -a dev/ woTP --exclude=admin --exclude=.git --delete
# copy from dev to woMP exclude mitmproxy
rsync -a dev/ woMP --exclude=mitmproxy --exclude=.git --delete
# copy from dev to standalone exclude admin and mitmproxy
rsync -a dev/ standalone --exclude=mitmproxy --exclude=admin --exclude=.git --delete
## push source to git server
# first ide
echo "ide"
cd "ide"
git add . --all
git commit -m "auto commit" --quiet
git push origin master --quiet
cd ../
# then regular repos
for f in "test" "woTP" "woMP" "standalone"
do 
  echo $f
  cd $f
  git add . --all
  # pwd
  git commit -m "$message" --quiet
  git push origin master -f --quiet
  cd ../
done
