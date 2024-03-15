resource "aws_instance" "amb-prod" {
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.micro"
  key_name = "Terraform"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}", "${aws_security_group.allow_http.id}"]
  user_data = file("script.sh")

  tags = {
    Name = "amb-prod"
  }
}
