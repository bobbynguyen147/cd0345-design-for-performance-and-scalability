# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
}

# TODO: provision 2 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami           = "ami-026b57f3c383c2eec"
  count         = "4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-07b99286383896616"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
#resource "aws_instance" "Udacity_M4" {
#  ami           = "ami-026b57f3c383c2eec"
#  count         = "2"
#  instance_type = "m4.large"
#  subnet_id     = "subnet-07b99286383896616"
#  tags = {
#    Name = "Udacity M4"
#  }
#}