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

## Further Information

After the cluster is created the following variables are accessable for your own usage:

```
cluster_host
cluster_ip
cluster_client_key
cluster_client_certificate
cluster_ca_certificate
cluster_raw_config
```

And you may access them with the following syntax:


```hcl
  "${module.digitalocean_kubernetes_cluster.[output]}"
```

Where `[output]` is one of the keys mentioned above.