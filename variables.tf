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
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  default     = "data.aws_ami.amazon_linux.id"  # Example Amazon Linux (update if needed)
}

variable "instance_type" {
  default = "t2.micro"
}