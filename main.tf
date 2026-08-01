module "vpc" {
  source = "./module/vpc"
  project_name = var.project_name

  cidr = var.cidr

  public_subnet = var.public_subnet
  private_subnet = var.private_subnet
  region = var.aws_region

}