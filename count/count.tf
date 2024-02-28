resource "aws_instance" "web" {
  count = 11
  ami           = var.ami_id
  instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "mysql" || var.instance_name[count.index] == "shipping" ? "t3.small" : "t2.micro"
  tags = {
    Name = var.instance_name[count.index]
  }
}