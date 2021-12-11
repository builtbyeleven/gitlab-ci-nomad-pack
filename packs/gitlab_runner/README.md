# GitLab Runner Service

This pack is a Nomad job that runs GitLab runner as a service

## Variables

- `job_name` (string) -  The name to use as the job name which overrides using the pack name
- `count` (number) - The number of app instances to deploy
- `datacenters` (list of strings) - A list of datacenters in the region which are eligible for task placement
- `region` (string) - The region where jobs will be deploy
