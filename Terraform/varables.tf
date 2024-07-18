variable "instance_type" {
  default = "t3.micro"
}

variable "components" {
  default = ["frontend","mongo","catalogue"]
}