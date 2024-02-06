variable "dashboard_name" {
  type        = string
  description = "Name of the dashboard."

}
variable "dashboard_body" {
  type        = any
  default     = null
  description = "Json file for describing the height width of the body."
}