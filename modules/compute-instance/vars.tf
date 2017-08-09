variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "subnet_ocid" {}
variable "ssh_public_key"{}
variable "instance_shape"{default= "VM.Standard1.1"}
variable "image_ocid" {default = "ocid1.image.oc1.phx.aaaaaaaazt3sfrz2lfbha6okihvh4bwaufikhilhsek43hpvzxitl47nv2bq"}
variable "instance_name"{}
variable "AD" {
    default = "1"
}
variable "MEAN_STACK" {
	default = "./userdata/meanstack.sh"
}
