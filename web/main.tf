#ec2

resource "aws_instance" "server" {
  ami = "ami-0e35ddab05955cf57"
  instance_type = "t2.micro"
  subnet_id = var.sn
  security_groups = [var.sg]

  tags = {
    Name = "myserver"
  }
}
