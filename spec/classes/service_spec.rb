require 'spec_helper'

describe 'varnish::service' do
  it { should contain_service('varnish') }
end
