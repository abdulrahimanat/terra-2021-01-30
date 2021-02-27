variable "region" {
  description = "AWS region"
  default     = "eu-central-1"
  type        = string
}




variable "inbound" {
  type        = list(map(string))
  description = "list of ingress ports"
  default     = [
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
}

variable "sg_cidr" {
    description = "security group name"
    type = string
    default = "0.0.0.0/0"
    #sensitive = false
    #validation {
    #condition     = var.sg_cidr != "0.0.0.0/0" 
    #error_message = "The Source address is open to public, Pls change that."
  #}

  
}
