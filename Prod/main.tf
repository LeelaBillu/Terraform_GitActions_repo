
provider "aws" {
  region = "us-east-1"  # Specify your region
}

# Module for creating VPC
module "vpc" {
  source = "../Modules/vpc"

  # Pass names and other values to the vpc module
  vpc_name          = "MyCustom_Prod_VPC"
  subnet_name       = "MyCustom_prod_Subnet"
  vpc_cidr_block    = "10.0.0.0/16"
  subnet_cidr_block = "10.0.1.0/24"
}

# Module for creating EC2 instance
module "ec2" {
  source = "../Modules/Ec2"

  # Pass names and other values to the ec2 module
  ec2_name   = "MyCustom_prod_EC2"
  ami_id     = "ami-007868005aea67c54"  # Example AMI ID  
  instance_type = "t2.micro"

  # Use the VPC and subnet created by the VPC module
  vpc_id     = module.vpc.vpc_id
  subnet_id  = module.vpc.subnet_id
}

