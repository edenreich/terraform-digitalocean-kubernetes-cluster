
provider "digitalocean" {
  version = "1.5.0"
  token   = "${var.do_token}"
}