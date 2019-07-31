
output "kubernetes_cluster_host" {
  value = "Kubernetes Hostname: ${digitalocean_kubernetes_cluster.cluster.endpoint}"
}

output "kubernetes_cluster_ip" {
  value = "Kubernetes Cluster IP: ${digitalocean_kubernetes_cluster.cluster.ipv4_address}"
}
