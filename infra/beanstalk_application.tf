resource "aws_elastic_beanstalk_application" "app" {
  name        = "eb_${var.app}_app"
  description = "Elastic Beanstalk app for .NET Core API"
}
