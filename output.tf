output "SERVICEBUS_CONNECTION_QUEUE" {
  value = "SERVICEBUS_CONNECTION_QUEUE=${replace(azurerm_servicebus_namespace.shorts1.default_primary_connection_string, azurerm_servicebus_namespace.shorts1.default_primary_key, "hidden for demo")}"
  //value     = "SERVICEBUS_CONNECTION_QUEUE=${azurerm_servicebus_namespace.shorts1.default_primary_connection_string}"
  sensitive = true
}

output "SERVICEBUS_QUEUENAME" {
  value     = "SERVICEBUS_QUEUENAME=${azurerm_servicebus_queue.shorts1.name}"
  sensitive = true
}
