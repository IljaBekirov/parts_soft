# frozen_string_literal: true

module BuildRequest
  class GetBrandsByOem
    attr_reader :api_key, :name

    def initialize(api_key, name)
      @api_key = api_key
      @name = name
    end

    def build
      params = {}
      params[:api_key] = api_key
      params[:oem] = name
      params
    end
  end
end
