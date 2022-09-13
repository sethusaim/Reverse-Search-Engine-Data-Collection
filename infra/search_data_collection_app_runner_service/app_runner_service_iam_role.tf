resource "aws_iam_role" "apprunner-service-role" {
  name               = var.app_runner_service_service_role_name
  assume_role_policy = data.aws_iam_policy_document.apprunner-service-assume-policy.json
}

resource "aws_iam_role_policy_attachment" "apprunner-service-role-attachment" {
  role       = aws_iam_role.apprunner-service-role.name
  policy_arn = var.app_runner_service_role_policy_arn
}

data "aws_iam_policy_document" "apprunner-service-assume-policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["build.apprunner.amazonaws.com"]
    }
  }
}
