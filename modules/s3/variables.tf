variable "s3_bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

 variable "s3_tags" {
  type        = map(string)
  default     = {}
  description = "Tags do S3"
 }