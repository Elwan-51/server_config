#! /bin/bash

path="/home/ubuntu/docker/terraform"
path_compose="/home/ubuntu/docker"

rm $path/$1"_dns.tf"

cd $path
terraform apply -auto-approve

cd $path_compose
docker compose down $1