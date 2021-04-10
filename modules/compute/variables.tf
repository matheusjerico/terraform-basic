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
