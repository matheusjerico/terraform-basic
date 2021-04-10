module "compute" {
  source           = "./modules/compute"
  droplet_names    = var.droplet_names
  droplet_image    = var.droplet_image
  region           = var.region
  droplet_size     = var.droplet_size
  ssh_keys         = var.ssh_keys
  private_key_path = var.private_key_path
}

module "database" {
  source               = "./modules/database"
  region               = var.region
  pg_cluster_name      = var.pg_cluster_name
  pg_cluster_version   = var.pg_cluster_version
  pg_cluster_size      = var.pg_cluster_size
  pg_nodes_count       = var.pg_nodes_count
  pg_database_name     = var.pg_database_name
  pg_database_username = var.pg_database_username
}

module "network" {
  source        = "./modules/network"
  lb_name       = var.lb_name
  firewall_name = var.firewall_name
  droplet_id    = module.compute.droplet_id
  cluster_id    = module.database.database_cluster_id
}

