output "vpc_id" {
  description = "Network identified VPC"
  value       = aws_vpc.my_vpc.id
}

output "subnet_address" {
  description = aws_List subnet address spacesd
  value       = aws_subnet.internal.*.address_prefixes
}

output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.my_igw.id
}

