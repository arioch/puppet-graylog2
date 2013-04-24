# = Class graylog2::install
#
class graylog2::install {
  package { $::graylog2::pkg_list:
    ensure => $::graylog2::pkg_ensure,
  }

  if $::graylog2::pkg_deps {
    package { $::graylog2::pkg_deps:
      ensure => $::graylog2::pkg_ensure,
      before => Package[$::graylog2::pkg_list],
    }
  }
}

