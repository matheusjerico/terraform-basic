resource "digitalocean_droplet" "web" {
  name     = var.droplet_names[count.index]
  image    = var.droplet_image
  region   = var.region
  size     = var.droplet_size
  ssh_keys = [var.ssh_keys]
  tags     = ["webserver"]

  count = length(var.droplet_names)

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      ssh_keys
    ]
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "root"
      host        = self.ipv4_address
      timeout     = "2m"
      private_key = file(var.private_key_path)
    }

    inline = [
      "curl -fsSL https://get.docker.com | sh",
      "docker run -d -p 80:80 nginx"
    ]

  }
}
