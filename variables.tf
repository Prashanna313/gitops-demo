variable "aws_region" {
  description = "AWS region to launch servers."
  type        = string
  default     = "ap-south-1"
}

variable "aws_availability_zone" {
  description = "AWS Availability Zoe to launch servers."
  type        = string
  default     = "ap-south-1a"
}

# Ubuntu Server 22.04 LTS (x64)
variable "aws_amis" {
  default = {
    ap-south-1     = "ami-0c2af51e265bd5e0e"
    ap-southeast-2 = "ami-0375ab65ee943a2a6"
  }
  type = map(string)
}