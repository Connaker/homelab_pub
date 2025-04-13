locals {
  servers = {
    linnomadsn ={
      vmid                          = 200
      name                          = "hl1-lnomadsn-01"
      desc                          = "Linux Nomad Server Node 01"
      cores                         = 4
      cpu_type                      = "host"
      memory                        = 4096
      clone                         = "ubuntu-cloud"
      boot                          = "order=scsi0"
      scsihw                        = "virtio-scsi-single"
      pool                          = "dev"
      network_interfaces = [
        {
          id       = 0
          bridge   = "vmbr1"
          model    = "virtio"
          firewall = true
          mtu      = 1500
        },
        {
          id       = 1
          bridge   = "vmbr2"
          model    = "virtio"
          firewall = false
          mtu      = 9000
        }
      ]
      # Cloud-Init Configuration
      ipconfig0                     = "192.168.1.240"
      ipconfig1                     = "10.10.10.3"
      disks_scsi_scsi0_disks_size   = "80G"
    }

    linnomadcn1 ={
      vmid                          = 201
      name                          = "hl1-lnomadcn-01"
      desc                          = "Linux Nomad Server Node 02"
      cores                         = 4
      cpu_type                      = "host"
      memory                        = 4096
      clone                         = "ubuntu-cloud"
      boot                          = "order=scsi0"
      scsihw                        = "virtio-scsi-single"
      pool                          = "dev"
      network_interfaces = [
        {
          id       = 0
          bridge   = "vmbr1"
          model    = "virtio"
          firewall = true
          mtu      = 1500
        },
        {
          id       = 1
          bridge   = "vmbr2"
          model    = "virtio"
          firewall = false
          mtu      = 9000
        }
      ]
      # Cloud-Init Configuration
      ipconfig0                     = "192.168.1.241"
      ipconfig1                     = "10.10.10.4"
      disks_scsi_scsi0_disks_size   = "80G"
    }

    linconsul ={
      vmid                          = 202
      name                          = "hl1-linconsul-01"
      desc                          = "Linux Consul Server"
      cores                         = 4
      cpu_type                      = "host"
      memory                        = 4096
      clone                         = "ubuntu-cloud"
      boot                          = "order=scsi0"
      scsihw                        = "virtio-scsi-single"
      pool                          = "dev"

      network_interfaces = [
        {
          id       = 0
          bridge   = "vmbr1"
          model    = "virtio"
          firewall = true
          mtu      = 1500
        },
        {
          id       = 1
          bridge   = "vmbr2"
          model    = "virtio"
          firewall = false
          mtu      = 9000
        }
      ]
      # Cloud-Init Configuration
      ipconfig0                     = "192.168.1.242"
      ipconfig1                     = "10.10.10.5"
      disks_scsi_scsi0_disks_size   = "80G"
    }
    deploy ={
      vmid                          = 400
      name                          = "hl1-deploy-01"
      desc                          = "Devops Tools Server"
      cores                         = 4
      cpu_type                      = "host"
      memory                        = 4096
      clone                         = "ubuntu-cloud"
      boot                          = "order=scsi0"
      scsihw                        = "virtio-scsi-single"
      pool                          = "dev"

      network_interfaces = [
        {
          id       = 0
          bridge   = "vmbr1"
          model    = "virtio"
          firewall = true
          mtu      = 1500
        },
        {
          id       = 1
          bridge   = "vmbr2"
          model    = "virtio"
          firewall = false
          mtu      = 9000
        }
      ]

      # Cloud-Init Configuration
      ipconfig0                     = "192.168.1.230"
      ipconfig1                     = "10.10.10.6"
      disks_scsi_scsi0_disks_size   = "80G"
    }
  }
}