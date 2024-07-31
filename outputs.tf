output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "rds_endpoint" {
  description = "RDS Endpoint"
  value       = aws_db_instance.mysql.endpoint
}

output "elasticache_endpoint" {
  description = "ElastiCache Redis Endpoint"
  value       = aws_elasticache_cluster.redis.cache_nodes[0].address
}
