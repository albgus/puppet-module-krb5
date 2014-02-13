require 'spec_helper'
describe 'krb5' do

  context 'with defaults for all parameters' do
    it { should contain_class('krb5') }
  end
end
