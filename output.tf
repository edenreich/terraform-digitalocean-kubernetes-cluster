
output "cluster_host" {
  description = "Kubernetes Hostname"
  value       = "${digitalocean_kubernetes_cluster.cluster.endpoint}"
}

output "cluster_ip" {
  description = "Kubernetes Cluster IP"
  value       = "${digitalocean_kubernetes_cluster.cluster.ipv4_address}"
}

output "cluster_client_key" {
  description = "Kubernetes Client Key"
  value       = "${digitalocean_kubernetes_cluster.*.kube_config.0.client_key}"
}

output "cluster_client_certificate" {
  description = "Kubernetes Client Certificate"
  value       = "${digitalocean_kubernetes_cluster.*.kube_config.0.client_certificate}"
}

output "cluster_ca_certificate" {
  description = "Kubernetes CA certificate"
  value       = "${digitalocean_kubernetes_cluster.*.kube_config.0.cluster_ca_certificate}"
}
