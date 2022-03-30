# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Qua 30 Mar 2022
# TERRAFORM MODULE AWS ELB

resource "aws_elb" "elb" {

    name                        = var.name_elb
    subnets                     = var.subnets 
    security_groups             = var.security_groups 
    internal                    = var.internal
    cross_zone_load_balancing   = var.cross_zone_load_balancing
    idle_timeout                = var.idle_timeout
    connection_draining         = var.connection_draining
    connection_draining_timeout = var.connection_draining_timeout


    listener {

        instance_port           = var.instance_port 
        instance_protocol       = var.instance_protocol
        lb_port                 = var.lb_port
        lb_protocol             = var.lb_protocol
        ssl_certificate_id      = var.ssl_certificate_id
    }

    health_check {

        interval                = var.interval
        healthy_threshold       = var.healthy_threshold
        unhealthy_threshold     = var.unhealthy_threshold
        timeout                 = var.timeout
        target                  = var.target
    }

    tags = merge(
        {
        "Name" = var.name_elb
        },
        var.tags,
    ) 

}