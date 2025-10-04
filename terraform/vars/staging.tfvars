# AWS Provider's Details
region = "us-east-1"

# VPC Details
vpc_cidr             = "10.0.0.0/16"
availability_zones   = ["us-east-1a", "us-east-1b", "us-east-1c"]
private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnet_cidrs  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

# EKS Details
cluster_name    = "my-app-eks-cluster"
cluster_version = "1.33"
node_groups = {
  ng-1 = {
    instance_types = ["t3.micro"]
    capacity_type  = "ON_DEMAND"
    scaling_config = {
      desired_size = 2
      max_size     = 4
      min_size     = 1
    }
  }
}