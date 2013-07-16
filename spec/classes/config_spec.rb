require 'spec_helper'

describe 'varnish::config' do
  it { should contain_file('/etc/default/varnish') }
  it { should contain_file('/etc/varnish/default.vcl') }
  it { should contain_file('/etc/varnish/secret') }
end
