resource "aws_eip" "nat" {
  instance = aws_instance.privapp.id
}