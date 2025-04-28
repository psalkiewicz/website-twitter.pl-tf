resource "aws_route53_record" "r53_twitterpl" {
  zone_id = local.twitterpl_zoneid
  name    = "twitter.pl"
  type    = "A"
  allow_overwrite = true

  alias {
    name = aws_cloudfront_distribution.twitterpl.domain_name
    zone_id = aws_cloudfront_distribution.twitterpl.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "r53_wwwtwitterpl" {
  zone_id = local.twitterpl_zoneid
  name    = "www.twitter.pl"
  type    = "A"
  allow_overwrite = true

  alias {
    name = aws_cloudfront_distribution.wwwtwitterpl.domain_name
    zone_id = aws_cloudfront_distribution.wwwtwitterpl.hosted_zone_id
    evaluate_target_health = false
  }
}
