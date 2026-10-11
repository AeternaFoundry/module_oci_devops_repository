output "devops_repositories_id" {
  description = "Map of id values across all devops_repositories, keyed the same as var.devops_repositories except keys with no id are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_repositories_branch_count" {
  description = "Map of branch_count values across all devops_repositories, keyed the same as var.devops_repositories except keys with no branch_count are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.branch_count if v.branch_count != null }
}
output "devops_repositories_commit_count" {
  description = "Map of commit_count values across all devops_repositories, keyed the same as var.devops_repositories except keys with no commit_count are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.commit_count if v.commit_count != null }
}
output "devops_repositories_compartment_id" {
  description = "Map of compartment_id values across all devops_repositories, keyed the same as var.devops_repositories except keys with no compartment_id are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "devops_repositories_default_branch" {
  description = "Map of default_branch values across all devops_repositories, keyed the same as var.devops_repositories except keys with no default_branch are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.default_branch if v.default_branch != null && length(v.default_branch) > 0 }
}
output "devops_repositories_defined_tags" {
  description = "Map of defined_tags values across all devops_repositories, keyed the same as var.devops_repositories except keys with no defined_tags are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "devops_repositories_description" {
  description = "Map of description values across all devops_repositories, keyed the same as var.devops_repositories except keys with no description are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.description if v.description != null && length(v.description) > 0 }
}
output "devops_repositories_freeform_tags" {
  description = "Map of freeform_tags values across all devops_repositories, keyed the same as var.devops_repositories except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "devops_repositories_http_url" {
  description = "Map of http_url values across all devops_repositories, keyed the same as var.devops_repositories except keys with no http_url are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.http_url if v.http_url != null && length(v.http_url) > 0 }
}
output "devops_repositories_lifecyle_details" {
  description = "Map of lifecyle_details values across all devops_repositories, keyed the same as var.devops_repositories except keys with no lifecyle_details are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.lifecyle_details if v.lifecyle_details != null && length(v.lifecyle_details) > 0 }
}
output "devops_repositories_mirror_repository_config" {
  description = "Map of mirror_repository_config values across all devops_repositories, keyed the same as var.devops_repositories except keys with no mirror_repository_config are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => one(v.mirror_repository_config) if v.mirror_repository_config != null && length(v.mirror_repository_config) > 0 }
}
output "devops_repositories_name" {
  description = "Map of name values across all devops_repositories, keyed the same as var.devops_repositories except keys with no name are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.name if v.name != null && length(v.name) > 0 }
}
output "devops_repositories_namespace" {
  description = "Map of namespace values across all devops_repositories, keyed the same as var.devops_repositories except keys with no namespace are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "devops_repositories_parent_repository_id" {
  description = "Map of parent_repository_id values across all devops_repositories, keyed the same as var.devops_repositories except keys with no parent_repository_id are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.parent_repository_id if v.parent_repository_id != null && length(v.parent_repository_id) > 0 }
}
output "devops_repositories_project_id" {
  description = "Map of project_id values across all devops_repositories, keyed the same as var.devops_repositories except keys with no project_id are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "devops_repositories_project_name" {
  description = "Map of project_name values across all devops_repositories, keyed the same as var.devops_repositories except keys with no project_name are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.project_name if v.project_name != null && length(v.project_name) > 0 }
}
output "devops_repositories_repository_type" {
  description = "Map of repository_type values across all devops_repositories, keyed the same as var.devops_repositories except keys with no repository_type are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.repository_type if v.repository_type != null && length(v.repository_type) > 0 }
}
output "devops_repositories_size_in_bytes" {
  description = "Map of size_in_bytes values across all devops_repositories, keyed the same as var.devops_repositories except keys with no size_in_bytes are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.size_in_bytes if v.size_in_bytes != null && length(v.size_in_bytes) > 0 }
}
output "devops_repositories_ssh_url" {
  description = "Map of ssh_url values across all devops_repositories, keyed the same as var.devops_repositories except keys with no ssh_url are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.ssh_url if v.ssh_url != null && length(v.ssh_url) > 0 }
}
output "devops_repositories_state" {
  description = "Map of state values across all devops_repositories, keyed the same as var.devops_repositories except keys with no state are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.state if v.state != null && length(v.state) > 0 }
}
output "devops_repositories_system_tags" {
  description = "Map of system_tags values across all devops_repositories, keyed the same as var.devops_repositories except keys with no system_tags are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "devops_repositories_time_created" {
  description = "Map of time_created values across all devops_repositories, keyed the same as var.devops_repositories except keys with no time_created are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "devops_repositories_time_updated" {
  description = "Map of time_updated values across all devops_repositories, keyed the same as var.devops_repositories except keys with no time_updated are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "devops_repositories_trigger_build_events" {
  description = "Map of trigger_build_events values across all devops_repositories, keyed the same as var.devops_repositories except keys with no trigger_build_events are omitted"
  value       = { for k, v in oci_devops_repository.devops_repositories : k => v.trigger_build_events if v.trigger_build_events != null && length(v.trigger_build_events) > 0 }
}

