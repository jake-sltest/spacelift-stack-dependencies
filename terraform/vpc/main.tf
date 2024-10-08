resource "aws_vpc" "sd_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Stack Dependency VPC"
  }
}

resource "aws_subnet" "sd_subnet" {
    vpc_id = aws_vpc.sd_vpc.id
    cidr_block = "10.0.0.0/16"
    map_public_ip_on_launch = "true"

    tags = {
        demo = "Stack Dependency Subnet"
    }
}

resource "aws_instance" "sd_instance" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "var.instance_size"
  subnet_id = aws_subnet.sd_subnet.id
  associate_public_ip_address = true

  tags = {
    Name = "Sandbox EC2"
  }
}