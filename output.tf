output "database_cluster_host" {
  value = module.database.database_cluster_host
}

output "database_cluster_uri" {
  value = module.database.database_cluster_uri
}

output "database_cluster_user" {
  value = module.database.database_cluster_user
}

output "database_cluster_password" {
  value = module.database.database_cluster_password
}

output "database_user_password" {
  value = module.database.database_cluster_password
}

output "database_user_name" {
  value = module.database.database_user_name
}
output "droplet_ip" {
  value = module.compute.droplet_ip
}
output "droplet_id" {
  value = module.compute.droplet_id
}
output "lb_ip" {
  value = module.network.lb_ip
}
