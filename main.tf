resource "oci_devops_repository" "devops_repositories" {
  for_each = var.devops_repositories

  name                 = each.value.name
  project_id           = each.value.project_id
  repository_type      = each.value.repository_type
  default_branch       = each.value.default_branch
  defined_tags         = each.value.defined_tags
  description          = each.value.description
  freeform_tags        = each.value.freeform_tags
  parent_repository_id = each.value.parent_repository_id

  dynamic "mirror_repository_config" {
    for_each = each.value.mirror_repository_config != null ? [each.value.mirror_repository_config] : []
    content {
      connector_id   = mirror_repository_config.value.connector_id
      repository_url = mirror_repository_config.value.repository_url
      dynamic "trigger_schedule" {
        for_each = mirror_repository_config.value.trigger_schedule != null ? [mirror_repository_config.value.trigger_schedule] : []
        content {
          custom_schedule = trigger_schedule.value.custom_schedule
          schedule_type   = trigger_schedule.value.schedule_type
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

