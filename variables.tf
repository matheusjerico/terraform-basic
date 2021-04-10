variable "ssh_keys" {
  description = "Fingerprint to connect on Droplet Resource"
  type        = string
}

variable "droplet_image" {
  description = "Name of Droplet"
  type        = string
  default     = "ubuntu-18-04-x64"
}

variable "region" {
  description = "Region of Droplet"
  type        = string
  default     = "nyc1"
}

variable "droplet_size" {
  description = "Size of Droplet"
  type        = string
  default     = "s-1vcpu-1gb"
}

variable "droplet_names" {
  description = "Image of Droplet"
  type        = list(string)
  default     = ["web-1"]
}

variable "private_key_path" {
  description = "Path of privete key"
  type        = string
}

variable "lb_name" {
  description = "Name of Load Balancer"
  type        = string
}

variable "pg_cluster_name" {
  description = "Name of Database Cluster"
  type        = string
  default     = "postgres-cluster"
}

variable "pg_cluster_version" {
  description = "Verison of Database Cluster"
  type        = string
  default     = "12"
}

variable "pg_cluster_size" {
  description = "Size of Database Cluster"
  type        = string
  default     = "db-s-1vcpu-1gb"
}

variable "pg_nodes_count" {
  description = "Number of nodes on Database Cluster"
  type        = number
  default     = 1
}

variable "pg_database_name" {
  description = "Name of Database"
  type        = string
  default     = "database"
}

variable "pg_database_username" {
  description = "Username of user on Database"
  type        = string
  default     = "matheus"
}

variable "firewall_name" {
  description = "Firewall name"
  type        = string
  default     = "firewalldroplet"
}