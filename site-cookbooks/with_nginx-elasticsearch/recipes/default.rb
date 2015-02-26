#
# Cookbook Name:: with_nginx-elasticsearch
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "elasticsearch"

template "#{node.elasticsearch[:path][:conf]}/elasticsearch.yml" do
  source "with_nginx-elasticsearch/elasticsearch.erb"
  owner  node.elasticsearch[:user] and group node.elasticsearch[:user] and mode 0755
  notifies :restart, 'service[elasticsearch]' unless node.elasticsearch[:skip_restart]

end



