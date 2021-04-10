
resource "digitalocean_firewall" "web" {
  name        = var.firewall_name
  droplet_ids = var.droplet_id

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = (var.troubleshooting == true) ? ["0.0.0.0/0", "::/0"] : []
  }

  inbound_rule {
    protocol                  = "tcp"
    port_range                = "22"
    source_load_balancer_uids = [digitalocean_loadbalancer.public.id]
  }

  inbound_rule {
    protocol                  = "tcp"
    port_range                = "80"
    source_load_balancer_uids = [digitalocean_loadbalancer.public.id]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}

resource "digitalocean_database_firewall" "postegres-fw" {
  cluster_id = var.cluster_id

  rule {
    type  = "tag"
    value = "webserver"
  }
}