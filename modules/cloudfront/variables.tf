
  variable "origin_id" {
  type        = string
  description = "id do domínio"
 }
 variable "bucket_domain_name" {
  type        = string
  description = "Nome do domínio"
 }
 variable "cnd_price_class" {
  type        = string
  default     = "PriceClass_200"
  description = "Classe de preço ddo CDN"
 }

 variable "cnd_tags" {
  type        = map(string)
  default     = {}
  description = "Tags do CDN"
 }