class varnish::service {

  service {'varnish':
    ensure => running,
  }

}
