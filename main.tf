provider "aws" {
  region = "us-east-1"
}

#resource "aws_iam_user" "demo_user" {
 # name = var.user_name
#}

#resource "aws_iam_user" "Hari" {
 # name = var.user_name1
#}

#resource "aws_iam_user_policy_attachment" "attach_policy" {
 # user       = aws_iam_user.demo_user.name
  #policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
#}
#resource "aws_iam_user_policy_attachment" "attach_policy_1" {
 # user       = aws_iam_user.Hari.name
  #policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
#}

resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Jenkins-Terraform-EC2"
  }
}