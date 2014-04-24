require 'bilvision/version'

module Bilvision
  autoload :Config,  'bilvision/config'
  autoload :Request, 'bilvision/request'

  class << self

    # Shortcut for creating a new request.
    #
    # @param regnr [String]
    #   Cars registration number.
    #
    # @param config [Hash]
    #   Override global configurationfor this object.
    def request(regnr, config = {})
      Request.new(regnr, config)
    end

    # Returns the configuration object in use.
    #
    # @return [Bilvision::Config]
    #   Configuration object.
    def config
      @config ||= Config.new
    end

    # Configure using a block.
    #
    # @return [void]
    def configure
      yield(config)
    end
  end
end
