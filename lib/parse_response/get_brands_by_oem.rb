# frozen_string_literal: true

module ParseResponse
  class GetBrandsByOem
    attr_reader :response

    def initialize(response)
      @response = response
    end

    def parse
      response.deep_symbolize_keys[:data]
    end
  end
end
