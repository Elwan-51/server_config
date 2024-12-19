#! /bin/bash

file_extention=".yaml"
unactivated_dir="unactivated"
host_dir="asylium1"
docker_path="/home/ubuntu/docker"
if [ -n "$2" ]; then
host_dir=$2
fi


mv $docker_path/appdata/traefik/rules/$host_dir/$1$file_extention $docker_path/appdata/traefik/rules/$unactivated_dir/