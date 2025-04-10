

variable "proxmox_api_url" {
  type = string
}
variable "proxmox_api_token_id" {
  type      = string
  sensitive = true
}
variable "proxmox_api_token_secret" {
  type      = string
  sensitive = true
}
variable "user" {
  description = "Username for the connection"
  type        = string
}

variable "password" {
  description = "Password for the connection"
  type        = string
}

variable "sshkeys"{
  
}

variable "agent" {
    default = 1
}

variable "sockets" {
    type = number
    default = 1
}

variable "cpu_type" {
    type = string
    default = "host"
}

variable "full_clone" {
    type = bool
    default = true
}

variable "vm_state" {
    type = string
    default = "running"
}

variable "automatic_reboot" {
    type = bool
    default = true 
}

variable "ciupgrade" {
    type = bool
    default = true
}

variable "nameserver" {
    type = string
    default = "192.168.1.1"
}

variable "skip_ipv6" {
    type = bool
    default = true
}

variable "serial_id" {
    type = number
    default = 0
}

# variable network_id {
#   type = number
#   default = 0
# }
# variable network_bridge {
#   type = string
#   default = "vmbr1"
# }
# variable network_model {
#   default = "virtio"
# }
# variable network_firewall {
#   type = bool
#   default = false
# }
# variable network_mtu {
#   type = number
#   default = 0
# }

variable disks_scsi_scsi0_disk_storage {
  type = string 
  default = "vmpool"
}

variable disks_scsi_scsi0_disk_cache {
  type = string 
  default = "writeback"
}

variable disks_ide_ide2_cloudinit_storage {
  type = string 
  default = "vmpool"
}