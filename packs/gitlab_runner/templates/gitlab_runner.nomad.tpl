job [[ template "job_name" ]] {
  [[ template "region" .]]
  datacenters = [[ .gitlab_runner.datacenters  | toJson ]]
  type = "service"

  group "app" {
    count = [[ .gitlab_runner.count ]]

    task "server" {
      driver = "docker"
      config {
        image = "gitlab/gitlab-runner"
        network_mode = "host"
      }

      resources {
        cpu    = [[ .gitlab_runner.resources.cpu ]]
        memory = [[ .gitlab_runner.resources.memory ]]
      }
    }
  }
}
