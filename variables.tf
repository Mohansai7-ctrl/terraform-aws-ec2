variable "ami_id" {
    type = string
    #default = "ami-09c813fb71547fc4f"   #if its is uncommented(not provided) then it will check in user module(ec2-module-demo)
}

variable "instance_type_info" {
    default = "t3.micro"
    validation {
        condition = contains(["t3.micro","t3.medium","t3.nano"], var.instance_type_info)
        error_message = "instance_type should only be (t3.micro,t3.medium,t3.nano)"
    }
}

variable "security_group_id" {
    type = list(string)
    #default = ["sg-0d91387712ba38962"] #if its is commented(not provided) then it will check in user module(ec2-module-demo)
    
}

variable "tags_name" {
    type = string
    #as value didnt provided here , now terraform will fetch and get this var value from user module(ec2-module-demo)
}