resource "aws_lb" "lb" {
  name = var.name
  load_balancer_type        = "application"
  subnets                   = [aws_subnet.subnet_publica.id, aws_subnet.secondary.id]
  security_groups           = [ "${aws_security_group.sg_lb.id}" ]
}

resource "aws_lb_target_group" "lb_target_group" {
  name     = "desafio-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
}

resource "aws_lb_listener" "lblistener" {
  load_balancer_arn = aws_lb.lb.arn
  port              = "80"
  protocol          = "HTTP"  
 
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lb_target_group.arn
  }
}

resource "aws_lb_target_group_attachment" "lb_ec2_attachment" {
  target_group_arn = aws_lb_target_group.lb_target_group.arn
  target_id        = aws_instance.app.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "lb_ec21_attachment" {
  target_group_arn = aws_lb_target_group.lb_target_group.arn
  target_id        = aws_instance.app1.id
  port             = 80
}
