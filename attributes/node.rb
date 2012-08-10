# Where to write the mongodb service node's pid.
default['cloudfoundry_mongodb_service']['node']['pid_file'] = File.join(node['cloudfoundry']['pid_dir'], "mongodb_node.pid")

# Where to write the mongodb service node's logs.
default['cloudfoundry_mongodb_service']['node']['log_file'] = File.join(node['cloudfoundry']['log_dir'], "mongodb_node.log")

# Where to write the mongodb service node's logs.
default['cloudfoundry_mongodb_service']['node']['db_logs_dir'] = File.join(node['cloudfoundry']['log_dir'], "mongodb")

# Base directory for instance-specific data
default['cloudfoundry_mongodb_service']['node']['base_dir'] = File.join(node['cloudfoundry']['services_dir'], "mongodb")

# Log level for the msyql service node.
default['cloudfoundry_mongodb_service']['node']['log_level'] = "info"

# Unique instance index.
default['cloudfoundry_mongodb_service']['node']['index'] = 0

# Maximum number of service instances for this node.
default['cloudfoundry_mongodb_service']['node']['capacity'] = 200

# Where to store the database for each instance.
default['cloudfoundry_mongodb_service']['node']['instances_dir'] = "#{node['cloudfoundry_mongodb_service']['node']['base_dir']}/instances"

default['cloudfoundry_mongodb_service']['node']['port_range']['first'] = 25001
default['cloudfoundry_mongodb_service']['node']['port_range']['last'] = 45000

# TODO (trotter): Find out what this does.
default['cloudfoundry_mongodb_service']['node']['migration_nfs'] = "/mnt/migration"

# TODO (trotter): Find out what this does.
default['cloudfoundry_mongodb_service']['node']['op_time_limit'] = 6


default['cloudfoundry_mongodb_service']['node']['versions'] = {
  "1.8" => {
    "mongod_base_path" => "/usr",
    "mongod_options" => ""
  },
  "2.0" => {
    "mongod_base_path" => "/usr", # FIXME
    "mongod_options" => "--nojournal"
  }
}

default['cloudfoundry_mongodb_service']['node']['default_version'] = "1.8"
