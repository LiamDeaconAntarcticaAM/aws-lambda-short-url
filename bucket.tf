resource "aws_s3_bucket" "short_urls_bucket" {
  bucket = var.short_url_domain
  acl    = "public-read"

  tags = local.tags
}

resource "aws_s3_bucket_website_configuration" "short_urls_bucket_website_config" {
  bucket = aws_s3_bucket.short_urls_bucket.id

    index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

}
