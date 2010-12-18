#!/bin/sh
# git name-rev is fail
CURRENT=`git branch | grep '\*' | awk '{print $2}'`

echo " --- Checking out master branch and pull recent changes ---"
git checkout master
git pull
echo; echo

echo " --- Checking out current (${CURRENT}) branch ---"
git checkout ${CURRENT}
echo; echo

echo " --- Rebasing master branch into current (${CURRENT}) ---"
git rebase master
