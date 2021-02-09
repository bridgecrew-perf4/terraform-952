output "vpc_id" {
    value = aws_vpc.main.id
    description = "The generated vpc id"
}

output "publicSubnetA" {
    value = aws_subnet.publicA.id
}

output "publicSubnetB" {
    value = aws_subnet.publicB.id
}

output "publicSubnetC" {
    value = aws_subnet.publicC.id
}
