#! /bin/bash

path="/home/ubuntu/docker/terraform"

declare -u APP=$1

file_path=$path/$1"_dns.tf"


echo "resource \"cloudflare_record\" \"$1_dns\" {">> $file_path
echo "  zone_id = data.cloudflare_zone.asylium.id">> $file_path
echo "  name = local.envs[\"URI_$APP\"]">> $file_path
echo "  content = local.envs[\"TARGET_$APP\"]">> $file_path
echo "  type = local.envs[\"TYPE_$APP\"]">> $file_path
echo "  ttl = 1">> $file_path
echo "  proxied = true">> $file_path
echo "}">> $file_path
