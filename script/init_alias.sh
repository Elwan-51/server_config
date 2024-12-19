#!/bin/bash

FILES=$1"/*"

for f in $FILES
do
file=$(echo $f | cut -d "." -f 1)
echo "alias "$(basename $file)"=$f" >>$HOME/.bashrc
done
