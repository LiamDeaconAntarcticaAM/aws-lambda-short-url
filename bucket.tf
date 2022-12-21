resource "aws_s3_bucket" "short_urls_bucket" {
  bucket = var.short_url_domain

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

resource "aws_s3_bucket_acl" "short_urls_bucket_acl" {
  bucket = aws_s3_bucket.short_urls_bucket.id
  acl    = "public-read"
}