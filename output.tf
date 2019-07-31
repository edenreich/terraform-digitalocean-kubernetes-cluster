
output "cluster_host" {
  description = "Kubernetes Hostname"
  value       = "${digitalocean_kubernetes_cluster.cluster.endpoint}"
}

output "cluster_ip" {
  description = "Kubernetes Cluster IP"
  value       = "${digitalocean_kubernetes_cluster.cluster.ipv4_address}"
}
