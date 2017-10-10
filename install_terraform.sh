# to install terraform
version=terraform_0.10.6_linux_amd64.zip
wget "https://releases.hashicorp.com/terraform/0.10.6/$version"
unzip $version
rm $version
cd /usr/bin
sudo ln -s $HOME/terraform terraform
