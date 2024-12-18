variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}
