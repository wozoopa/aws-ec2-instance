aws-ec2-instance
=================
A Terraform module for creating an arbitrary EC2 instance

Input Variables
---------------
- `instance_name` - A name to give the instance, to show up in the console
- `instance_type` - The EC2 instance type
- `subnet_id` - The subnet ID where the instance should reside
- `ami_id` - The EC2 AMI
- `number_of_instances` - How many instances to create
- `tags` - Any tags you wish to apply to these instances

Outputs
-------
- `ec2_instance_id` - The instance IDe new security group created, which allows SSH access from the bastion host

Usage
-----
You can use this in your Terraform templates with the following steps:

1.) Add a module resource to your template, e.g. `main.tf`
```
module "ec2_instance" {
  source              = "git::https://.../aws-ec2-instance.git"
  instance_name       = "web1"
  instance_type       = "t2.micro"
  subnet_id           = "subnet-1234565a"
  ami_id              = "ami-948cb384"
  number_of_instances = 1
}

```

