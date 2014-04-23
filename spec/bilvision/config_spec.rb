require 'spec_helper'

module Bilvision
  describe Config do

    describe '#initialize' do

      it 'sets default values' do
        config = Config.new
        config.user_id.should == ''
        config.password.should == ''
        config.wsdl.should == Config::WSDL
      end
    end

  end
end