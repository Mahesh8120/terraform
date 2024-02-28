resource "aws_instance" "web" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]

  tags = {
    Name = "Helloterraform"
  }
}

# resource "aws_security_group" "roboshop-all" {
#   name        = "allow_tls_group"
#   description = "Allow TLS inbound traffic and all outbound traffic"
#   #vpc_id      = aws_vpc.main.id

#   tags = {
#     Name = "allow_tls"
#   }
# }


# resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
#   security_group_id = aws_security_group.roboshop-all.id
#   cidr_ipv4         = "0.0.0.0/0"
#   from_port         = 0
#   ip_protocol       = "tcp"
#   to_port           = 0
# }

# resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
#   security_group_id = aws_security_group.roboshop-all.id
#   cidr_ipv4         = "0.0.0.0/0"
#   ip_protocol       = "-1" # semantically equivalent to all ports
# }

resource "aws_security_group" "roboshop-all" {
  name        = var.sg_name
  description = var.sg_discription
  #vpc_id      = aws_vpc.main.id

ingress {
        description      = "Allow All ports"
        from_port        = var.inbound-from-port
        to_port          = 0
        cidr_blocks      = var.cidr
        protocol         = "tcp"  
        #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "roboshop-all-aws"
    }
}