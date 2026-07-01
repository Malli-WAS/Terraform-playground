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

variable "user_name2" {
  description = "IAM User Name"
  type        = string
  default     = "Mallikaraja"
}
variable "ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami = data.aws_ami.amazon_linux2.id"   # Replace with your region's AMI
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 Instance Name"
  type        = string
  default     = "Terraform-EC2"
}