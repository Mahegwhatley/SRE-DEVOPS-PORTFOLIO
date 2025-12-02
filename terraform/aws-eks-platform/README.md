# AWS EKS Platform – Terraform Module

This Terraform module provisions a complete, production-ready *Amazon EKS (Elastic Kubernetes Service)* platform.  
It follows best practices used by SRE/DevOps teams to deploy scalable, secure, and automated Kubernetes clusters.

---

## *What This Module Creates*

### ✔️ VPC (if enabled)
- Private/Public subnets  
- NAT gateways  
- Internet gateway  
- Route tables  

### ✔️ EKS Cluster
- Control plane  
- Managed node groups  
- Cluster IAM roles  
- Node IAM roles  

### ✔️ Networking
- Security groups  
- Cluster endpoint private/public access  
- VPC CNI configuration  

### ✔️ Add-ons
- EBS CSI Driver  
- CoreDNS  
- Kube-proxy  

### ✔️ Terraform Backend (S3 + DynamoDB)
- S3 bucket for storing Terraform state  
- DynamoDB table for state locking  

---

## *Project Structure*
