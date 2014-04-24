require 'spec_helper'

describe Bilvision do

  describe '#requets' do
    it 'returns an instance of the requets' do
      Bilvision.request('aaa111').should be_a(Bilvision::Request)
    end
  end

  describe '#config' do
    it 'returns an instance of the config class' do
      Bilvision.config.should be_a(Bilvision::Config)
    end
  end

  describe '#configure' do
    it 'allow us to set configurations using a block' do
      Bilvision.configure do |config|
        config.user_id = 'test'
      end
      Bilvision.config.user_id.should == 'test'
    end
  end
end