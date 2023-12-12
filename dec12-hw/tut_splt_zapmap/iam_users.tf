resource "aws_iam_user" "lb" {
  name  = "aws-lb-${count.index}"
  path  = "/system/"
  count = 3



  tags = {
    Name = "aws-lb-${count.index}"
  }
}

output "account_combined" {
  value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}