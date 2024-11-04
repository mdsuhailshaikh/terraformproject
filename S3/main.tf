# resource "aws_s3_bucket" "my_bucket" {
#   bucket = "mybucket009varun"  # Replace with your actual bucket name
# }
resource "aws_s3_bucket" "my_bucket" {
  bucket = "mybucket009varun"  # This should match your actual S3 bucket name
}

output "s3_bucket_id" {
  value = aws_s3_bucket.my_bucket.id
}
