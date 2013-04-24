# = Class graylog2::params
#
class graylog2::params {
  # ElasticSearch
  $es_clustername = 'graylog2'
  $es_nodename    = 'graylog2-server'
  $es_tcpport     = '9350'

  case $::operatingsystem {
    'Debian': {
      $config_dir         = '/etc/graylog2'
      $config_dir_mode    = '0755'
      $config_dir_recurse = false
      $config_file_mode   = '0644'
      $config_group       = 'root'
      $config_user        = 'root'
      $daemon_group       = undef
      $daemon_user        = undef
      $log_dir            = '/var/log/graylog2'
      $pid_file           = undef
      $pkg_deps           = undef
      $pkg_ensure         = present
      $pkg_list           = [ 'graylog2-server', 'graylog2-web' ]
      $service_enable     = true
      $service_ensure     = running
      $service_hasrestart = true
      $service_hasstatus  = true
      $service_name       = 'graylog2'
    }

    default: {
      fail "Operating system ${::operatingsystem} is not supported yet."
    }
  }
}

