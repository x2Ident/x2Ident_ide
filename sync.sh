#!/bin/bash
# copy source
# copy from dev to test
rsync -av dev/ test --exclude=admin --exclude=.git
# copy from dev to woTP exclude admin
rsync -av dev/ woTP --exclude=admin --exclude=.git
# copy from dev to woMP exclude mitmproxy
rsync -av dev/ woMP --exclude=mitmproxy --exclude=.git
# copy from dev to standalone exclude admin and mitmproxy
rsync -av dev/ standalone --exclude=mitmproxy --exclude=admin --exclude=.git
# push source to git server
for f in "test" "woTP" "woMP" "standalone"
do 
  echo $f
  cd $f
  git add . --all
  pwd
  git commit -m 'auto update'
  git push origin master -f
  cd ../
done
