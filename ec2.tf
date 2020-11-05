resource "aws_instance" "myec2" {
      ami = "ami-01fee56b22f308154"
      instance_type = "t2.micro"
     }
