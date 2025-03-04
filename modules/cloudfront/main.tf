resource "aws_cloudfront_distribution" "cloudfront" {
  origin {
    domain_name = var.bucket_domain_name
    origin_id   = var.origin_id

    custom_origin_config {
      https_port             = 443
      http_port              = 80
      origin_protocol_policy = "http-only"
      origin_ssl_protocols   = ["TLSv1"]
    }
  }

  enabled = true

  default_cache_behavior {
    target_origin_id  = var.origin_id
    allowed_methods   = ["GET", "HEAD"]
    cached_methods    = ["GET", "HEAD"]

    forwarded_values {
      query_string = true

      cookies {
        forward = "all"
      }
    }

    viewer_protocol_policy = "redirect-to-https"  
    min_ttl               = 0
    max_ttl               = 0
    default_ttl           = 0
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  price_class = var.cnd_price_class

  tags = var.cnd_tags
}
