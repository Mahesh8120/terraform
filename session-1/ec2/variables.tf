variable "sg_name" {
  type = string 
  default = "roboshop-all-aws"
}

variable "sg_discription" {
  type = string 
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "inbound-from-port" {
  default = "0"
}

variable "cidr" {
  default = ["0.0.0.0/0"]
}
