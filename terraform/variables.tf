variable "cluster_name" {
  description = "Nome do cluster Kind"
  type        = string
}

variable "node_count" {
  description = "Quantidade de workers"
  type        = number
}

variable "cpu" {
  description = "CPU por node"
  type        = number
}

variable "memory" {
  description = "Memória por node em GB"
  type        = number
}
