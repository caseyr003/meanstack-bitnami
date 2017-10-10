wget "https://github.com/oracle/terraform-provider-oci/releases/download/v2.0.1/linux.tar.gz"
tar -xvzf linux.tar.gz

rm -rf linux_386/ linux_arm/ linux.tar.gz
mkdir ~/.terraform.d
mkdir ~/.terraform.d/plugins
mv linux_amd64/ ~/.terraform.d/plugins/
