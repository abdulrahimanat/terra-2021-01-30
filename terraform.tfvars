region = "eu-central-1"

inbound = [
      {
         description = "ssh from VPC"
         from_port   = 22
         to_port     = 22
         protocol    = "tcp"
         cidr_blocks = "10.0.0.0/21"
      },
      {
         description = "http from VPC"
         from_port   = 80
         to_port     = 80
         protocol    = "tcp"
         cidr_blocks = "0.0.0.0/0"
      }]