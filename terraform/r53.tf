/*


twitter.pl
A
Simple
-
Yes
d2xh7ljjj5pv4r.cloudfront.net.

*/

resource "aws_route53_record" "r53_twitterpl" {
  zone_id = "Z09733357QJC6DUNF5SR"
  name    = "twitter.pl"
  type    = "A"
  allow_overwrite = true

  alias {
    name = aws_cloudfront_distribution.twitterpl.domain_name
    zone_id = aws_cloudfront_distribution.twitterpl.hosted_zone_id
    evaluate_target_health = false
  }
}

