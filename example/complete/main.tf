
module "logs_widgets" {
  source = "../../widget/logs"
  x      = 0
  y      = 0
  width  = 12
  height = 6

  region = "us-east-1"
  title  = "Registry Download Log"
  query  = "SOURCE '/aws/lambda/registry-download' | fields @timestamp, @message, @logStream, @log | sort @timestamp desc | limit 20"

}


module "metric_widget" {
  source            = "../../widget/metrics"
  x                 = 0
  y                 = 0
  width             = 12
  height            = 6
  metrics_namespace = "AWS/EC2"
  metrics_name      = "CPUUtilization"
  instance_id_name  = "InstanceId"
  instance_id       = "i-0f3c8fc96c8e0b806"
  period            = 300
  stat              = "Average"
  region            = "us-east-1"
  title             = "EC2 Instance CPU"


}


module "dashboard_widgets" {
  source = "../../widget/dashboard_builders"
  widget_templates = [
    module.logs_widgets.widget_template,
    module.metric_widget.widget_template
  ]
}



module "dashboard" {
  source         = "../.."
  dashboard_name = "My_dashboard"
  dashboard_body = module.dashboard_widgets.dashboard_widgets
}
