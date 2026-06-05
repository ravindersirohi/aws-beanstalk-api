locals {
  tags = {
    project     = "Demo Beanstalk API"
    description = "To demonstrate the use of Terraform to deploy a .NET Core API to AWS Elastic Beanstalk"
    environment = terraform.workspace
    application = var.app
  }
}