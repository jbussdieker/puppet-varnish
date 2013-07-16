# Varnish Module

[![Build Status](https://travis-ci.org/jbussdieker/puppet-varnish.png?branch=master)](https://travis-ci.org/jbussdieker/puppet-varnish)

This module manages installing, configuring and running varnish.

# Usage

Basic Usage:

    class {'varnish':
      port => 80,
    }

Custom VCL:

    class {'varnish':
      port         => 80,
      backend_host => '127.0.0.1',
      backend_port => 8080,
      vcl_config   => template('myapp/custom.vcl.erb'),
    }
