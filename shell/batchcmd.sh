#!/bin/bash
# ./batchcmd.sh <filename> <cmd> [arg1] ... [argN]
filename=$1
shift;  # eat $1
cmd=""
for arg in "$@"
do
  cmd=$cmd" "$arg
done
for item in `awk '{ print$1 }' $filename`
do
    eval $cmd" "$item
done
