#!/bin/sh 
set -e

GIT_PASSWORD=${GIT_PASSWORD:-$GITHUB_TOKEN}

echo "Source folder: $SOURCE_FOLDER"
cd $SOURCE_FOLDER

npm install

echo "Running deploy"

git config --global user.email "$GIT_USER@users.noreply.github.com"
git config --global user.name $GIT_USER
echo "machine github.com login $GIT_USER password $GIT_PASSWORD" > ~/.netrc

npm run deploy