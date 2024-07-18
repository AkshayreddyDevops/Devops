resource "aws_instance" "frontend" {
  ami           =  data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids
  tags = {
    Name = "frontend"
  }
}


resource "aws_instance" "mongo" {
  ami           =  data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  tags = {
    Name = "mongo"
  }
}

resource "aws_instance" "catalogue" {
  ami           =  data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  tags = {
    Name = "catalogue"
  }
}