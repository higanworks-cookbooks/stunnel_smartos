if node[:platform] == 'smartos'
  default[:stunnel][:pidfile] = "/var/run/stunnel.pid"
end

default[:stunnel][:data_bag][:key] = 'stunnel'
default[:stunnel][:data_bag][:item] = 'my_item'
default[:stunnel][:data_bag][:encrypt] = false
