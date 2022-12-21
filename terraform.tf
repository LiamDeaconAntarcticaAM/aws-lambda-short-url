terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
      alias  = "cloudfront_acm"
    }
    archive = {
        source = "hashicorp/archive"
        version = "*"
    }
  }
}
