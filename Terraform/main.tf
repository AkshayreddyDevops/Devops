resource "aws_instance" "frontend" {
  ami           =  var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = "frontend"
  }
}
