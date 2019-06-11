#
# Cookbook:: mydockerjenkins
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.


## install and start docker
docker_service 'default' do
    action [:create, :start]
  end
  
  ## create a folder for volumes docker jenkins
  execute "run a script" do
    user "root"
    command <<-EOH
    mkdir -p /home/jenkins_home/secrets/ /
    chmod -R 777 /home/jenkins_home/
    EOH
  end
  
  ## pull the jenkins image
  docker_image 'jenkins' do
      tag 'latest'
      action :pull
  end
  
  ## run container
  docker_container 'my_jenkins' do
      repo 'jenkins'
      tag 'latest'
      port '50000:50000'
      port '8081:8080'
      volumes "/home/jenkins_home/secrets/:/var/jenkins_home/secrets/"
  end
