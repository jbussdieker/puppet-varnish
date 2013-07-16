class varnish(
  $port         = 6081,
  $backend_host = '127.0.0.1',
  $backend_port = 8080,
  $vcl_config   = ''
) {

  class {'varnish::package':
    notify  => Class['varnish::service'],
  }

  class {'varnish::config':
    notify  => Class['varnish::service'],
    require => Class['varnish::package'],
  }

  class {'varnish::service':
    require => Class['varnish::config'],
  }

}
