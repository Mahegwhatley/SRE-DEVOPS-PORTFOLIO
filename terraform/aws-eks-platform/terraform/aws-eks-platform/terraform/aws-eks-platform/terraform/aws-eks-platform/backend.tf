# Backend configuration for Terraform state
# Note: The actual backend configuration is defined in provider.tf
# This file exists to document backend variables and support overrides.

terraform {
  backend "s3" {}
}
