# = Class graylog2
#
class graylog2 (
  $amqp_enabled            = $::graylog2::params::amqp_enabled,
  $amqp_host               = $::graylog2::params::amqp_host,
  $amqp_password           = $::graylog2::params::amqp_password,
  $amqp_port               = $::graylog2::params::amqp_port,
  $amqp_username           = $::graylog2::params::amqp_username,
  $amqp_virtualhost        = $::graylog2::params::amqp_virtualhost,
  $config_dir              = $::graylog2::params::config_dir,
  $config_dir_mode         = $::graylog2::params::config_dir_mode,
  $config_dir_recurse      = $::graylog2::params::config_dir_recurse,
  $config_file_mode        = $::graylog2::params::config_file_mode,
  $config_group            = $::graylog2::params::config_group,
  $config_purge            = $::graylog2::params::config_purge,
  $config_user             = $::graylog2::params::config_user,
  $daemon_group            = $::graylog2::params::daemon_group,
  $daemon_user             = $::graylog2::params::daemon_user,
  $es_clustername          = $::graylog2::params::es_clustername,
  $es_nodename             = $::graylog2::params::es_nodename,
  $es_tcpport              = $::graylog2::params::es_tcpport,
  $gelf                    = $::graylog2::params::gelf,
  $gelf_listen_address     = $::graylog2::params::gelf_listen_address,
  $gelf_listen_port        = $::graylog2::params::gelf_listen_port,
  $log_dir                 = $::graylog2::params::log_dir,
  $mongodb_database        = $::graylog2::params::mongodb_database,
  $mongodb_host            = $::graylog2::params::mongodb_host,
  $mongodb_max_connections = $::graylog2::params::mongodb_max_connections,
  $mongodb_password        = $::graylog2::params::mongodb_password,
  $mongodb_port            = $::graylog2::params::mongodb_port,
  $mongodb_useauth         = $::graylog2::params::mongodb_useauth,
  $mongodb_user            = $::graylog2::params::mongodb_user,
  $pid_file                = $::graylog2::params::pid_file,
  $pkg_deps                = $::graylog2::params::pkg_deps,
  $pkg_ensure              = $::graylog2::params::pkg_ensure,
  $pkg_list                = $::graylog2::params::pkg_list,
  $service_enable          = $::graylog2::params::service_enable,
  $service_ensure          = $::graylog2::params::service_ensure,
  $service_hasrestart      = $::graylog2::params::service_hasrestart,
  $service_hasstatus       = $::graylog2::params::service_hasstatus,
  $service_name            = $::graylog2::params::service_name,
  $syslog_enable_tcp       = $::graylog2::params::syslog_enable_tcp,
  $syslog_enable_udp       = $::graylog2::params::syslog_enable_udp,
  $syslog_listen_address   = $::graylog2::params::syslog_listen_address,
  $syslog_listen_port      = $::graylog2::params::syslog_listen_port,
  $udp_recvbuffer_sizes    = $::graylog2::params::udp_recvbuffer_sizes,
) inherits graylog2::params {
  class { 'graylog2::install': } ->
  class { 'graylog2::config': } ~>
  class { 'graylog2::service': } ->
  Class['graylog2']
}

