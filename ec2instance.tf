resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (us-east-1)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name      = "your-key-pair" # Replace with your key pair name

  tags = {
    Name = "example-instance"
  }

  # Optional: Add user data to install software on launch
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
              EOF
}

# Output the public IP of the instance
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip
}
