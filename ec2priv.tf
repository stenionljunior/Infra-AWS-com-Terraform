resource "aws_instance" "privapp" {
    ami                         = var.amiec2instancia
    instance_type               = var.tipoinstancia
    key_name                    = var.namekeyec2
    subnet_id                   = aws_subnet.subnet_privada.id
    security_groups             = [ "${aws_security_group.permitessh.id}" ]

    tags = {
      Name = "privapp"
    }   
}