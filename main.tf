provider "aws" {
  region     = "us-east-1"

  
}

resource "aws_iam_user" "demo_user" {
  name = var.user_name
  name = var.user_name1
}

resource "aws_iam_user" "demo_user1" {
  name = var.user_name1
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = aws_iam_user.demo_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}