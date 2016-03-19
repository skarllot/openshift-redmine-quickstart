#!/bin/bash

REPO_NAME=openshift-redmine-quickstart
REPO_BRANCH=master

# Remove all cartridge data
rm -rf ./* .openshift/

# Download from quickstart repository
wget https://github.com/skarllot/${REPO_NAME}/archive/${REPO_BRANCH}.tar.gz

# Replace current data to download data
tar xzf ${REPO_BRANCH}.tar.gz
rm -f ${REPO_BRANCH}.tar.gz
mv ${REPO_NAME}-${REPO_BRANCH}/* ${REPO_NAME}-${REPO_BRANCH}/.* ./ &>/dev/null
rmdir ${REPO_NAME}-${REPO_BRANCH}/

# Commit changes and push
git add .
git commit -m "${REPO_NAME}"
git push origin master
