data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]
}


output "ami"{
  value = data.aws_ami.ami
}

data "aws_security_groups" "sg" {
  filter {
    name   = "allow-all"
    values = ["*nodes*"]
  }
}

output "sg" {
  value = data.aws_security_groups.sg
}