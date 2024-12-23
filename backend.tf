terraform {
  backend "s3" {
    bucket = "example-lyfedge799"
    key    = "state"
    region = "us-west-1"
    dynamodb_table = "backend"
  }
}
