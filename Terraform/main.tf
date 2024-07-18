variable "ami" {
  default = "ami-041e2ea9402c46c32"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "sg" {
  default = ["sg-0690f9908ac885f47"]
}
resource "aws_instance" "frontend" {
  ami           =  var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = "frontend"
  }
}
