terraform {
  required_version = ">= 1.5.0"

  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "~> 0.9"
    }
  }
}

provider "kind" {}

resource "kind_cluster" "devops" {
  name = var.cluster_name

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"
    }

    dynamic "node" {
      for_each = range(var.node_count)

      content {
        role = "worker"
      }
    }
  }
}

output "cluster_name" {
  value = kind_cluster.devops.name
}

output "endpoint" {
  value = kind_cluster.devops.endpoint
}
