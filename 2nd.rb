bash 'jenkins_install' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
  cp /tmp/jenkins.war /usr/share/tomcat/webapps/.
  
  EOH
end

service "tomcat" do
 action :stop
 action :start
end

