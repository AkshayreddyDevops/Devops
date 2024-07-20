resource "aws_instance" "test"{
  ami = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0690f9908ac885f47"]
  tags={
    name = "test"
  }
}

output "private-ip" {
  value = aws_instance.test.private_ip
}