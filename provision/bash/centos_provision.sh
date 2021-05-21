sudo yum update -y
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo systemctl start docker
sudo docker pull jenkins/jenkins:lts

sudo docker run --detach --publish 7777:8080 --volume jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts





