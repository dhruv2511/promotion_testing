#! /bin/bash

# My first script

echo "Latest commit id is: ${Commit_Id} ${dir}"

git branch

git checkout test

git checkout development -- ${dir}

git add .

git commit -m "Promoting changes from development to test"

git push origin test

