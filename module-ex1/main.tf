module ec2{
  source = "./ec2"
}

module dns {
  source = "./dns"
  private-ip = module.ec2.private-ip
}

