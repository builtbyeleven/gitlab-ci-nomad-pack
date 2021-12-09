variable "datacenters" {
  description = "A list of datacenters in the region which are eligible for task placement"
  type        = list(string)
  default     = ["dc1"]
}

variable "region" {
  description = "The region where the job should be placed"
  type        = string
  default     = "global"
}

variable "count" {
  description = "The number of apps to be deployed"
  type        = number
  default     = 3
}

variable "consul_service_name" {
  description = "The consul service you wish to load balance"
  type        = string
  default     = "webapp"
}

variable "version_tag" {
  description = "The docker image version. For options, see https://hub.docker.com/r/gitlab/gitlab-runner"
  type        = string
  default     = "14.5.1"
}

variable "resources" {
  description = "The resource to assign to the GitLab runner"
  type = object({
    cpu    = number
    memory = number
  })
  default = {
    cpu    = 200,
    memory = 256
  }
}
