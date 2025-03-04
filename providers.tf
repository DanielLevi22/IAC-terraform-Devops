terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.89.0"

    }
  }
}

provider "aws" {
  # Configuration options
  access_key = "test"
  secret_key = "test"
  region     = "us-east-1"

  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true



  endpoints {
    s3         = "http://s3.localhost.localstack.cloud:4566"
    dynamodb   = "http://dynamodb.localhost.localstack.cloud:4566"
    lambda     = "http://lambda.localhost.localstack.cloud:4566"
    sns        = "http://sns.localhost.localstack.cloud:4566"
    sqs        = "http://sqs.localhost.localstack.cloud:4566"
    sts        = "http://sts.localhost.localstack.cloud:4566"
    cloudfront = "http://localhost:4566"

  }
}
