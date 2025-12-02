variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name (dev, stage, prod)"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnet CIDRs"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnets" {
  type        = list(string)
  description = "Private subnet CIDRs"
  default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}

variable "cluster_version" {
  description = "EKS Kubernetes version"
  type        = string
  default     = "1.29"
}

variable "node_min_size" {
  type        = number
  default     = 1
}

variable "node_max_size" {
  type        = number
  default     = 3
}

variable "node_desired_size" {
  type        = number
  default     = 2
}

variable "node_instance_types" {
  type        = list(string)
  default     = ["t3.medium"]
}

# Backend variables
variable "backend_bucket" {
  description = "S3 bucket name for Terraform remote backend"
  type        = string
}

variable "backend_region" {
  description = "AWS region for remote backend"
  type        = string
  default     = "us-east-1"
}

variable "backend_dynamodb_table" {
  description = "DynamoDB table for state locking"
  type        = string
}
