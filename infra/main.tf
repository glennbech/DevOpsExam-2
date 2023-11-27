variable "service_name" {
  description = "Name for the App Runner service"
  default     = "kandidat2028terraform"  # You can change the default value for the service name.
}

variable "image_repository_url" {
  description = "URL of the ECR repository for the App Runner service"
  default     = "244530008913.dkr.ecr.eu-west-1.amazonaws.com/ecrkandidat2028"  # Update with the actual ECR URL.
}

resource "aws_iam_role" "role_for_apprunner_service" {
  name               = "kjell-role-thingy"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_policy" "policy" {
  name        = "kjell-apr-policy-thingy"
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

data "aws_iam_policy_document" "policy" {
  statement {
    effect    = "Allow"
    actions   = ["rekognition:*", "s3:*", "cloudwatch:*"]
    resources = ["*"]
  }
}

