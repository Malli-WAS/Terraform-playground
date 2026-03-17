variable "user_name" {
  description = "IAM User Name"
  type        = string
  default     = "terraform-demo-user"
}

variable "user_name1" {
  description = "IAM User Name"
  type        = string
  default     = "Hari"
}
variable "region" {
  default = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  default     = "ami-0f58b397bc5c1f2e8"  # Example Amazon Linux (update if needed)
}

variable "instance_type" {
  default = "t2.micro"
}