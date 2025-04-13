consul {
  address = "192.168.1.242:8500"
  service_address = "192.168.1.240"
  auto_advertise = true
  server_auto_join = true
  client_auto_join = true 
  server_service_name = "nomad-servers"
  client_service_name = "nomad-clients"
  tags = ["nomad"]
}