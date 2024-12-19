#! /bin/bash

path="/home/ubuntu/docker/terraform"
path_compose="/home/ubuntu/docker"

for arg in "$@"
do
    if [ $arg == "-h" ] || [ $arg == "--help" ]; then
        echo "Usage: delete_environment.sh [environment_name]"
        exit 0
    else
        rm $path/$arg"_dns.tf"

        cd $path
        terraform apply -auto-approve
        cd $path_compose
        docker compose down $arg
    fi
done
