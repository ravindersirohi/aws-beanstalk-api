resource "aws_elastic_beanstalk_application" "app" {
  name        = "eb-${var.app}-app"
  description = "Elastic Beanstalk app for .NET Core API"
}
