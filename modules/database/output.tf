output "database_cluster_host" {
  value = digitalocean_database_cluster.postgres.host
}

output "database_cluster_uri" {
  value = digitalocean_database_cluster.postgres.uri
}

output "database_cluster_user" {
  value = digitalocean_database_cluster.postgres.user
}

output "database_cluster_password" {
  value = digitalocean_database_cluster.postgres.password
}

output "database_cluster_id" {
  value = digitalocean_database_cluster.postgres.id
}

output "database_user_password" {
  value = digitalocean_database_user.username.password
}

output "database_user_name" {
  value = digitalocean_database_user.username.name
}
