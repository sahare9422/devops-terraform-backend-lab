variable "access_key" {
     default = "xxxxxx"
}
variable "secret_key" {
     default = "xxxxxxxx"
}
variable "region" {
     default = "us-east-1"
}
variable "bucket_name" {
     default = "tf-bucket-batch759"
     type    = string
}
variable "table_name" {
     default = "tf-lock-table"
     type    = string
}
