terraform {
  required_version = ">= 0.14, < 0.15"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.7.0"
    }
  }
}