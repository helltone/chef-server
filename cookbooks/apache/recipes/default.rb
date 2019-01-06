#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'apache' do
    package_name 'httpd'
    action :install
end

service 'apache' do
    action [:start, :enable]
end
