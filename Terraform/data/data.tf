data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "ami-041e2ea9402c46c32"
  owners           = ["973714476881"]
}


output "ami"{
  value = data.aws_ami.example
}