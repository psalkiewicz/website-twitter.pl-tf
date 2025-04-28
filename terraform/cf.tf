/*
 resource "aws_cloudfront_distribution" "twitterpl_import" {
    aliases                         = [
        "twitter.pl",
    ]
    arn                             = "arn:aws:cloudfront::604177568164:distribution/E1DX2TIWSTUDIN"
    caller_reference                = "1615312251336"
    continuous_deployment_policy_id = null
    default_root_object             = null
    domain_name                     = "d2xh7ljjj5pv4r.cloudfront.net"
    enabled                         = true
    etag                            = "E1A21HMGZV9Q4M"
    hosted_zone_id                  = "Z2FDTNDATAQYW2"
    http_version                    = "http2"
    id                              = "E1DX2TIWSTUDIN"
    in_progress_validation_batches  = 0
    is_ipv6_enabled                 = true
    last_modified_time              = "2021-03-09 17:50:52.408 +0000 UTC"
    price_class                     = "PriceClass_200"
    retain_on_delete                = false
    staging                         = false
    status                          = "Deployed"
    tags                            = {}
    tags_all                        = {}
    trusted_key_groups              = [
        {
            enabled = false
            items   = []
        },
    ]
    trusted_signers                 = [
        {
            enabled = false
            items   = []
        },
    ]
    wait_for_deployment             = true
    web_acl_id                      = null

    default_cache_behavior {
        allowed_methods            = [
            "GET",
            "HEAD",
        ]
        cache_policy_id            = "658327ea-f89d-4fab-a63d-7e88639e58f6"
        cached_methods             = [
            "GET",
            "HEAD",
        ]
        compress                   = false
        default_ttl                = 0
        field_level_encryption_id  = null
        max_ttl                    = 0
        min_ttl                    = 0
        origin_request_policy_id   = null
        realtime_log_config_arn    = null
        response_headers_policy_id = null
        smooth_streaming           = false
        target_origin_id           = "S3-Website-twitter.pl.s3-website.eu-central-1.amazonaws.com"
        trusted_key_groups         = []
        trusted_signers            = []
        viewer_protocol_policy     = "redirect-to-https"

        grpc_config {
            enabled = false
        }
    }

    origin {
        connection_attempts      = 3
        connection_timeout       = 10
        domain_name              = "twitter.pl.s3-website.eu-central-1.amazonaws.com"
                origin_access_control_id = null
        origin_id                = "S3-Website-twitter.pl.s3-website.eu-central-1.amazonaws.com"
        origin_path              = null

        custom_origin_config {
            http_port                = 80
            https_port               = 443
            origin_keepalive_timeout = 5
            origin_protocol_policy   = "http-only"
            origin_read_timeout      = 30
            origin_ssl_protocols     = [
                "TLSv1",
                "TLSv1.1",
                "TLSv1.2",
            ]
        }
    }

    restrictions {
        geo_restriction {
            locations        = []
            restriction_type = "none"
        }
    }

    viewer_certificate {
        acm_certificate_arn            = "arn:aws:acm:us-east-1:604177568164:certificate/3f8e0a32-c128-4e47-9b3d-7b20f80d9444"
        cloudfront_default_certificate = false
        iam_certificate_id             = null
        minimum_protocol_version       = "TLSv1.2_2019"
        ssl_support_method             = "sni-only"
    }
}
*/
