resource "aws_instance" "web" {
  ami           = "ami-0c1ac8a41498c1a9c"
  instance_type = var.types
}

variable "list" {
  type = list
  default = ["t2.medium", "t2.nano", "t2.micro"]
}

variable "types" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-west-1 = "t2.nano"
    ap-south-1 = "t2.small"
  }
}

