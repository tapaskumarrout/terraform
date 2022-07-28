//variable "COMP" {
//  default = ["frontend", "cart"]
//  type    = set(string)
//}

variable "COMP" {
  default = [
    {
      name = "frontend"
      port = 80
    },
    {
      name = "cart"
      port = 8080
    }
  ]
}

resource "null_resource" "null" {
  #for_each = var.COMP
  for_each = {
    for index, comp in var.COMP :
    index => comp
  }
  triggers = {
    abc = timestamp()
  }
  provisioner "local-exec" {
    command = "echo Component Name = ${each.value.name}, Port = ${each.value.port}"
  }
}


//module "sample" {
//  count  = length(var.COMP)
//  source = "./module"
//  comp   = element(var.COMP, count.index)
//}

