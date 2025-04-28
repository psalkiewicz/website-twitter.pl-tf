resource "aws_cloudfront_distribution" "twitterpl" {
  origin {
    domain_name = aws_s3_bucket.twitterpl.bucket_regional_domain_name
    origin_id = "s3-twitterpl" 
  }

  enabled = true
  aliases = ["twitter.pl"]
  is_ipv6_enabled = true
  price_class = "PriceClass_200"


  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "s3-twitterpl"
    compress = false
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }
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
