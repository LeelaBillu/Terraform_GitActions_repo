variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of the EC2 instance"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the EC2 instance in"
  type        = string
}

variable "ec2_name" {
  description = "The name of the EC2 instance"
  type        = string
}
