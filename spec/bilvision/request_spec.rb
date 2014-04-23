require 'spec_helper'

module Bilvision
  describe Request do

    describe '#initialize' do
      it 'sets the registration number and upcase it' do
        client = Request.new('kng827')
        client.regnr.should == 'KNG827'
      end
    end

  end
end