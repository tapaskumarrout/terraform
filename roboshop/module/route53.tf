resource "aws_route53_record" "www" {
  zone_id = "Z01368741LHGOO0T1BT54"
  name    = "${var.COMPONENT["name"]}-dev"
  type    = "A"
  ttl     = "300"
  records = [aws_spot_instance_request.cheap_worker.private_ip]
}

