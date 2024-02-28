variable "instance_name" {
  type = list
default = ["mongodb", "mysql", "redis","rabbitmq","user", "cart" ,"catalogue", "shipping", "payment","dispatch" ,"web"]
}

variable "ami_id" {
  default = "ami-0f3c7d07486cad139"
}