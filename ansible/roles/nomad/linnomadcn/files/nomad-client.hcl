region = "global"
datacenter = "dc1"
data_dir = "/opt/nomad/data"

bind_addr = "192.168.1.241"

enable_debug = false
disable_update_check = false


log_level = "DEBUG"
enable_syslog = true
log_file = "/var/log/nomad/nomad.log"


advertise {
  http = "192.168.1.241"  # Specify the address to advertise to other nodes
  rpc = "192.168.1.241"
  serf = "192.168.1.241"
}

ports {
    http = 4646
    rpc = 4647
    serf = 4648
}

client {
  host_volume "test" {
    path = "/opt/nomad/volumes/test"
    read_only = true 
  }
  
  enabled = true
  servers = ["192.168.1.240"]
  alloc_mounts_dir = "/opt/nomad/alloc_mounts"
  alloc_dir = "/opt/nomad/alloc"
}

server_join {
  retry_join = ["192.168.1.240"]
  retry_max = 3
  retry_internal = "15s"
}


consul {
  address = "127.0.0.1:8500"
  auto_advertise = true

  client_auto_join = true
  client_service_name = "nomad-clients"
}