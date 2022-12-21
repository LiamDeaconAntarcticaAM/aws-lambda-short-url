terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
      # configuration_aliases = [ aws.cloudfront_acm ]
    }
    archive = {
        source = "hashicorp/archive"
    }

  }
  required_version = ">= 0.13"
}
