provider "aws" {
  region = "us-east-1"
}
# ---------------------------
# IAM USER (Already exists)
# ---------------------------
resource "aws_iam_user" "demo_user" {
  name = var.user_name
}

resource "aws_iam_user" "Hari" {
  name = var.user_name1
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user = aws_iam_user.demo_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_user_policy_attachment" "attach_policy_1" {
  user = aws_iam_user.Hari.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
# ---------------------------
# SECURITY GROUP (for EC2)
# ---------------------------
resource "aws_security_group" "ec2_sg" {
  name = "ec2-security-group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   # SSH access
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   # HTTP access
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# ---------------------------
# EC2 INSTANCE
# ---------------------------
resource "aws_instance" "my_ec2" {
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "Jenkins-Terraform-EC2"
  }
}
