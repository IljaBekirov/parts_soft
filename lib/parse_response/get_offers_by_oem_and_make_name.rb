# frozen_string_literal: true

module ParseResponse
  class GetOffersByOemAndMakeName
    attr_reader :response

    def initialize(response)
      @response = response
    end

    def parse(coefficient)
      result = response.deep_symbolize_keys[:data]
      Array.wrap(result).map do |item|
        item[:price_with_coef] = item[:cost].to_f * coefficient
        item
      end
    end
  end
end
