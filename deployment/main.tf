module "vpc" {
  #source = "/home/thiago/Documents/GitProjects/arq-containers-aws/linuxtips-containers-aws-modules/vpc"
  source = "github.com/thiagomdiniz/linuxtips-containers-aws-modules.git//vpc?ref=v1.0.0"

  project_name       = var.project_name
  cidr               = var.cidr
  region             = var.region
  availability_zones = var.availability_zones
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
}