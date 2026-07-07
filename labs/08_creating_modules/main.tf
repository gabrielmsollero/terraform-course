module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = "10.0.0.0/16"
  vpc_name = "demo-vpc"
}

module "subnet_module" {
  source = "./modules/subnet"

  vpc_id      = module.vpc.vpc_id
  subnet_cidr = "10.0.1.0/24"
  subnet_name = "demo-subnet"
  az          = "us-east-1b"
}

module "prod_workload" {
  source = "./modules/ec2"

  instance_name = "demo-instance"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.subnet_module.subnet_id
}
