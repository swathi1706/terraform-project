resource "aws_s3_bucket" "s3bucke1t" {
    bucket = "awsterraform170602bucket"
    acl = "private"

    tags = {
        Name = "bucket1terra"
        Environment = "Dev"
    }
}