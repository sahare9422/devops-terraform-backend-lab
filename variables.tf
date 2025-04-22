variable "access_key" {
     default = "xxxxxxx"
}
variable "secret_key" {
     default = "xxxxxxxxxx"
}
variable "region" {
     default = "ap-south-1"
}
variable "bucket_name" {
     default = "tf-bucket-palash9422"
     type    = string
}
variable "table_name" {
     default = "tf-lock-table"
     type    = string
}
