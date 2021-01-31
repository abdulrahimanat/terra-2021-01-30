variable "region" {
  description = "AWS region"
  default     = "eu-central-1"
  type        = string
}




variable "inbound" {
  type        = list(map(string))
  description = "list of ingress ports"
  default     = null
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