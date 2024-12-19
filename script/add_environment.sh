#! /bin/bash

path="/home/ubuntu/docker/terraform"
path_compose="/home/ubuntu/docker"

for arg in "$@"
do


if [ $arg == "-h" ] || [ $arg == "--help" ]; then
    echo "Usage: delete_environment.sh [environment_name]"
    exit 0
else
declare -u APP=$arg

file_path=$path/$arg"_dns.tf"


echo "resource \"cloudflare_record\" \""$arg"_dns\" {"> $file_path
echo "  zone_id = data.cloudflare_zone.asylium.id">> $file_path
echo "  name = local.envs[\"URI_$APP\"]">> $file_path
echo "  content = local.envs[\"TARGET_$APP\"]">> $file_path
echo "  type = local.envs[\"TYPE_$APP\"]">> $file_path
echo "  ttl = 1">> $file_path
echo "  proxied = true">> $file_path
echo "}">> $file_path



cd $path
terraform apply -auto-approve

cd $path_compose
docker compose up -d $arg

fi
done