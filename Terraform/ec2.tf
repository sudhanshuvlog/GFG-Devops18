resource "aws_instance" "ec2_os1" {
  ami           = data.aws_ami.latest_amazon_linux.id
  instance_type = var.instanceType
  subnet_id     = aws_subnet.mygfgsubnet.id
  vpc_security_group_ids = [aws_security_group.webSecurityGroup.id]
  tags = {
    Name = "${var.tagName}-${count.index}"
  }
  key_name = var.KeyName
  count = 0
  depends_on= [aws_key_pair.deployer]
}


resource "aws_key_pair" "deployer" {
  key_name   = var.KeyName
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}

resource "aws_security_group" "webSecurityGroup" {
  name        = var.sg_name
  description = "Allow port 80"
  vpc_id      = aws_vpc.myvpc.id

  dynamic "ingress" {
    for_each = var.sg_allowed_port
    content {
    from_port        = ingress.value
    to_port          = ingress.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  }
  
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource null_resource "triffermyscript"{

 provisioner "local-exec" {
 command = "echo hi"
}
}

resource null_resource "destroy-resource"{

 provisioner "local-exec" {
 when = destroy
 command = "echo destroying the resources > gfgdestroy.txt"
}
}