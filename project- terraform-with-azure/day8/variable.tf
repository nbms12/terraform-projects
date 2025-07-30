variable "numnetive" {
  default = -23
}
variable "ceilval" {
  default = 3.7
}

#################task 1  Project Naming Convention

variable "resname" {
  type    = string
  default = "Project ALPHA"
}


#################task 2  Resource Tagging
variable "default-tags" {
  type = map(string)
  default = {
    company    = "TechCorp"
    managed_by = "terraform"
  }
}
variable "environment-tags" {
  type = map(string)
  default = {
    environment = "production"
    cost_center = "cc-123"
  }
}


#################task 3  Storage Account Naming

variable "mystorageaccount" {
  type    = string
  default = "projectalphastorageaccount"
}

############## task 4 Network Security Group Rules

variable "myports" {
  type    = string
  default = "80,443,8080,3306"
}


#####  task 5 resource lookup 

variable "environment" {
  type        = string
  description = "environments setup"
  default     = "dev"
  validation {
    condition     = contains(["dev", "prod", "staging"], var.environment)
    error_message = "enter valid env name"
  }
}

variable "vmsizelist" {
  type = map(string)
  default = {
    "dev"     = "standard_D2s_v3"
    "staging" = "standard_D4s_v3"
    "prod"    = "standard_D8s_v3"
  }
}

####  task 6 , vm size len and exact name is present or not 


variable "vmvalidation" {
  type        = string
  description = "vm size validation 2-23 cars"
  default     = "standard_D2s_v3"
  validation {
    condition     = length(var.vmvalidation) > 2 && length(var.vmvalidation) <= 20
    error_message = "name length less than 20 chars.."
  }
  validation {
    condition     = strcontains(lower(var.vmvalidation), "standard")
    error_message = "name standard not present"
  }

}


#####   task 7 Backup Configuration senetive data leak prevention 

variable "Backup_name" {
  type    = string
  default = "test_backup"
  validation {
    condition     = endswith(var.Backup_name, "_backup")
    error_message = "invalid backup format name present"
  }
}

variable "credential-leak-test" {
  type      = string
  default   = "Erdsds22dsjds"
  sensitive = true
}


## verified tat file name is ending wit _backup is validated and sensitive data is not
## not shown 


### task 8 in main

# variable "filepat" {
#   type = string
#   validation {
#     condition     = dirname("azuredevops/terraform-daily/day11/main.tf")
#     error_message = ""
#   }
# }


# variable "checkexist" {
#   type = string
#   validation {
#     condition     = fileexists("${var.filepat} / main.tf")
#     error_message = "not exist"
#   }
# }

## task 9 Resource Set Management


variable "mynewenv" {
  type    = string
  default = "Central India"
}


### task 10 Cost Calculation

variable "mycost" {
  type = list(number)
  default = [ -50, 100, 75, 200 ]
}