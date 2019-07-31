
resource "digitalocean_kubernetes_cluster" "cluster" {
  name    = "${var.cluster_name}"
  region  = "${var.do_region}"
  version = "${var.cluster_version}"
  tags    = "${var.cluster_tags}"

  node_pool {
    name       = "${var.cluster_pool_name}"
    tags       = "${var.cluster_node_tags}"
    size       = "${var.cluster_node_size}"
    node_count = "${var.cluster_node_count}"
  }
}