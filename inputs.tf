# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Qua 30 Mar 2022
# TERRAFORM MODULE AWS ELB


variable "name_elb" {

    description = ""
    type        = string
}


variable "subnets" {

    description = ""
    type        = list(string)
    default     = [] 
}


variable "security_groups" {

    description = ""
    type        = list(string)
    default     = []
}


variable "internal" {

    description = ""
    type        = bool
}


variable "cross_zone_load_balancing" {

    description = ""
    type        = bool
}

variable "idle_timeout" {

    description = ""
    type        = number
}

variable "connection_draining" {

    description = ""
    type        = bool
}

variable "connection_draining_timeout" {

    description = ""
    type        = number
}

variable "instance_port" {

    description = ""
    type        = number
}

variable "instance_protocol" {

    description = ""
    type        = string
}

variable "lb_port" {

    description = ""
    type        = number 
}

variable "lb_protocol" {

    description = ""
    type        = string
}

variable "ssl_certificate_id" {

    description = ""
    type        = string
}

variable "interval" {

    description = ""
    type        = number
}

variable "healthy_threshold" {

    description = ""
    type        = number
}


variable "unhealthy_threshold" {

    description = ""
    type        = number
}

variable "timeout" {

    description = ""
    type        = string
}


variable "target" {

    description = ""
    type        = string
}

variable "tags" {}