

#aws account
#create redhat ec2 T2.micro instance
#create security group and open tomcat ports   or required ports 8080 etc
#attach security group to ec2 instance
#install java openjdk 1.8+
#
## change hostname to tomcat
sudo hostnamectl set-hostname tomcat
sudo su - ec2-user
cd /opt
# install Java JDK 1.8+ as a pre-requisit for tomcat to run.
sudo yum install git wget -y
sudo yum install java-1.8.0-openjdk-devel -y
# install wget unzip packages.
sudo yum install wget unzip -y

sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.86/bin/apache-tomcat-9.0.86.zip
sudo unzip apache-tomcat-9.0.86.zip
sudo rm -rf apache-tomcat-9.0.86.zip
### rename tomcat for good naming convention
sudo mv apache-tomcat-9.0.86 tomcat9
### assign executable permissions to the tomcat home directory
sudo chmod 777 -R /opt/tomcat9
sudo chown ec2-user -R /opt/tomcat9
### start tomcat
sh /opt/tomcat9/bin/startup.sh
# create a soft link to start and stop tomcat
# This will enable us to manage tomcat as a service
sudo ln -s /opt/tomcat9/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat9/bin/shutdown.sh /usr/bin/stoptomcat
starttomcat
sudo su - ec2-user
