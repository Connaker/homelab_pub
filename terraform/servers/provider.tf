
terraform {
  required_version = "v1.11.3"

  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc7"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "5.78.0"
    }
  }
}

provider "proxmox" {
  pm_api_url          = var.proxmox_api_url
  pm_api_token_id     = var.proxmox_api_token_id
  pm_api_token_secret = var.proxmox_api_token_secret
  pm_tls_insecure     = true
  pm_parallel         = 1
}

provider "aws" {
  region = "us-east-2"
}