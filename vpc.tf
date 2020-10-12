module "vpc" {
  source  = "app.terraform.io/jithut-training/vpc/aws"
  version = "2.57.0"
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  # insert required variables here
}