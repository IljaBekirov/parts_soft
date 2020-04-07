# frozen_string_literal: true

module BuildRequest
  class GetOffersByOemAndMakeName
    attr_reader :web_service, :make_name, :number

    def initialize(web_service, make_name, number)
      @web_service = web_service
      @make_name = make_name
      @number = number
    end

    def build
      params = {}
      params[:api_key] = web_service.api_key
      params[:oem] = number
      params[:make_name] = make_name
      params
    end
  end
end
