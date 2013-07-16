class varnish::config {

  File {
    owner  => 'root',
    group  => 'root',
  }

  file {'/etc/default/varnish':
    ensure  => present,
    mode    => 0644,
    content => template('varnish/default.erb'),
  }

  if $varnish::vcl_config == '' {
    file {'/etc/varnish/default.vcl':
      ensure  => present,
      mode    => 0644,
      content => template('varnish/default.vcl.erb'),
    }
  } else {
    file {'/etc/varnish/default.vcl':
      ensure  => present,
      mode    => 0644,
      content => $varnish::vcl_config,
    }
  }

  file {'/etc/varnish/secret':
    mode   => 0600,
  }

}
