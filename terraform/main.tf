variable "services" {
  default = {}
}

provider "kubernetes" {}

resource "kubernetes_ingress" "api" {
  metadata {
    name = "default"
  }

  spec {}
}

