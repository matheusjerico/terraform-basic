# Create a new domain
resource "digitalocean_domain" "subdomain" {
  name       = local.full_domain
  ip_address = digitalocean_loadbalancer.public.ip
}