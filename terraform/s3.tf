// twitter.pl apex

resource "aws_s3_bucket" "twitterpl" {
  bucket_prefix = "website-twitter.pl-tf-"
}

resource "aws_s3_bucket_website_configuration" "twitterpl" {
  bucket = aws_s3_bucket.twitterpl.id

  redirect_all_requests_to {
    host_name = "www.twitter.pl"
    protocol = "https"
  }
}

resource "aws_s3_bucket_policy" "s3policy-twitterpl" {
  bucket = aws_s3_bucket.twitterpl.id
  policy = data.aws_iam_policy_document.s3policy-twitterpl.json
}

data "aws_iam_policy_document" "s3policy-twitterpl" {
  statement {
    principals {
      type = "Service"
      identifiers = [ "cloudfront.amazonaws.com" ]
    }

    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]

    condition {
      test = "StringEquals"
      variable = "AWS:SourceArn"
      values = [aws_cloudfront_distribution.twitterpl.arn]
    }

    resources = [
      aws_s3_bucket.twitterpl.arn,
      "${aws_s3_bucket.twitterpl.arn}/*",
    ]
  }
}

// www.twitter.pl

resource "aws_s3_bucket" "wwwtwitterpl" {
  bucket_prefix = "website-wwwtwitter.pl-tf-"
}

resource "aws_s3_object" "wwwtwitterpl-files" {
  bucket = aws_s3_bucket.wwwtwitterpl.id
  for_each = fileset ("../www.twitter.pl/","**/*.*")

  key = each.value
  source = "../www.twitter.pl/${each.value}"
  content_type = each.value
}

resource "aws_s3_bucket_policy" "s3policy-wwwtwitterpl" {
  bucket = aws_s3_bucket.wwwtwitterpl.id
  policy = data.aws_iam_policy_document.s3policy-wwwtwitterpl.json
}

data "aws_iam_policy_document" "s3policy-wwwtwitterpl" {
  statement {
    principals {
      type = "Service"
      identifiers = [ "cloudfront.amazonaws.com" ]
    }

    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]

    condition {
      test = "StringEquals"
      variable = "AWS:SourceArn"
      values = [aws_cloudfront_distribution.wwwtwitterpl.arn]
    }

    resources = [
      aws_s3_bucket.wwwtwitterpl.arn,
      "${aws_s3_bucket.wwwtwitterpl.arn}/*",
    ]
  }
}

resource "aws_s3_bucket_website_configuration" "wwwtwitterpl" {
  bucket = aws_s3_bucket.wwwtwitterpl.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  } 
}

