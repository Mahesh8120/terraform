variable "ami_id" {
  type = string
  default = "ami-0f3c7d07486cad139"
}

variable "instance_tyoe" {
   type = string
   default = "t2.micro"
 }

variable "tags" {
  type = map
  default = {
    Name = "Helloterraform"
    project = "roboshop"
    environment = "DEV"
    component = "web"
    terraform = "true"
  }
}

variable "sg_name" {
    type = string
    default = "roboshop-all-aws"
  
}

variable "sg_description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
}
  
variable "from_port" {
  default = 0
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}