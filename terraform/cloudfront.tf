resource "aws_cloudfront_distribution" "twitterpl" {
  origin {
    domain_name = aws_s3_bucket_website_configuration.twitterpl.website_endpoint
    origin_id = aws_s3_bucket_website_configuration.twitterpl.website_endpoint 
    custom_origin_config {
      http_port = 80
      https_port = 443
      origin_ssl_protocols = ["TLSv1","TLSv1.1","TLSv1.2"]
      origin_protocol_policy = "http-only"
    }
  }

  enabled = true
  aliases = ["twitter.pl"]
  is_ipv6_enabled = true
  price_class = "PriceClass_200"
  //default_root_object = "index.html"

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = aws_s3_bucket_website_configuration.twitterpl.website_endpoint 
    compress = false
    viewer_protocol_policy = "redirect-to-https"
    cache_policy_id = "658327ea-f89d-4fab-a63d-7e88639e58f6"
  }

  viewer_certificate {
    acm_certificate_arn = "arn:aws:acm:us-east-1:604177568164:certificate/3f8e0a32-c128-4e47-9b3d-7b20f80d9444"
    minimum_protocol_version = "TLSv1.2_2021"
    ssl_support_method = "sni-only"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
      locations = [] 
    }
  }
}

resource "aws_cloudfront_distribution" "wwwtwitterpl" {
  origin {
    domain_name = aws_s3_bucket_website_configuration.wwwtwitterpl.website_endpoint
    origin_id = aws_s3_bucket_website_configuration.wwwtwitterpl.website_endpoint 
    custom_origin_config {
      http_port = 80
      https_port = 443
      origin_ssl_protocols = ["TLSv1","TLSv1.1","TLSv1.2"]
      origin_protocol_policy = "http-only"
    }
  }

  enabled = true
  aliases = ["www.twitter.pl"]
  is_ipv6_enabled = true
  price_class = "PriceClass_200"
  //default_root_object = "index.html"

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = aws_s3_bucket_website_configuration.wwwtwitterpl.website_endpoint 
    compress = false
    viewer_protocol_policy = "redirect-to-https"
    cache_policy_id = "658327ea-f89d-4fab-a63d-7e88639e58f6"
  }

  viewer_certificate {
    acm_certificate_arn = "arn:aws:acm:us-east-1:604177568164:certificate/3f8e0a32-c128-4e47-9b3d-7b20f80d9444"
    minimum_protocol_version = "TLSv1.2_2021"
    ssl_support_method = "sni-only"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
      locations = [] 
    }
  }
}

