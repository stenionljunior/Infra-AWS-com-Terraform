output "lb_dns_name" {
  description = "DNS name do load balancer."
  value       = concat(aws_lb.lb.*.dns_name, [""])[0]
}