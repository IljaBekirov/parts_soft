# frozen_string_literal: true

module BuildRequest
  class GetBrandsByOem
    attr_reader :web_service, :name

    def initialize(web_service, name)
      @web_service = web_service
      @name = name
    end

    def build
      params = {}
      params[:api_key] = web_service.api_key
      params[:oem] = name
      params
    end
  end
end
