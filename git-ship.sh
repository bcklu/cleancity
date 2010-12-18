#!/bin/sh
# git name-rev is fail
CURRENT=`git branch | grep '\*' | awk '{print $2}'`

echo " --- Checking out master branch and pull ---"
git checkout master
git pull
echo; echo

echo " --- Merging current branch (${CURRENT}) into master ---"
git merge ${CURRENT}
echo; echo

echo " --- Pushing changes to master --- "
git push
echo; echo

echo " --- Checking out current branch (${CURRENT}) ---"
git checkout ${CURRENT}
