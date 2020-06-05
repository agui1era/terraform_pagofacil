resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "terraform-s3-bucket-22-05-2020"
  acl    = "public-read"

  tags = {
    Name        = "My bucket"
    Environment = "QA"
  }
}