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


