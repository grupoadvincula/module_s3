data "aws_iam_policy_document" "api_resources_bucket_full_access" {
  statement {
    effect = "Allow"
    actions = [
      "s3:ListAllMyBuckets"
    ]
    resources = [
      "*"
    ]
  }
  statement {
    effect = "Allow"
    actions = [
      "s3:*"
    ]
    resources = [
      "*",
    ]
  }
}

data "http" "current_date" {
  url = "http://worldtimeapi.org/api/ip"
}
