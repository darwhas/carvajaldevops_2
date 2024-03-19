variable "aws_region" {
  description = "La región de AWS en la que deseas crear los recursos"
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "La clave de acceso de AWS"
}

variable "aws_secret_key" {
  description = "La clave secreta de AWS"
}

variable "resource_group" {
  type        = string
  default     = "RG-devops-TestApp1"
  description = "Resource group a desplegar los recursos"
}

variable "vpc_cidr_block" {
  description = "El bloque CIDR de la VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  type        = string
  default     = "vpc-Test-2"
  description = "Nombre de la red"
  validation {
    condition     = can(regex("(VN-)+(AEU|ASC|ABS)+(-ECP-)+(DEV|TST|QAS|PRD|BCK|SHD)+(-)+([a-zA-Z])+(?:(-[0-9]{1,3}))?$", var.vnet_name))
    error_message = "The resource name doesnt follow organizational standars."
  }
}



variable "tags" {
  type = object({
    description      = string
    createdBy        = string
    creatorEmail     = string
    responsible      = string
    responsibleEmail = string
    projectName      = string
    companyName      = string
    environment      = string
    organizationUnit = string
    tier             = string
    dataProfile      = string
    creationDate     = string
    costCenter       = string
  })

  default = {
    description      = "demo"
    createdBy        = "devops"
    creatorEmail     = "devops@xxx.com"
    responsible      = "xxxx"
    responsibleEmail = "xxxx@xxx.com"
    projectName      = "devops"
    companyName      = "ecp"
    environment      = "DEV"
    organizationUnit = "XXX"
    tier             = "Front"
    dataProfile      = "Internal"
    creationDate     = "09/09/2023"
    costCenter       = "a1"
  }
  description = "Additional information that allows filtering"
}
