
#
# Cookbook Name:: apache
# Recipe:: default


#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

package "apache2" do
        action :install
end

service "apache2" do
        action [ :enable, :start]
end

cookbook_file "/var/www/html/a.html" do
        source 'a.html'
        owner 'root'
        group 'root'
        action :create
end
