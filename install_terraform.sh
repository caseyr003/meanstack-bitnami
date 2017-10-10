# to install terraform
version=terraform_0.10.6_linux_amd64.zip
wget "https://releases.hashicorp.com/terraform/0.10.6/$version"
unzip $version -d ~/
rm $version
cd /usr/bin
sudo ln -s $HOME/terraform terraform
cd ~/Install-TerraForm

wget "https://github.com/oracle/terraform-provider-oci/releases/download/v2.0.1/linux.tar.gz"
tar -xvzf linux.tar.gz

rm -rf linux_386/ linux_arm/ linux.tar.gz
mkdir ~/.terraform.d
mkdir ~/.terraform.d/plugins
mv linux_amd64/ ~/.terraform.d/plugins/