terraform {
  backend "s3" {
    bucket = "mybucket009varun"
    key    = "state"
    region = "us-east-1"
    dynamodb_table = "mydb"
  }
}

