resource "aws_security_group" "roboshop-all" {
  name        = var.sg_name
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id

ingress {
        description      = "Allow All ports"
        from_port        = var.from_port
        to_port          = 0
        cidr_blocks      = var.cidr_blocks
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

    tags = var.tags
}