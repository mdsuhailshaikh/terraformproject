terraform {
  backend "s3" {
    bucket = "khalidsuhails3"
    key    = "state"
    region = "ap-south-1"
    dynamodb_table = "khalidsuhailtable"
  }
}
