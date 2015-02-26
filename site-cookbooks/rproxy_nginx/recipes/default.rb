#
# Cookbook Name:: rproxy_nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe "nginx"

directory "/var/www" do
  owner "root"
  group "root"
  mode "0755"
  action :create
end

directory "/var/www/nginx-default" do
  owner "nginx"
  group "nginx"
  mode "0755"
  action :create
end

template "/var/www/nginx-default/index.html" do
  source "www/index.html"
  mode  "0644"
  owner "nginx"
  group "nginx"
  notifies :reload, 'service[nginx]'
end

template "#{node['nginx']['dir']}/sites-available/rproxy" do
  source "sites-available/default"
  mode  "0644"
  owner "root"
  group "root"
  notifies :reload, 'service[nginx]'
end

link "#{node['nginx']['dir']}/sites-enabled/rproxy" do
  owner "root"
  to "#{node['nginx']['dir']}/sites-available/rproxy"
  notifies :reload, 'service[nginx]'
end

