resource "null_resource" "new" {
  triggers = {
    abbc = timestamp()
  }
  count = 3
  provisioner "local-exec" {
    command = "echo Hello World - ${count.index}"
  }
}

