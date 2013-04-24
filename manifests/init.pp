# = Class graylog2
#
class graylog2 (
  $config_dir         = $::graylog2::params::config_dir,
  $config_dir_mode    = $::graylog2::params::config_dir_mode,
  $config_dir_recurse = $::graylog2::params::config_dir_recurse,
  $config_file_mode   = $::graylog2::params::config_file_mode,
  $config_group       = $::graylog2::params::config_group,
  $config_purge       = $::graylog2::params::config_purge,
  $config_user        = $::graylog2::params::config_user,
  $daemon_group       = $::graylog2::params::daemon_group,
  $daemon_user        = $::graylog2::params::daemon_user,
  $es_clustername     = $::graylog2::params::es_clustername,
  $es_nodename        = $::graylog2::params::es_nodename,
  $es_tcpport         = $::graylog2::params::es_tcpport,
  $log_dir            = $::graylog2::params::log_dir,
  $pid_file           = $::graylog2::params::pid_file,
  $pkg_deps           = $::graylog2::params::pkg_deps,
  $pkg_ensure         = $::graylog2::params::pkg_ensure,
  $pkg_list           = $::graylog2::params::pkg_list,
  $service_enable     = $::graylog2::params::service_enable,
  $service_ensure     = $::graylog2::params::service_ensure,
  $service_hasrestart = $::graylog2::params::service_hasrestart,
  $service_hasstatus  = $::graylog2::params::service_hasstatus,
  $service_name       = $::graylog2::params::service_name,
) inherits graylog2::params {
  class { 'graylog2::install': } ->
  class { 'graylog2::config': } ~>
  class { 'graylog2::service': } ->
  Class['graylog2']
}

