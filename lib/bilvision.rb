require 'bilvision/version'

module Bilvision
  autoload :Config,  'bilvision/config'
  autoload :Request, 'bilvision/request'

  class << self

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
