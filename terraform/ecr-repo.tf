resource "aws_ecr_repository" "repository" {
  name                 = "hello-world-njs"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}