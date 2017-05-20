#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
file "hello.txt" do
     action :create
         content "This is my first program"
         end
directory "src"

package "httpd"

 service "httpd" do
 action :start
end

package "ntp"

service "ntpd" do
 action :start
end

