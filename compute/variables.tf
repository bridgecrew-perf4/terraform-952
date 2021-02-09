variable "key_pair_name" {
    type = string
    default = "myLabKeyPair"
}

variable "BastionSG" {
    type = string
}

variable "publicSubnetA" {
    type = string
}
