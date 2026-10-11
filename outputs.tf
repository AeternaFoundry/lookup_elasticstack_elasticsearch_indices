output "elasticsearch_indices_lookup_id" {
  description = "Map of id values across all elasticsearch_indices_lookup, keyed the same as var.elasticsearch_indices_lookup except keys with no id are omitted"
  value       = { for k, v in data.elasticstack_elasticsearch_indices.elasticsearch_indices_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_indices_lookup_elasticsearch_connection" {
  description = "Map of elasticsearch_connection values across all elasticsearch_indices_lookup, keyed the same as var.elasticsearch_indices_lookup except keys with no elasticsearch_connection are omitted"
  value       = { for k, v in data.elasticstack_elasticsearch_indices.elasticsearch_indices_lookup : k => v.elasticsearch_connection if v.elasticsearch_connection != null && length(v.elasticsearch_connection) > 0 }
  sensitive   = true
}
output "elasticsearch_indices_lookup_indices" {
  description = "Map of indices values across all elasticsearch_indices_lookup, keyed the same as var.elasticsearch_indices_lookup except keys with no indices are omitted"
  value       = { for k, v in data.elasticstack_elasticsearch_indices.elasticsearch_indices_lookup : k => v.indices if v.indices != null && length(v.indices) > 0 }
}
output "elasticsearch_indices_lookup_target" {
  description = "Map of target values across all elasticsearch_indices_lookup, keyed the same as var.elasticsearch_indices_lookup except keys with no target are omitted"
  value       = { for k, v in data.elasticstack_elasticsearch_indices.elasticsearch_indices_lookup : k => v.target if v.target != null && length(v.target) > 0 }
}

