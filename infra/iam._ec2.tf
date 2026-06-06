resource "aws_iam_role" "ec2_role" {
  name = "${var.app}-beanstalk-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "ec2_attach" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier"
  depends_on = [aws_iam_role.ec2_role]
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name       = "${var.app}-beanstalk-ec2-profile"
  role       = aws_iam_role.ec2_role.name
  depends_on = [aws_iam_role.ec2_role]
}
