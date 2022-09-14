variable "search_data_collection_ecr_name" {
  default = "search_data_collection"
  type    = string
}

variable "image_tag_mutability" {
  default = "MUTABLE"
  type    = string
}

variable "scan_on_push" {
  default = true
  type    = bool
}

variable "force_delete_image" {
  default = true
  type    = bool
}