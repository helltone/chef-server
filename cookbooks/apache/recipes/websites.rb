file 'sites' do
    path '/var/www/html/index.html'
    content 'test content'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end
