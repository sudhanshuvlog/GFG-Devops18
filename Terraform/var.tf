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

variable "availability_zone"{
    default = "ap-south-1a"
}

variable "sg_name"{
 default = "WebGfgSg"
}

variable "sg_allowed_port" {
    type = list
    default = [80,8080,22,9000, 9991]
}