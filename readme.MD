# terraform-aws-ec2


## Arguments

1)ami - (Mandatory) This is string format, User must have to provide this in user module
2)instance_type - (Optional). This is optional, if didn't provided terraform will take default value as "t3.micro". This is also string format.
3)vpc_security_group_ids - (Mandatory), This is list of string format, user must have to provide this in user module.

4)validation {
        condition = contains(["t3.micro","t3.medium","t3.nano"], var.instance_type)
        error_message = "instance_type should only be ("t3.micro","t3.medium","t3.nano")"
    }


## Outputs

We can get below outputs from this terraform scripts/module developments:
1)private_ip - Private IP of created resoure(ec2) definition
2)public_ip - Public IP of created resoure(ec2) definition
3)Instance_id == id - Instance ID of created resoure(ec2) definition