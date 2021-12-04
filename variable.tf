variable "ami" {
  type = "map"

  default = {
    "us-west-2" = ""
  }
}

variable "instance_count" {
  default = "2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "aws_region" {
  default = "us-west-2"
}

variable "region" {
    default = "eu-west-2"
}
variable "aws_access_key" {
    default = ""
    description = "user aws access key"
}
variable "aws_secret_key" {
    default = ""
    description = " user aws secret key"
}
