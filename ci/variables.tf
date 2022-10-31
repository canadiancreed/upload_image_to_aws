variable "region" {
  description = "The region where environment is going to be deployed"
  type        = string
  default     = "us-west-2"
}

variable "aws_access_key" {
  type      = string
  sensitive = true
}

variable "aws_secret_key" {
  type      = string
  sensitive = true
}