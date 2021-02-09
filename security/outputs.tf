output "BastionSG" {
    value = aws_security_group.BastionSG.id
    description = "The generated security group id"
}
