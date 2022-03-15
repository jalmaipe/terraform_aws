// Provider specific configs
module "my_ec2" {
  source        = "git::https://github.com/suppada/terraform.git//modules/ec2"
  ec2_count     = "1"
  ami_id        = "ami-0b0af3577fe5e3532"
  instance_type = "t2.micro"
  key_name      = "suresh"
  user_data     = "./user-ansible.sh"
  aws_region    = "us-east-1"
  subnet_id     = "subnet-06909708"

  environment_tag = "Test"
  instance_name   = "node1"
}