variable "region" {
  description = "Region of Droplet"
  type        = string
  default     = "nyc1"
}

variable "lb_name" {
  description = "Name of Load Balancer"
  type        = string
}

variable "firewall_name" {
  description = "Firewall name"
  type        = string
  default     = "firewalldroplet"
}

variable "droplet_id" {
  description = "Droplet ids"
  type        = list(string)
}

variable "cluster_id" {
  description = "Cluster ids"
  type        = string
}

variable "troubleshooting" {
  description = "Free access on droplet port 22"
  type        = bool
  default     = false
}

variable "subdomain" {
  description = "Name of subdomain"
  type        = string
  default     = "terraform"
}

variable "domain" {
  description = "Name of domain"
  type        = string
  default     = "basicterraform.com"
}
