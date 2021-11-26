# 1. Resource Group Name
variable "resource_group_name" {
  description = "Resource Group Name"
  type = string
  default = "myrg-var"
}

# 2. Virtual Network Name
variable "virtual_network_name" {
  description = "Virtual Network Name"
  type = string
  default = "myvnet-var"
}

# 3. Kubernetes Cluster Name
variable "cluster_name" {
  description = "The name for the AKS cluster"
  type = string
  default = "aks-var"
}

# 4. Nginx Ingress Controller
variable "nginx_ingress_controller" {
  description = "Nginx Ingress Ingress Controller Name"
  type = string
  default = "nginx-controller"
}