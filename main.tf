provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.region}"
}
resource "aws_instance" "web" {
  count         = var.instance_count
  ami           = lookup(var.ami,var.aws_region)
  instance_type = var.instance_type
  key_name      = ""
  associate_public_ip_address = "true"
  tags = {
    Name  = "terraform EC2-${count.index + 1}"
  }
}
