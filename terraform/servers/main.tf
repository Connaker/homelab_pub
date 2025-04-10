resource "proxmox_vm_qemu" "vms" {
    for_each = local.servers
    
    target_node   = "pve"
    vmid          = each.value.vmid
    name          = each.value.name
    desc          = each.value.desc
      
    agent             = var.agent
    cores             = each.value.cores
    sockets           = var.sockets
    cpu_type          = var.cpu_type
    memory            = each.value.memory

    clone             = each.value.clone
    full_clone        = var.full_clone

    boot              = each.value.boot
    scsihw            = each.value.scsihw
    vm_state          = var.vm_state
    automatic_reboot  = var.automatic_reboot

    pool              = each.value.pool

    # Cloud-Init Configuration
    ciupgrade         = var.ciupgrade
    nameserver        = var.nameserver
    ipconfig0         = "ip=${each.value.ipconfig0}/24,gw=192.168.1.1"
    ipconfig1         = "ip=${each.value.ipconfig1}/24,gw=10.10.10.1"
    skip_ipv6         = var.skip_ipv6

    ciuser            = var.user
    cipassword        = var.password
    sshkeys           = var.sshkeys

    serial {
        id = var.serial_id
    }


    dynamic "network" {
    for_each = each.value.network_interfaces
        content {
            id        = network.value.id
            bridge    = network.value.bridge
            model     = network.value.model
            firewall  = network.value.firewall
            mtu       = network.value.mtu
        }
    }

    disks {
        scsi {
            scsi0 {
                disk {
                    storage = var.disks_scsi_scsi0_disk_storage
                    size    = each.value.disks_scsi_scsi0_disks_size
                    cache   = var.disks_scsi_scsi0_disk_cache
                }
            }
        }
        ide {
          ide2 {
            cloudinit {
              storage = var.disks_ide_ide2_cloudinit_storage
            }
          }
        }
    }
}
