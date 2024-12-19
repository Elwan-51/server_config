terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "2.1.0"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = local.envs["CLOUDFLARE_API_TOKEN"]
}

data "cloudflare_zone" "asylium" {
  name = local.envs["DOMAINNAME_1"]
}