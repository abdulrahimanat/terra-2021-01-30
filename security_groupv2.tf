resource "aws_security_group" "allow_tls" {
  name        = "hllo"
  description = "Allow TLS inbound traffic"
  vpc_id      = data.aws_vpc.default.id
  tags = {
    Name = "allow_tls"
  }
}


