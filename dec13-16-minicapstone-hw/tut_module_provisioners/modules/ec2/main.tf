resource "aws_instance" "instance" {
    instance_type = var.instance_type
    ami = var.ami
    security_groups = var.security_groups
    key_name = var.key_name

    connection {
        host = self.public_ip
        type = "ssh"
        user = "ec2-user"
        private_key = file(var.key_path)
    }

    provisioner "remote-exec" {
        inline = var.commands 
        on_failure = continue

    }

}