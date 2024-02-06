output "widget_template" {
    value = templatefile("${path.module}/metric.tpl", {
        type                    = var.type
        x                       = var.x
        y                       = var.y
        width                   = var.width
        height                  = var.height
        metrics_namespace       = var.metrics_namespace
        metrics_name            = var.metrics_name
        instance_id_name  = var.instance_id_name
        instance_id = var.instance_id
        period                  = var.period
        stat                    = var.stat
        region                  = var.region
        title                   = var.title
    })
}