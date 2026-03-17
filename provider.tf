provider "aws" {
  resource "aws_iam_user" "User1" {
  name = "loadbalancer"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}
}