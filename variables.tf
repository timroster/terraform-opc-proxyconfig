variable "ibmcloud_api_key" {
  type        = string
  description = "The IBM Cloud api token, required for ROKS cluster rolling worker updates"
  default     = ""
}

variable "resource_group_name" {
  type        = string
  description = "The resource group name, required for ROKS cluster rolling worker updates"
  default     = ""
}

variable "region" {
  type        = string
  description = "The region, required for ROKS cluster rolling worker updates"
  default     = ""
}

variable "proxy_endpoint" {
  type = object({
    proxy_host = string
    proxy_port = string
  })
  description = "Host and port exposed by HTTP tunnel proxy"
}

variable "cluster_config_file" {
  type        = string
  description = "Cluster config file for Kubernetes cluster"
}

variable "cluster_name" {
  type        = string
  description = "Cluster name, required for ROKS cluster rolling worker updates"
  default     = ""
}

variable "cluster_type" {
  type        = string
  description = "The type of cluster (openshift or kubernetes)"
  default     = "ocp4"
}

variable "allow_network" {
  type        = string
  description = "CIDR network range to skip for proxy traffic, only used for ROKS"
  default     = "10.0.0.0/8"
}

variable "no_proxy_hosts" {
  type        = string
  description = "List (comma separated) of hosts to skip from the proxy, used for all cluster types"
  default     = "s3.direct.us.cloud-object-storage.appdomain.cloud"
}

variable "ocp-release-dev-image" {
  type        = string
  description = "url to access privately the openshift release dev image used in a daemonset, only used for ROKS"
  default     = "quay.io/openshift-release-dev/ocp-v4.0-art-dev@sha256:3d0aa55199bceb4c94698432df382b1d7289bf361a35ca4954a5a255b82a0e03"
}

variable "roks_cluster" {
  type        = bool
  description = "Variable to identify if the cluster is Red Hat OpenShift on IBM Cloud"
  default     = false
}

