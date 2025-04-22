terraform {
  backend "s3" {
    bucket         = "tf-bucket-palash9422"
    key            = "global/s3/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "tf-lock-table"
    encrypt        = true
  }
}
