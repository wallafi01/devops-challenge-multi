data "aws_key_pair" "key" {
  key_name           = var.key_pair
  include_public_key = true

}



resource "aws_instance" "webserver-ec2" {
    ami           = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [var.security_group_id]
    subnet_id     = var.public_subnet_id
    tags = {
        Name = var.name_ec2
    }
    iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name

    key_name = data.aws_key_pair.key.key_name
}

output "ec2_public_ip" {
  value = aws_instance.webserver-ec2.public_ip
}

output "ec2_instance_id" {
  value = aws_instance.webserver-ec2.id
}

