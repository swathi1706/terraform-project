resource "aws_s3_bucket" "s3bucket1" {
    bucket = "awsterraform170602bucket"
    acl = "private"

    tags = {
        Name = "bucket1terra"
        Environment = "Dev"
    }
}