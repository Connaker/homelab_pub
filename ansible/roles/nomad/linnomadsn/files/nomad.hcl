name = "linnomadsn01"
region = "global"
datacenter = "dc1"

data_dir = "/opt/nomad"

enable_debug = false
disable_update_check = false

bind_addr = "192.168.1.240"

advertise {
  http = "192.168.1.240"
  rpc  = "192.168.1.240"
  serf = "192.168.1.240"
}

ports {
    http = 4646
    rpc = 4647
    serf = 4648
}

tls {
  http = false
  rpc = false
}

log_level = "DEBUG"
enable_syslog = true
log_file = "/var/log/nomad/nomad.log"

leave_on_terminate = true
leave_on_interrupt = false

server {
  enabled = true
  bootstrap_expect = 1
}