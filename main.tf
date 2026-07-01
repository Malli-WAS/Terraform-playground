provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "demo_user" {
  name = var.user_name
}

resource "aws_iam_user" "Hari" {
  name = var.user_name1
}

resource "aws_iam_user" "Mallikaraja" {
  name = var.user_name2
}
resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "ec2" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

/*resource "aws_iam_user_policy_attachment" "attach_policy" {
  user = aws_iam_user.demo_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_user_policy_attachment" "attach_policy_1" {
  user = aws_iam_user.Hari.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_user_policy_attachment" "attach_policy_2" {
  user = aws_iam_user.Mallikaraja.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}*/
