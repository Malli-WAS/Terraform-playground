output "iam_user_name" {
  value = aws_iam_user.demo_user.name
}
output "iam_user_name_1" {
  value = aws_iam_user.Hari.name
}
output "iam_user_name_2" {
  value = aws_iam_user.Mallikaraja.name
}
output "instance_id" {
  value = aws_instance.ec2_instance.id
}

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

output "private_ip" {
  value = aws_instance.ec2_instance.private_ip
}