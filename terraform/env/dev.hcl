bucket         = "demo-myapp-state-s3-bucket"
key            = "${terraform.workspace}/terraform.tfstate"
region         = "us-east-1"
# dynamodb_table = "terraform-eks-state-locks"
# use_lockfile = true
# encrypt        = true