#
# Cookbook Name:: stunnel_smartos
# Recipe:: default
#
# Copyright 2014, SAWANOBORI Yukihiko
#
# Apache2
#

package 'stunnel' do
  action :install
end

directory '/opt/local/etc/stunnel/certs'
