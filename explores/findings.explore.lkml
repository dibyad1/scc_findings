include: "/views/*.view.lkml"


explore: findings {
  join: findings__finding__files {
    view_label: "Findings: Finding Files"
    sql: LEFT JOIN UNNEST(${findings.finding__files}) as findings__finding__files ;;
    relationship: one_to_many
  }
  join: findings__finding__processes {
    view_label: "Findings: Finding Processes"
    sql: LEFT JOIN UNNEST(${findings.finding__processes}) as findings__finding__processes ;;
    relationship: one_to_many
  }
  join: findings__finding__indicator__uris {
    view_label: "Findings: Finding Indicator Uris"
    sql: LEFT JOIN UNNEST(${findings.finding__indicator__uris}) as findings__finding__indicator__uris ;;
    relationship: one_to_many
  }
  join: findings__finding__processes__args {
    view_label: "Findings: Finding Processes Args"
    sql: LEFT JOIN UNNEST(${findings__finding__processes.args}) as findings__finding__processes__args ;;
    relationship: one_to_many
  }
  join: findings__finding__containers {
    view_label: "Findings: Finding Containers"
    sql: LEFT JOIN UNNEST(${findings.finding__containers}) as findings__finding__containers ;;
    relationship: one_to_many
  }
  join: findings__finding__compliances__ids {
    view_label: "Findings: Finding Compliances Ids"
    sql: LEFT JOIN UNNEST(${findings.finding__compliances__ids}) as findings__finding__compliances__ids ;;
    relationship: one_to_many
  }
  join: findings__finding__indicator__domains {
    view_label: "Findings: Finding Indicator Domains"
    sql: LEFT JOIN UNNEST(${findings.finding__indicator__domains}) as findings__finding__indicator__domains ;;
    relationship: one_to_many
  }
  join: findings__finding__iam_bindings {
    view_label: "Findings: Finding Iam Bindings"
    sql: LEFT JOIN UNNEST(${findings.finding__iam_bindings}) as findings__finding__iam_bindings ;;
    relationship: one_to_many
  }
  join: findings__finding__database__grantees {
    view_label: "Findings: Finding Database Grantees"
    sql: LEFT JOIN UNNEST(${findings.finding__database__grantees}) as findings__finding__database__grantees ;;
    relationship: one_to_many
  }
  join: findings__finding__org_policies {
    view_label: "Findings: Finding Org Policies"
    sql: LEFT JOIN UNNEST(${findings.finding__org_policies}) as findings__finding__org_policies ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__pods {
    view_label: "Findings: Finding Kubernetes Pods"
    sql: LEFT JOIN UNNEST(${findings.finding__kubernetes__pods}) as findings__finding__kubernetes__pods ;;
    relationship: one_to_many
  }
  join: findings__finding__security_marks {
    view_label: "Findings: Finding Security Marks"
    sql: LEFT JOIN UNNEST(${findings.finding__security_marks}) as findings__finding__security_marks ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__roles {
    view_label: "Findings: Finding Kubernetes Roles"
    sql: LEFT JOIN UNNEST(${findings.finding__kubernetes__roles}) as findings__finding__kubernetes__roles ;;
    relationship: one_to_many
  }
  join: findings__finding__load_balancers {
    view_label: "Findings: Finding Load Balancers"
    sql: LEFT JOIN UNNEST(${findings.finding__load_balancers}) as findings__finding__load_balancers ;;
    relationship: one_to_many
  }
  join: findings__finding__compliances {
    view_label: "Findings: Finding Compliances"
    sql: LEFT JOIN UNNEST(${findings.finding__compliances}) as findings__finding__compliances ;;
    relationship: one_to_many
  }
  join: findings__finding__connections {
    view_label: "Findings: Finding Connections"
    sql: LEFT JOIN UNNEST(${findings.finding__connections}) as findings__finding__connections ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__nodes {
    view_label: "Findings: Finding Kubernetes Nodes"
    sql: LEFT JOIN UNNEST(${findings.finding__kubernetes__nodes}) as findings__finding__kubernetes__nodes ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__objects {
    view_label: "Findings: Finding Kubernetes Objects"
    sql: LEFT JOIN UNNEST(${findings.finding__kubernetes__objects}) as findings__finding__kubernetes__objects ;;
    relationship: one_to_many
  }
  join: findings__finding__source_properties {
    view_label: "Findings: Finding Source Properties"
    sql: LEFT JOIN UNNEST(${findings.finding__source_properties}) as findings__finding__source_properties ;;
    relationship: one_to_many
  }
  join: findings__finding__contacts {
    view_label: "Findings: Finding Contacts"
    sql: LEFT JOIN UNNEST(${findings.finding__contacts}) as findings__finding__contacts ;;
    relationship: one_to_many
  }
  join: findings__finding__indicator__ip_addresses {
    view_label: "Findings: Finding Indicator Ip Addresses"
    sql: LEFT JOIN UNNEST(${findings.finding__indicator__ip_addresses}) as findings__finding__indicator__ip_addresses ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__bindings {
    view_label: "Findings: Finding Kubernetes Bindings"
    sql: LEFT JOIN UNNEST(${findings.finding__kubernetes__bindings}) as findings__finding__kubernetes__bindings ;;
    relationship: one_to_many
  }
  join: findings__finding__containers__labels {
    view_label: "Findings: Finding Containers Labels"
    sql: LEFT JOIN UNNEST(${findings__finding__containers.labels}) as findings__finding__containers__labels ;;
    relationship: one_to_many
  }
  join: findings__finding__processes__library_paths {
    view_label: "Findings: Finding Processes Library Paths"
    sql: LEFT JOIN UNNEST(${findings__finding__processes.library_paths}) as findings__finding__processes__library_paths ;;
    relationship: one_to_many
  }
  join: findings__resource__folders {
    view_label: "Findings: Resource Folders"
    sql: LEFT JOIN UNNEST(${findings.resource__folders}) as findings__resource__folders ;;
    relationship: one_to_many
  }
  join: findings__finding__processes__libraries {
    view_label: "Findings: Finding Processes Libraries"
    sql: LEFT JOIN UNNEST(${findings__finding__processes.libraries}) as findings__finding__processes__libraries ;;
    relationship: one_to_many
  }
  join: findings__finding__exfiltration__sources {
    view_label: "Findings: Finding Exfiltration Sources"
    sql: LEFT JOIN UNNEST(${findings.finding__exfiltration__sources}) as findings__finding__exfiltration__sources ;;
    relationship: one_to_many
  }
  join: findings__finding__exfiltration__targets {
    view_label: "Findings: Finding Exfiltration Targets"
    sql: LEFT JOIN UNNEST(${findings.finding__exfiltration__targets}) as findings__finding__exfiltration__targets ;;
    relationship: one_to_many
  }
  join: findings__finding__ip_rules__source_ip_ranges {
    view_label: "Findings: Finding Ip Rules Source Ip Ranges"
    sql: LEFT JOIN UNNEST(${findings.finding__ip_rules__source_ip_ranges}) as findings__finding__ip_rules__source_ip_ranges ;;
    relationship: one_to_many
  }
  join: findings__finding__ip_rules__exposed_services {
    view_label: "Findings: Finding Ip Rules Exposed Services"
    sql: LEFT JOIN UNNEST(${findings.finding__ip_rules__exposed_services}) as findings__finding__ip_rules__exposed_services ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__node_pools {
    view_label: "Findings: Finding Kubernetes Node Pools"
    sql: LEFT JOIN UNNEST(${findings.finding__kubernetes__node_pools}) as findings__finding__kubernetes__node_pools ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__pods__labels {
    view_label: "Findings: Finding Kubernetes Pods Labels"
    sql: LEFT JOIN UNNEST(${findings__finding__kubernetes__pods.labels}) as findings__finding__kubernetes__pods__labels ;;
    relationship: one_to_many
  }
  join: findings__finding__processes__env_variables {
    view_label: "Findings: Finding Processes Env Variables"
    sql: LEFT JOIN UNNEST(${findings__finding__processes.env_variables}) as findings__finding__processes__env_variables ;;
    relationship: one_to_many
  }
  join: findings__finding__org_policy_constraints {
    view_label: "Findings: Finding Org Policy Constraints"
    sql: LEFT JOIN UNNEST(${findings.finding__org_policy_constraints}) as findings__finding__org_policy_constraints ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__access_reviews {
    view_label: "Findings: Finding Kubernetes Access Reviews"
    sql: LEFT JOIN UNNEST(${findings.finding__kubernetes__access_reviews}) as findings__finding__kubernetes__access_reviews ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__pods__containers {
    view_label: "Findings: Finding Kubernetes Pods Containers"
    sql: LEFT JOIN UNNEST(${findings__finding__kubernetes__pods.containers}) as findings__finding__kubernetes__pods__containers ;;
    relationship: one_to_many
  }
  join: findings__finding__ip_rules__destination_ip_ranges {
    view_label: "Findings: Finding Ip Rules Destination Ip Ranges"
    sql: LEFT JOIN UNNEST(${findings.finding__ip_rules__destination_ip_ranges}) as findings__finding__ip_rules__destination_ip_ranges ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__bindings__subjects {
    view_label: "Findings: Finding Kubernetes Bindings Subjects"
    sql: LEFT JOIN UNNEST(${findings__finding__kubernetes__bindings.subjects}) as findings__finding__kubernetes__bindings__subjects ;;
    relationship: one_to_many
  }
  join: findings__finding__exfiltration__sources__components {
    view_label: "Findings: Finding Exfiltration Sources Components"
    sql: LEFT JOIN UNNEST(${findings__finding__exfiltration__sources.components}) as findings__finding__exfiltration__sources__components ;;
    relationship: one_to_many
  }
  join: findings__finding__exfiltration__targets__components {
    view_label: "Findings: Finding Exfiltration Targets Components"
    sql: LEFT JOIN UNNEST(${findings__finding__exfiltration__targets.components}) as findings__finding__exfiltration__targets__components ;;
    relationship: one_to_many
  }
  join: findings__finding__mitre_attack__additional_tactics {
    view_label: "Findings: Finding Mitre Attack Additional Tactics"
    sql: LEFT JOIN UNNEST(${findings.finding__mitre_attack__additional_tactics}) as findings__finding__mitre_attack__additional_tactics ;;
    relationship: one_to_many
  }
  join: findings__finding__mitre_attack__primary_techniques {
    view_label: "Findings: Finding Mitre Attack Primary Techniques"
    sql: LEFT JOIN UNNEST(${findings.finding__mitre_attack__primary_techniques}) as findings__finding__mitre_attack__primary_techniques ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__node_pools__nodes {
    view_label: "Findings: Finding Kubernetes Node Pools Nodes"
    sql: LEFT JOIN UNNEST(${findings__finding__kubernetes__node_pools.nodes}) as findings__finding__kubernetes__node_pools__nodes ;;
    relationship: one_to_many
  }
  join: findings__finding__vulnerability__cve__references {
    view_label: "Findings: Finding Vulnerability Cve References"
    sql: LEFT JOIN UNNEST(${findings.finding__vulnerability__cve__references}) as findings__finding__vulnerability__cve__references ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__objects__containers {
    view_label: "Findings: Finding Kubernetes Objects Containers"
    sql: LEFT JOIN UNNEST(${findings__finding__kubernetes__objects.containers}) as findings__finding__kubernetes__objects__containers ;;
    relationship: one_to_many
  }
  join: findings__finding__ip_rules__denied__ip_rules {
    view_label: "Findings: Finding Ip Rules Denied Ip Rules"
    sql: LEFT JOIN UNNEST(${findings.finding__ip_rules__denied__ip_rules}) as findings__finding__ip_rules__denied__ip_rules ;;
    relationship: one_to_many
  }
  join: findings__finding__backup_disaster_recovery__policies {
    view_label: "Findings: Finding Backup Disaster Recovery Policies"
    sql: LEFT JOIN UNNEST(${findings.finding__backup_disaster_recovery__policies}) as findings__finding__backup_disaster_recovery__policies ;;
    relationship: one_to_many
  }
  join: findings__finding__mitre_attack__additional_techniques {
    view_label: "Findings: Finding Mitre Attack Additional Techniques"
    sql: LEFT JOIN UNNEST(${findings.finding__mitre_attack__additional_techniques}) as findings__finding__mitre_attack__additional_techniques ;;
    relationship: one_to_many
  }
  join: findings__finding__ip_rules__allowed__ip_rules {
    view_label: "Findings: Finding Ip Rules Allowed Ip Rules"
    sql: LEFT JOIN UNNEST(${findings.finding__ip_rules__allowed__ip_rules}) as findings__finding__ip_rules__allowed__ip_rules ;;
    relationship: one_to_many
  }
  join: findings__finding__backup_disaster_recovery__applications {
    view_label: "Findings: Finding Backup Disaster Recovery Applications"
    sql: LEFT JOIN UNNEST(${findings.finding__backup_disaster_recovery__applications}) as findings__finding__backup_disaster_recovery__applications ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__pods__containers__labels {
    view_label: "Findings: Finding Kubernetes Pods Containers Labels"
    sql: LEFT JOIN UNNEST(${findings__finding__kubernetes__pods__containers.labels}) as findings__finding__kubernetes__pods__containers__labels ;;
    relationship: one_to_many
  }
  join: findings__finding__backup_disaster_recovery__policy_options {
    view_label: "Findings: Finding Backup Disaster Recovery Policy Options"
    sql: LEFT JOIN UNNEST(${findings.finding__backup_disaster_recovery__policy_options}) as findings__finding__backup_disaster_recovery__policy_options ;;
    relationship: one_to_many
  }
  join: findings__finding__contacts__contact_details__contacts {
    view_label: "Findings: Finding Contacts Contact Details Contacts"
    sql: LEFT JOIN UNNEST(${findings__finding__contacts.contact_details__contacts}) as findings__finding__contacts__contact_details__contacts ;;
    relationship: one_to_many
  }
  join: findings__finding__ip_rules__denied__ip_rules__port_ranges {
    view_label: "Findings: Finding Ip Rules Denied Ip Rules Port Ranges"
    sql: LEFT JOIN UNNEST(${findings__finding__ip_rules__denied__ip_rules.port_ranges}) as findings__finding__ip_rules__denied__ip_rules__port_ranges ;;
    relationship: one_to_many
  }
  join: findings__finding__kubernetes__objects__containers__labels {
    view_label: "Findings: Finding Kubernetes Objects Containers Labels"
    sql: LEFT JOIN UNNEST(${findings__finding__kubernetes__objects__containers.labels}) as findings__finding__kubernetes__objects__containers__labels ;;
    relationship: one_to_many
  }
  join: findings__finding__ip_rules__allowed__ip_rules__port_ranges {
    view_label: "Findings: Finding Ip Rules Allowed Ip Rules Port Ranges"
    sql: LEFT JOIN UNNEST(${findings__finding__ip_rules__allowed__ip_rules.port_ranges}) as findings__finding__ip_rules__allowed__ip_rules__port_ranges ;;
    relationship: one_to_many
  }
  join: findings__finding__indicator__signatures {
    view_label: "Findings: Finding Indicator Signatures"
    sql: LEFT JOIN UNNEST(${findings.finding__indicator__signatures}) as findings__finding__indicator__signatures ;;
    relationship: one_to_many
  }
  join: findings__finding__access__service_account_delegation_info {
    view_label: "Findings: Finding Access Service Account Delegation Info"
    sql: LEFT JOIN UNNEST(${findings.finding__access__service_account_delegation_info}) as findings__finding__access__service_account_delegation_info ;;
    relationship: one_to_many
  }
  join: findings__finding__indicator__signatures__memory_hash_signature__detections {
    view_label: "Findings: Finding Indicator Signatures Memory Hash Signature Detections"
    sql: LEFT JOIN UNNEST(${findings__finding__indicator__signatures.memory_hash_signature__detections}) as findings__finding__indicator__signatures__memory_hash_signature__detections ;;
    relationship: one_to_many
  }
}
