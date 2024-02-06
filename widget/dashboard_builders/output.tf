output "dashboard_widgets" {
  value = {
    widgets = [
      for widget in var.widget_templates : jsondecode(widget)
    ]
  }
}