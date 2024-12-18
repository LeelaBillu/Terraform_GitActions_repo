resource "aws_instance" "My_inst"{
    ami =var.ami_id
    instance_type  = var.instance_type
    subnet_id =var.subnet_id

    tags = {
        Name =var.ec2_name
    }
    
}