# frozen_string_literal: true

class CheckPrice
  def self.call(params)
    web_service = WebService.find(params[:web_service_id])
    AbstractProvider.new.get_offers_by_oem_and_make_name(web_service: web_service,
                                                         make_name: params[:item][:brand],
                                                         number: params[:item][:number])
  end
end
