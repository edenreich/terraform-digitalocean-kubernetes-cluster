
# Basic Usage

***provider.tf***
```hcl
provider "kubernetes" {
  host = "${module.digitalocean_kubernetes_cluster.cluster_host}"

  client_certificate     = "${base64decode(module.digitalocean_kubernetes_cluster.cluster_host.cluster_client_certificate)}"
  client_key             = "${base64decode(module.digitalocean_kubernetes_cluster.cluster_host.cluster_client_key)}"
  cluster_ca_certificate = "${base64decode(module.digitalocean_kubernetes_cluster.cluster_host.cluster_ca_certificate)}"
}
```

***kubernetes_cluster.tf***
```hcl
module "digitalocean_kubernetes_cluster" {
  source             = "github.com/edenreich/terraform-digitalocean-kubernetes-cluster"
  do_token           = "${var.do_token}"
  do_region          = "fra1"
  cluster_name       = "test"
  cluster_node_size  = "s-1vcpu-2gb"
  cluster_node_count = 2
}
```

***variables.tf***
```hcl
variable "do_token" {}
```

The creation of the cluster will take approximately up to 8min, so please be patient :)