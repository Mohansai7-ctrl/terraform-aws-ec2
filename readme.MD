#terraform-aws-ec2


##Arguments

ami - (Mandatory) This is string format, User must have to provide this in user module
instance_type - (Optional). This is optional, if didn't provided terraform will take default value as "t3.micro". This is also string format.
vpc_security_group_ids - (Mandatory), This is list of string format, user must have to provide this in user module.

validation {
        condition = contains(["t3.micro","t3.medium","t3.nano"], var.instance_type)
        error_message = "instance_type should only be ("t3.micro","t3.medium","t3.nano")"
    }


##Outputs

We can get below outputs from this terraform scripts/module developments:
private_ip - Private IP of created resoure(ec2) definition
public_ip - Public IP of created resoure(ec2) definition
Instance_id == id - Instance ID of created resoure(ec2) definition