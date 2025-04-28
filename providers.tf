provider "aws" {
  region = "us-east-1"
}


data "aws_eks_cluster_auth" "auth" {
  name       = module.eks.cluster_name
  depends_on = [module.eks] # still good practice
}

provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  token                  = data.aws_eks_cluster_auth.auth.token
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}

