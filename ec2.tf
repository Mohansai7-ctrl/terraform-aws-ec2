#its child module is ec2-module-demo

resource "aws_instance" "terraform" {    #This is resource definition block
    #arguments = values
    ami = var.ami_id
    instance_type = var.instance_type_info
    vpc_security_group_ids = var.security_group_id

    tags = {
        Name = var.tags_name
    }
}