resource "null_resource" "mean-stack-config" {
provisioner "file" {
        connection {
            host="${var.mean-stack-public-ip}"
            user = "opc"
            private_key = "${file(var.ssh_private_key_path)}"
            }
        source     = "userdata/"
        destination = "/tmp/"
      }
provisioner "remote-exec" {
 connection {
            host="${var.mean-stack-public-ip}"
            user = "opc"
            private_key = "${file(var.ssh_private_key_path)}"
            }

    inline = [
      "chmod +x /tmp/meanstack.sh",
      "sudo /tmp/meanstack.sh ",
    ]

  }

}
