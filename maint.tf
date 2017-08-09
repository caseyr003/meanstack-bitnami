provider "baremetal" {
  tenancy_ocid = "${var.tenancy_ocid}"
  user_ocid = "${var.user_ocid}"
  fingerprint = "${var.fingerprint}"
  private_key_path = "${var.private_key_path}"
  private_key_password="${var.private_key_password}"
}

module "vcn" {
  source = "./modules/vcn"
  tenancy_ocid = "${var.tenancy_ocid}"
  compartment_ocid = "${var.compartment_ocid}"
}

module "mean-stack" {
  AD="1"
  source = "./modules/compute-instance"
  tenancy_ocid = "${var.tenancy_ocid}"
  subnet_ocid = "${module.vcn.subnet1_ocid}"
  compartment_ocid = "${var.compartment_ocid}"
  ssh_public_key = "${file(var.ssh_public_key_path)}"
  instance_name = "meanstack"
}

module "mean-stack-config" {
    source = "./modules/mean-stack-config"
    tenancy_ocid = "${var.tenancy_ocid}"
    compartment_ocid = "${var.compartment_ocid}"
    mean-stack-public-ip = "${module.mean-stack.public_ip}"
}


output "MEAN Stack URL" {
  value = "http://${module.mean-stack.public_ip}:8080"
}



