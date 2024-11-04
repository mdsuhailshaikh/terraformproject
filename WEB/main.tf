resource "aws_instance" "myec2" {
    ami             = "ami-0866a3c8686eaeeba"
    instance_type   = "t2.micro"
    subnet_id       = var.sn
    security_groups = [var.sg]  # Use square brackets to create a list
    tags = {
        Name = "prodserver"
    }
}
