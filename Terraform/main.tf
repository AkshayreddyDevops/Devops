resource "aws_instance" "instance" {
  count = length(var.components)
  ami           =  data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids
  tags = {
    Name = "${var.components[count.index]}.dev"
  }
}


