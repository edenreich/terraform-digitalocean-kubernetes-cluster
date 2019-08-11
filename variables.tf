
variable "do_access_token" {}

variable "cluster_name" {
  default = "k8s-test"
}

variable "cluster_pool_name" {
  default = "k8s-test"
}

variable "do_region" {
  default = "fra1"
}

variable "cluster_version" {
  default = "1.14.4-do.1"
}

variable "cluster_tags" {
  default = []
}

variable "cluster_node_size" {
  default = "s-1vcpu-2gb"
}

variable "cluster_node_count" {
  default = 2
}

variable "cluster_node_tags" {
  default = ["test"]
}
