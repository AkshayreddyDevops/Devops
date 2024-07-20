resource "aws_route53_record" "frontend"{
  zone_id = "Z0314836TZ55HM33F8PT"
  name = "frontend.dev.eudtech.online"
  type = "A"
  ttl = 300
  records = [var.private-ip]
}

variable "private-ip" {}