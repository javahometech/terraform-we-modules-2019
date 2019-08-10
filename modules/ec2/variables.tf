variable "no_of_ec2" {
  default = "2"
}
variable "ec2_ami" {
  default = "ami-0d2692b6acea72ee6"
}

variable "subnet_ids" {
  type = "list"
}
