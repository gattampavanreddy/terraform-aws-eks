variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "sg_names" {
    type = list(string)
    default = [
        # Database
        "mongodb","redis","mysql","rabbitmq",
        "ingress_alb",
        #Bastion/jump host
        "bastion",
        #openvpn
        "openvpn", 
        "eks_control_plane", "eks_node"
    ]
}
