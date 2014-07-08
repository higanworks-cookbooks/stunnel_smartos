include_recipe "#{cookbook_name}::default"

if node[:stunnel][:data_bag][:encrypt]
  tnls = Chef::EncryptedDataBagItem.load(node[:stunnel][:data_bag][:key], node[:stunnel][:data_bag][:item])
else
  tnls = data_bag_item(node[:stunnel][:data_bag][:key], node[:stunnel][:data_bag][:item])
end

tnls['ca'].each_pair do |name, pem|
  file "/opt/local/etc/stunnel/certs/#{name}.pem" do
    mode 0600
    content pem
  end
end

tnls['servers'].each do |svc|
  stunnel_connection svc['name']  do
    accept svc['accept']
    connect svc['connect']
    cafile svc['cafile'] ? "/opt/local/etc/stunnel/certs/#{svc['cafile']}" : nil
    verify svc['verify'] ? svc['verify'] : nil
  end
end

include_recipe "#{cookbook_name}::server"
