#! /bin/bash

path_env="/home/ubuntu/docker/.env"

for arg in "$@"
do

declare -u APP=$arg

echo "TYPE_$APP=\""$arg"\"" >> $path_env
echo "URI_$APP=\"asylium.app\"" >> $path_env
echo "TARGET_$APP=\"CNAME\"" >> $path_env

done
