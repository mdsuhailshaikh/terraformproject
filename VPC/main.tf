resource "aws_vpc" "my_vpc" {
    cidr_block              = "10.0.0.0/16"
    enable_dns_hostnames    = true
    enable_dns_support      = true
    tags = {
        Name = "MyVPC"
    }
}

resource "aws_subnet" "public_subnet" {
    vpc_id                  = aws_vpc.my_vpc.id
    cidr_block              = "10.0.1.0/24"
    map_public_ip_on_launch = true
    availability_zone       = "us-east-1a"
    tags = {
        Name = "MyPublicSubnet"
    }
}

resource "aws_security_group" "my_sg" {
    vpc_id      = aws_vpc.my_vpc.id
    name        = "MySecurityGroup"
    description = "PublicSecurity"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow SSH access"
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow all outbound traffic"
    }
}
