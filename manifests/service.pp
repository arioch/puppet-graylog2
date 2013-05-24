# == Class graylog2
#
class graylog2::service {
  service { $::graylog2::service_name:
    ensure    => $::graylog2::service_ensure,
    enable    => $::graylog2::service_enable,
    hasstatus => $::graylog2::service_hasstatus,
    require   => Class['::graylog2::config'];
  }
}

