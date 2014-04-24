require 'savon'

module Bilvision
  class Request
    attr_reader :config
    attr_accessor :regnr

    # Object constructor.
    #
    # @param regnr [String]
    #   Cars registration number.
    #
    # @param config [Hash]
    #   Override global configurations for this object.
    def initialize(regnr, config = {})
      @regnr = regnr.upcase
      @config  = {
        wsdl:     Bilvision.config.wsdl,
        user_id:  Bilvision.config.user_id,
        password: Bilvision.config.password
      }.merge(config)
    end

    # Fetches the `grundfraga` information.
    #
    # @return [Hash]
    #   Request response as a hash.
    def general
      fetch(:grundfraga)[:grundfraga_response][:grundfraga_result]
    end

    # Fetches the `teknikfraga_v2` information.
    #
    # @return [Hash]
    #   Request response as a hash.
    def technical
      fetch(:teknikfraga_v2)[:teknikfraga_v2_response][:teknikfraga_v2_result]
    end

    # Fetches the `teknikfraga_v2` information.
    #
    # @return [Hash]
    #   Request response as a hash.
    def owners
      data = fetch(:foregaende_agarefraga)
      data = data[:foregaende_agarefraga_response][:foregaende_agarefraga_result]
      data[:tidigare_agare][:struc_agare]
    end

    # Runs all request and return the result as a namespaced hash.
    #
    # @return [Hash]
    #   Request response as a namespaced hash.
    def all
      {
        general:   general,
        technical: technical,
        owners:    owners
      }
    end

  private

    # Creates the actual request to Bilvision API.
    #
    # @param [Symbol]
    #   Reqyest type to be made.
    #
    # @return [Hash]
    #   Request response as a hash.
    def fetch(type)
      client = Savon.client(wsdl: config[:wsdl])
      result = client.call(type, message: {
        'UserID'   => config[:user_id],
        'Password' => config[:password],
        'Regnr'    => regnr
      })

      return result.to_hash if result.success?

      raise RuntimeError, 'The request was not a success'
    end
  end
end