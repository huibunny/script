#!/bin/bash
# fetch all branches from remote repo.
# https://blog.csdn.net/wu1169668869/article/details/83345633
set -e
for dir in $(ls)
do
    [ -d $dir ] && cd $dir && pwd && git branch -r | grep -v '\->' | while read remote;do git branch --track "${remote#origin/}" "$remote";done && git fetch --all && git pull --all
    cd -
done
