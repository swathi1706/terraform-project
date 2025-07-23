resource "aws_s3_bucket" "s3bucket" {
    bucket = "awsterraform170602bucket"
    ac1 = "private"

    tags = {
        Name = "bucketterra"
        Environment = "Dev"
    }
}