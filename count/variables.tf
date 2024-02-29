variable "instance_name" {
  type = list
default = ["mongodb", "mysql", "redis","rabbitmq","user", "cart" ,"catalogue", "shipping", "payment","dispatch" ,"web"]
}

variable "ami_id" {
  default = "ami-0f3c7d07486cad139"
}

variable "zone_id" {
  default = "Z08780431GOB4T1TR5RPR"
}

variable "domain_name" {
  default = "pjdevops.online"
}