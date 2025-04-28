data "aws_iam_policy_document" "openpolicy-wwwtwitterpl" {
  statement {
    sid = "PublicReadGetObject"
    effect = "Allow"

    actions = [
      "s3:GetObject",
    ]

    resources = [
      "${aws_s3_bucket.wwwtwitterpl.arn}/*",
    ]
  }
}
