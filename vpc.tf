module "vpc" {
  source  = "app.terraform.io/jithut-training/vpc/aws"
  version = "2.57.0"
  enable_dns_hostnames = true
  name = "hasicat-vpc"

  cidr = "10.0.0.0/16"

  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_ipv6 = true

  enable_nat_gateway = true
  single_nat_gateway = true

  public_subnet_tags = {
    Name = "overridden-name-public"
  }

  tags = {
    Owner       = "jithu"
    Environment = "dev"
  }

  vpc_tags = {
    Name = "vpc-name"
  }
  # insert required variables here
}