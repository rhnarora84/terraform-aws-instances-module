


variable "instance_config_map" {
    type = map(object({
      ami = string
      instance_type = string
      ebs = bool
    }))
  
}




