#!/bin/bash

FILES=$1"*.sh"

if [ -z "$1" ]; then
echo "Please provide a directory"
exit 1
fi


for f in $FILES
do
file=$(echo $f | cut -d "." -f 1)
echo "alias "$(basename $file)"=$f" >>$HOME/.bashrc
done
