# = Class graylog2::config
#
class graylog2::config {
  File {
    require => Class['::graylog2::install'],
    notify  => Service[$::graylog2::service_name],
    owner   => $::graylog2::config_user,
    group   => $::graylog2::config_group,
    mode    => $::graylog2::config_file_mode,
  }

  file {
    $::graylog2::config_dir:
      ensure  => directory,
      mode    => $::graylog2::config_dir_mode,
      purge   => $::graylog2::config_purge,
      recurse => $::graylog2::config_dir_recurse;

    $::graylog2::log_dir:
      ensure => directory,
      owner  => $::graylog2::daemon_user,
      group  => $::graylog2::daemon_group;
  }
}

