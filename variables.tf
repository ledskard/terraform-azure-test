variable "location" {
  description = "Azure Region"
  type        = string
  default     = "Brazil South"  
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
  default     = "prod-resource-group" 
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "app_service_plan_name" {
  description = "App Service Plan name"
  type        = string
  default     = "asp-prod-plan"
}

variable "web_app_name" {
  description = "Web App name"
  type        = string
  default     = "uverify-input-core-prod"
}

variable "acr_username" {
  description = "ACR username"
  type        = string
}

variable "build_tag" {
  description = "Docker image tag"
  type        = string
  default     = "latest"
}

variable "acr_resource_group_name" {
  description = "Nome do grupo de recursos do Azure Container Registry"
  type        = string
}

variable "acr_image_name" {
  description = "Name of the image in ACR"
  type        = string
  default     = "uverify-input-core" 
}

variable "acr_registry_name" {
  description = "Name of the Azure Container Registry"
  type        = string
  default     = "stratesys"
}

variable "database_url" {
  description = "URL da base de dados"
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "Ambiente de Deploy"
  type        = string
  default     = "dev"
}
variable "acr_password" {
  description = "ACR password"
  type        = string
  sensitive   = true
}
