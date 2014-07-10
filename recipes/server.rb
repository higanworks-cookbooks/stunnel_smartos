include_recipe "#{cookbook_name}::default"
include_recipe "#{cookbook_name}::smf"

template '/opt/local/etc/stunnel/stunnel.conf' do
  source 'stunnel.conf.erb'
  cookbook 'stunnel'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[stunnel]'
end

execute "Create stunnel SSL Certificates" do
  command "openssl req -subj \"#{node[:stunnel][:server_ssl_req]}\" -new -nodes -x509 -out /opt/local/etc/stunnel/stunnel.pem -keyout /opt/local/etc/stunnel/stunnel.pem"
  creates '/opt/local/etc/stunnel/stunnel.pem'
end

file '/opt/local/etc/stunnel/stunnel.pem' do
  mode 0600
end

node.default[:stunnel][:certificate_path] = '/opt/local/etc/stunnel/stunnel.pem'
node.default[:stunnel][:client_mode] = false

service "stunnel" do
  action :enable
end
