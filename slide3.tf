variable "nested_map1" {
type = map(map(string))
default = {
group1 = {"name" = "Alice", "age" = "25"}
group2 = {"name" = "bob", "age" = "30"}
}
}
locals{
flattened_map1  = flatten([for k, v in var.nested_map1 : [for kk, vv in v : { group = k, key = kk, value = vv }]])​
}   ​

output "flattened_map_result1" {​
  value = local.flattened_map​1
}
