#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

powershell_script 'Install IIS' do
    action :run
    code 'add-windowsfeature Web-Server'
end

service 'w3svc' do
    action [ :enable, :start ]
end

template 'c:\inetpub\wwwroot\Default.htm' do
    source 'Default.htm.erb'
    rights :read, 'Everyone'
end