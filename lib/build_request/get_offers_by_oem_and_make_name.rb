# frozen_string_literal: true

module BuildRequest
  class GetOffersByOemAndMakeName
    attr_reader :api_key, :make_name, :number

    def initialize(api_key, make_name, number)
      @api_key = api_key
      @make_name = make_name
      @number = number
    end

    def build
      params = {}
      params[:api_key] = api_key
      params[:oem] = number
      params[:make_name] = make_name
      params
    end
  end
end
