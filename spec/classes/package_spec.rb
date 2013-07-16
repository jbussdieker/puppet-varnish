require 'spec_helper'

describe 'varnish::package' do
  it { should contain_package('varnish') }
end
