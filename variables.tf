variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "ap-south-1"
}

variable "aws_availability_zone" {
  description = "AWS Availability Zoe to launch servers."
  default     = "ap-south-1a"
}
variable "artifacts_bucket_name" {
  description = "AWS bucket for artifacts."
  default     = "prashanna-gitops-artifacts"
}



variable "env" {
  description = "environment for terraform project."
  default     = "development"
}
variable "tf_version" {
  description = "terraform version"
  default     = "0.14.7"
}

variable "infra_project_repository_branch" {
  description = "repo target branch"
  default     = "master"
}

variable "infra_project_repository_name" {
  description = "target repo"
  default     = "gitops_terraform"
}




# Ubuntu Server 22.04 LTS (x64)
variable "aws_amis" {
  default = {
    ap-south-1 = "ami-0c2af51e265bd5e0e"
    ap-southeast-2 = "ami-0375ab65ee943a2a6"
  }
}