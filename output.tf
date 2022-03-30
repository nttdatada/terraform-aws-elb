# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Qua 30 Mar 2022
# TERRAFORM MODULE AWS ELB


output "elb_id" {


    description = "ID Elb"
    value       = aws_elb.elb.id

}