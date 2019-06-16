output "cicd_network_id" {
  value       = "${module.cicd_network.network_id}"
  description = "The id of the CICD Network being created"
}

output "cicd_subnet_ids" {
  value       = "${module.cicd_network.subnet_ids}"
  description = "The id of all CICD subnets being created"
}
