variable "environment" {
  type    = string
  default = "staging1"

}

variable "environment2" {
  type    = string
  default = "staging2"

}

variable "storage_disk" {
  type    = number
  default = 35
}

#boolean data type
variable "is_disk_deleted" {
  type    = bool
  default = true
}

#list values , all data types included 
variable "location_list" {
  type    = list(string)
  default = ["West Europe", "South India", "Central India"]
}

#mao - dictionary values 
variable "tags_resources" {
  description = "mappin resouce tas"
  type        = map(string)
  default = {
    "environment" = "dev"
    "autor"       = "manjunat"
    "revision"    = "revision2"
  }

}

#only unique values -set
variable "allowed_vm_size" {
  type    = list(string)
  default = ["Standard_DS1_v2", "Standard_DS2_v2"]
}

variable "storage_names" {
  type        = set(string)
  default     = ["storageclass44", "storageclass45", "storageclass46", "storageclass46"]
  description = "Storae classs names written in list order"

}

variable "my_loc" {
  default = "Canada Central"
  type    = string
}
