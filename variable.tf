variable "subscription_id"{
  type=string
}
variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "testvariable"{
  type=string
  default="Hello MCIT!"
}
variable "testnumber"{
  type=number
  default=1
}
variable "testliststring"{
  type=list(string)
  default=["montreal","toronto","calgary"]
}
variable "storage_account_name"{
  type=string
  default="mcitoctostorage"
}
variable "account_tier"{
  type=string
  default="Standard"
}
variable "account_replication_type"{
  type=string
  default="GRS"
}
variable "environment"{
  type=string
  default="production"
}
variable "resource_group_name"{
  type=string
  default="mcitrgestelle"
}






variable "vm_names" {
  description = "Liste des noms de VMs à créer"
  type        = list(string)
  default     = ["vm1", "vm2", "vm3", "vm4", "vm5"]
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

variable "admin_password" {
  type    = string
  default = "P@ssword1234!"
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}
#AZE
