variable "buckets_set" {
  type    = set(string)
  default = ["bucket-0", "bucket-1", "bucket-2"]
}

variable "buckets_map" {
  type = map(string)
  default = {
    "bucket-a" = "bucket-a-name"
    "bucket-b" = "bucket-b-name"
    "bucket-c" = "bucket-c-name"
  }
}
