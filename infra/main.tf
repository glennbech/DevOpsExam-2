resource "aws_iam_role" "role_for_apprunner_service" {
  name               = "kandidate2028role"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_policy" "policy" {
  name        = "kandidate2028policy"
  description = "Policy for App Runner instance"
  policy      = data.aws_iam_policy_document.policy.json
}

data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["tasks.apprunner.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

data "aws_iam_policy_document" "policy" {
  statement {
    effect    = "Allow"
    actions   = ["rekognition:*", "s3:*", "cloudwatch:*"]
    resources = ["*"]
  }
}

resource "aws_iam_role_policy_attachment" "attachment" {
  role       = aws_iam_role.role_for_apprunner_service.name
  policy_arn = aws_iam_policy.policy.arn
}

resource "aws_apprunner_service" "service" {
  service_name = var.service_name

  instance_configuration {
    instance_role_arn = aws_iam_role.role_for_apprunner_service.arn
    cpu               = 256
    memory            = 1024
  }

  source_configuration {
    authentication_configuration {
      access_role_arn = "arn:aws:iam::244530008913:role/service-role/AppRunnerECRAccessRole"
    }

    image_repository {
      image_configuration {
        port = "8080"
      }
      image_identifier      = var.image_repository_url
      image_repository_type = "ECR"
    }

    auto_deployments_enabled = true
  }
}

terraform {
  backend "s3" {
    bucket = "kandidat-2028"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}
