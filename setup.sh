#!/bin/bash

# script path
script_path=$(
    cd -- "$(
        dirname -- "${BASH_SOURCE[0]}"
    )" &>/dev/null && pwd
)

cd $script_path

echo Repo name:
read repo

echo Initial commit message:
read initial_commit

git init --initial-branch master
git add .
git commit -m "$initial_commit"
git tag 3.0.0
git remote add origin "https://github.com/CaoBittencourt/$repo.git"
git push -u origin master

git checkout -b dev master
git commit -m "$initial_commit"
git merge --no-ff dev
git push -u --tags origin master
git push -u --tags origin dev
