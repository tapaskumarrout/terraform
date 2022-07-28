//module "frontend" {
//  source = "./frontend"
//}
//module "cart" {
//  source = "./cart"
//}
//module "catalogue" {
//  source = "./catalogue"
//}
//module "payment" {
//  source = "./payment"
//}
//module "shipping" {
//  source = "./shipping"
//}
//module "mysql" {
//  source = "./mysql"
//}
//module "mongodb" {
//  source = "./mongodb"
//}
//module "redis" {
//  source = "./redis"
//}
//module "rabbitmq" {
//  source = "./rabbitmq"
//}
//
//module "user" {
//  source = "./user"
//}

module "roboshop" {
  count     = length(var.COMP)
  source    = "./module"
  COMPONENT = var.COMP[count.index]
}


