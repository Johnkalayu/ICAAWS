# create vpc_security-groups-id

resource "aws_security_group_name" "security_groups_id" {
    name = "aws-master-01"
    description = "ALLOWING ALL TRAFFIC,SSH,"
    vpc_id = ""

    ingress{
        description = "allwoing ssh "
        from_port = 22
        to_port = 22
        ip_protocol = "tcp"
        cidr_block = ["0.0.0.0/0"]
        
    }
    ingress {
        description = "allwoing all traffic"
        from_port = all
        to_port = all
        ip_protocol = "tcp"
        cidr_block = ["0.0.0.0/0"]
        cidr_ipv6 = ["::/0"]

    }


    
}
 