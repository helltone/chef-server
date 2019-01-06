hostname  = node['hostname']
file '/etc/motd' do
    content "Hostname is #{hostname}"
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

