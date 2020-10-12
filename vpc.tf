module "vpc" {
  source  = "app.terraform.io/jithut-training/vpc/aws"
  version = "2.57.0"
  enable_dns_hostnames = true
  # insert required variables here
}