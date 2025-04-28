
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

resource "aws_s3_bucket" "wwwtwitterpl" {
  bucket_prefix = "website-wwwtwitter.pl-tf-"
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

