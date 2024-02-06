output "widget_template" {
    value = templatefile("${path.module}/logs.tpl", {
        type    = var.type
        x       = var.x
        y       = var.y
        width   = var.width
        height  = var.height
        region  = var.region
        title   = var.title
        query   = var.query
    })
}