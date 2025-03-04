module "s3" {
  source         = "./modules/s3"
  s3_bucket_name = "s3-iac"
  s3_tags               = {
    Iac = true
  }
}

module "cloudfront" {
  source             = "./modules/cloudfront"
  origin_id          = module.s3.bucket_id
  cnd_price_class    = "PriceClass_200"
  cnd_tags               = {
    Iac = true
  }
  bucket_domain_name = module.s3.bucket_domain_name
  depends_on         = [module.s3]
}