variable "instanceType"{
    type= string
    default = "t2.micro"
}

variable "tagName"{
    type = string
    default = "TerraformEc2"
}

variable "KeyName"{
    default = "Terraform key"
}