provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami = "ami-00d48a21603b2119b"
  instance_type = "t3.micro"
}

output "ec2_public_ip" {
  value = aws_instance.sample.public_ip
}