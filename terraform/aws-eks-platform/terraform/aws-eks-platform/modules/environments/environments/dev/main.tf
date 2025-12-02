terraform {
  required_version = ">= 1.0"
}

provider "aws" {
  region = var.region
}

module "eks" {
  source = "../../modules/eks"

  vpc_name         = var.vpc_name
  vpc_cidr         = var.vpc_cidr
  vpc_azs          = var.vpc_azs
  private_subnets  = var.private_subnets
  public_subnets   = var.public_subnets

  eks_cluster_name = var.eks_cluster_name
  eks_version      = var.eks_version
}
