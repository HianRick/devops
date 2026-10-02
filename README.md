# Provisionamento de Cluster Kubernetes com Terraform e Kind

## Provisionamento de Cluster Kubernetes com Terraform e Kind

O cluster possui o nome:

devops

A topologia utilizada é composta por:

1 node control-plane
2 nodes worker

Representação da arquitetura:

                 Cluster devops
                       │
              ┌────────┴────────┐
              │                 │
        control-plane        workers
                           ┌────┴────┐
                           │         │
                        worker    worker

Provisionamento

O provisionamento é realizado através do provider tehcyx/kind do Terraform.
O arquivo main.tf define o cluster e sua topologia. O primeiro node é configurado como control-plane, enquanto os dois nodes adicionais são configurados como worker.
A quantidade de workers é definida através da variável node_count.

A configuração utilizada neste projeto é:

cluster_name = "devops"
node_count   = 2

Dessa forma, o Terraform cria automaticamente os três nodes necessários para o cluster.

## Componentes

CoreDNS - Responsável pelo DNS interno do kubernetes, permitindo que os serviços e aplicações encontrem outros recursos pelo nome
Kube-apiserver - a porta de entrada do Kubernetes. Recebe e processa as requisições feitas pelo kubectl e por outras ferramentas.
Kube-controller-manager - Executa os controllers responsáveis por manter o cluster no estado desejado. 


#dfsdfds