# resource "aws_instance" "instance" {
#   for_each = var.components
#   ami           =  data.aws_ami.ami.image_id
#   instance_type = each.key["instance_type"]
#   vpc_security_group_ids = data.aws_security_groups.sg.ids
#   tags = {
#     Name = "${each.key}.dev"
#   }
# }


resource "aws_instance" "display"{
  ami = "RHEL-9-DevOps-Practice"
  instance_type = "t3.micro"
  vpc_security_group_ids  = "allow-all"
  tags = {
    name = "frontend"
  }
}

output "name" {
  value = aws_instance.display
}