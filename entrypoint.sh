#!/bin/sh 
set -e


GIT_PASSWORD=${GIT_PASSWORD:-$GITHUB_TOKEN}
DEPLOYMENT_BRANCH=${DEPLOYMENT_BRANCH:-gh-pages}

echo "Source folder: $SOURCE_FOLDER"
cd $SOURCE_FOLDER

echo "Running deploy"

git config --global user.email "$GIT_USER@users.noreply.github.com"
git config --global user.name $GIT_USER
echo "machine github.com login $GIT_USER password $GIT_PASSWORD" > ~/.netrc

# export NODE_PATH=`npm root -g`
# docusaurus deploy
npm install && npm run deploy