# Configuration environment

## Requirements

- Terraform
- Docker
- Docker Compose
- Cloudflare DNS

## Setup

In a .env file, set the following variables:

```bash

##### SYSTEM

HOSTNAME="hostname"
PUID=1000
PGID=1000
TZ="Europe/Paris"
DOCKERDIR="~/docker"
DOCKERDATA="~/docker/appdata"
LOCAL_IPS=127.0.0.1/32,10.0.0.0/8,192.168.0.0/16,172.16.0.0/12

##### DOMAIN

DOMAINNAME_1="your.domain"
CLOUDFLARE_API_TOKEN="your.token"
EMAIL="your.email"
CLOUDFLARE_IPS=173.245.48.0/20,103.21.244.0/22,103.22.200.0/22,103.31.4.0/22,141.101.64.0/18,108.162.192.0/18,190.93.240.0/20,188.114.96.0/20,197.234.240.0/22,198.41.128.0/17,162.158.0.0/15,104.16.0.0/13,104.24.0.0/14,172.64.0.0/13,131.0.72.0/22

##### URI

# Use to defined the DNS record for app. Change APP to the corresponding name. Can be repetead for multiple apps with different name.

URI_APP="app"
TARGET_APP="target.app"
TYPE_APP="CNAME"
```

### Script installation

Execute the following script : `script/init_alias.sh`

It will allow you to use the following commands:

- activate_rules : Activate a traefik rules in the rules folder
- add_environment : Add and start and application with it's domain name, docker and corresponding rules

### Setup Terraform

```bash
cd terraform
terraform init
```

You can now either create the dns manualy or by using the command shown before.
