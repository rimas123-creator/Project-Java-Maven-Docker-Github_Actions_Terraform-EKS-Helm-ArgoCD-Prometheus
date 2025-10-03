# AWS Provider's Details
variable "region" {}

# VPC Configuration Details
variable "vpc_cidr" {}
variable "availability_zones" {}
variable "private_subnet_cidrs" {}
variable "public_subnet_cidrs" {}

# EKS Configuration Details
variable "cluster_name" {}
variable "cluster_version" {}
variable "node_groups" {}