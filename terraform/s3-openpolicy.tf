data "aws_iam_policy_document" "openpolicy-twitterpl" {
  statement {
    sid = "PublicReadGetObject"
    effect = "Allow"

    actions = [
      "s3:GetObject",
    ]

    resources = [
      "${aws_s3_bucket.twitterpl.arn}/*",
    ]
  }
}
