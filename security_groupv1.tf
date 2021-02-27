
resource "aws_security_group" "allow_tls" {
  name        = "abdul_testq"
  description = "Allow TLS inbound traffic"
  vpc_id      = data.aws_vpc.default.id

/**
 ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["103.153.104.12/32"]
  }

 ingress {
    description = "http from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "poert 22 from wipro"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["103.153.104.12/32","111.111.104.12/32"]
  }

**/


  dynamic "ingress" {
    for_each = var.inbound
    content {
      from_port   = ingress.value["from_port"]
      to_port     = ingress.value["to_port"]
      protocol    = ingress.value["protocol"]
      cidr_blocks = [ingress.value.cidr_blocks]
      description = ingress.value.description
    }
  }



 egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "abdul"
  }
}
