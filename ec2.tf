resource "aws_instance" "web" {
  ami           = "ami-0e872aee57663ae2d"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "WordPress"
  }

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y apache2 php php-mysql
              cd /var/www/html
              wget https://wordpress.org/latest.tar.gz
              tar -xzf latest.tar.gz
              mv wordpress/* .
              chown -R www-data:www-data /var/www/html
              EOF
}
