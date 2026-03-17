output "iam_user_name" {
  value = aws_iam_user.demo_user.name
}
output "iam_user_name_1" {
  value = aws_iam_user.Hari.name
}
output "instance_id" {
  value = aws_instance.my_ec2.id
}

output "public_ip" {
  value = aws_instance.my_ec2.public_ip
}