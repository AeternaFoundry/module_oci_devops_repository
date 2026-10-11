variable "devops_repositories" {
  description = <<EOT
Map of devops_repositories, attributes below
Required:
    - name
    - project_id
    - repository_type
Optional:
    - default_branch
    - defined_tags
    - description
    - freeform_tags
    - parent_repository_id
    - mirror_repository_config (block):
        - connector_id (optional)
        - repository_url (optional)
        - trigger_schedule (optional, block):
            - custom_schedule (optional)
            - schedule_type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                 = string
    project_id           = string
    repository_type      = string
    default_branch       = optional(string)
    defined_tags         = optional(map(string))
    description          = optional(string)
    freeform_tags        = optional(map(string))
    parent_repository_id = optional(string)
    mirror_repository_config = optional(object({
      connector_id   = optional(string)
      repository_url = optional(string)
      trigger_schedule = optional(object({
        custom_schedule = optional(string)
        schedule_type   = string
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

