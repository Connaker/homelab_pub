terraform {
  #backend "local" {}
  backend "s3" {
    bucket = "connaker-terraform-statefiles"
    key    = "homelab/servers.tfstate"
    region = "us-east-1"
  }
}