locals {

    widgets = [
      {
        type = "metrics"
        x = var.x
        y = var.y
        width = var.width
        height = var.height
        properties = {
          metrics = [
            [
              var.metrics_namespace,
              var.metrics_name,
              var.instance_id_name,
              var.instance_id
            ]
          ]
          period = var.period
          stat = var.stat
          region = var.region
          title = var.title
        }
      }
    ]
}