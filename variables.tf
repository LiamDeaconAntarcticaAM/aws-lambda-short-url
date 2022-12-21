variable "region" {
  type        = string
  default     = "eu-west-1"
  description = "The AWS reegion to use for the Short URL project."
}

variable "short_url_domain" {
  type        = string
  description = "The domain name to use for short URLs."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags for any resources created"
}