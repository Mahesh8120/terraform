resource "aws_instance" "servers" {
  count         = length(var.instance_name)
  ami           = var.ami_id
  instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "mysql" || var.instance_name[count.index] == "shipping" ? "t3.small" : "t2.micro"
  tags = {
    Name = var.instance_name[count.index]
  }
}



resource "aws_route53_record" "route53" {
  count   = length(var.instance_name)
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [var.instance_name[count.index] == "web " ? aws_instance.servers[count.index].private_ip : aws_instance.servers[count.index].private_ip]
}
