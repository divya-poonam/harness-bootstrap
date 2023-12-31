data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "demo_role_for_harness" {
  name               = local.role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  tags               = var.tags
}

data "aws_iam_policy_document" "demo_policy_document_for_harness" {
  statement {
    effect    = "Allow"
    actions   = ["s3:PutObject"]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "demo_policy_for_harness" {
  name        = local.policy_name
  description = local.policy_description
  policy      = data.aws_iam_policy_document.demo_policy_document_for_harness.json
  tags        = var.tags
}

resource "aws_iam_role_policy_attachment" "demo_role_policy_attachment_for_harness" {
  role       = aws_iam_role.demo_role_for_harness.name
  policy_arn = aws_iam_policy.demo_policy_for_harness.arn
}
