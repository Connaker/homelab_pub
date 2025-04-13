datacenter = "dc1"
data_dir = "/opt/consul"

server = true
bootstrap_expect = 1

advertise_addr = "192.168.1.242"
bind_addr = "192.168.1.242" 
client_addr = "192.168.1.242"

log_level="DEBUG"
log_file = "/var/log/consul/consul.log"

ui = true