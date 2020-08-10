variable "ec2_machine" {
  default = "t2.micro"
}

variable "ami_ubuntu" {
  default = "ami-0a63f96e85105c6d3"
}

variable "cdirs_remote_access" {
  type    = list(string)
  default = ["177.131.74.136/32"]
}
