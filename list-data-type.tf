resource "aws_instance" "web" {
  ami           = "ami-0c1ac8a41498c1a9c"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03b34921611146bee", "sg-045adeea67a5df248"]

 tags = {
    Name = "Testing-ec2",
    Location = "Europe",
    Team = "Dev"
  }
}