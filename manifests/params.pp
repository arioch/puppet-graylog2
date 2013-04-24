# = Class graylog2::params
#
class graylog2::params {
  ## Config file: graylog2.conf
  # Syslog
  $syslog_enable_tcp     = false
  $syslog_enable_udp     = true
  $syslog_listen_address = '0.0.0.0'
  $syslog_listen_port    = '514'

  # UDP syslog and UDP GELF
  $udp_recvbuffer_sizes = '1048576'

  # MongoDB Configuration
  $mongodb_useauth         = false
  $mongodb_user            = 'grayloguser'
  $mongodb_password        = '123'
  $mongodb_host            = '127.0.0.1'
  $mongodb_database        = 'graylog2'
  $mongodb_port            = '27017'
  $mongodb_max_connections = '100'

  # Graylog Extended Log Format (GELF)
  $gelf                = true
  $gelf_listen_address = '0.0.0.0'
  $gelf_listen_port    = '12201'

  # AMQP
  $amqp_enabled     = false
  $amqp_host        = 'localhost'
  $amqp_port        = '5672'
  $amqp_username    = 'guest'
  $amqp_password    = 'guest'
  $amqp_virtualhost = '/'

  ## Config file: elasticsearch.yml
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

