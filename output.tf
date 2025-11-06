output "name_output"{
  value =var.testvariable
}
output "name_number"{
  value=var.testnumber
}
output "name_string"{
  value=var.testliststring
}


output "vm_names" {
  value = [for name in var.vm_names : name]
}

output "vm_ids" {
  value = [for vm in azurerm_linux_virtual_machine.vm : vm.id]
}
