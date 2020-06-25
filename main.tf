provider "kubernetes" {
  host          = "https://localhost:6443"
}

# Example 1 - local module
module "nginx" {
  source        = "./module/nginx"
}

# Example 2 - Module in the Terraform Public Registry
# https://registry.terraform.io/
module "mongodb" {
  source        = "skydome/mongodb/kubernetes"
  version       = "0.0.4"
  name          = "test-mongo"
  namespace     = "default"
  replicacount  = 0

  # Reference - https://github.com/skydome/terraform-kubernetes-mongodb
  # Reference - https://registry.terraform.io/modules/skydome/mongodb/kubernetes/0.0.4

}
