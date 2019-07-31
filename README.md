# Terraform-Digitalocean-Kubernetes-Cluster Module

This is a starter kit for deploying a kuberentes cluster on digital ocean.

## Usage

First export `TF_VAR_do_token=[digital-ocean-access-token]`

Then define your kubernetes cluster:

```hcl
variable "do_token" {}

module "digitalocean_kubernetes_cluster" {
  source             = "github.com/edenreich/terraform-digitalocean-kubernetes-cluster"
  do_token           = "${var.do_token}"
  do_region          = "fra1"
  cluster_name       = "test"
  cluster_node_size  = "s-1vcpu-2gb"
  cluster_node_count = 2
}
```