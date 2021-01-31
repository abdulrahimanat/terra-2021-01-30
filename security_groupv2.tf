/**
resource "aws_security_group" "allow_tls" {
  name        = "hllo"
  description = "Allow TLS inbound traffic"
  vpc_id      = data.aws_vpc.default.id
  tags = {
    Name = "allow_tls"
  }
}

resource "aws_security_group_rule" "ssh" {
    type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.allow_tls.id

  
}


**/