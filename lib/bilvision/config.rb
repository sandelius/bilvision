module Bilvision
  class Config
    WSDL = 'https://www1.bilvision.se/wsce/wsceTest.asmx?WSDL'

    attr_accessor :wsdl, :user_id, :password

    # Object constructor. Sets configuration default values,
    def initialize
      @wsdl     = WSDL
      @user_id  = ''
      @password = ''
    end
  end
end