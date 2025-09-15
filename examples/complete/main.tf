

provider "aws" {
    region = "eu-central-1"
  
}



module "instances" {
  source = "./module/instances"

    instance_config_map = {

    "us-east-1" = {
        ami = "ami-0b09ffb6d8b58ca91"
        instance_type = "t2.micro"
        ebs = true
    }

    "eu-central-1" = {
        ami = "ami-02ff57195b457bd9a"
        instance_type = "t3.micro"
        ebs = false

    }


}
}