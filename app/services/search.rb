# frozen_string_literal: true

class Search
  def self.call(params)
    web_service = WebService.find(params[:web_service])
    AbstractProvider.new.get_brands_by_oem(web_service: web_service, name: params[:name])
  end
end
