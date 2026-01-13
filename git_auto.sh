#!/bin/bash

export PATH=$PATH:/home/ubuntu/Github/auto-script- || exit 1

git status
echo "Enter the file name"
read filename

git add "$filename"
echo "Write the commit message"
read commit_message
if [ ${#commit_message} -lt 2 ]; then
    echo " Please add meaningful message"
    exit 1
fi
git commit -m "$commit_message"
git push origin main

