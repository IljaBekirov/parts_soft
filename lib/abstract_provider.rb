# frozen_string_literal: true

class AbstractProvider
  def get_brands_by_oem(web_service:, name:)
    request = BuildRequest::GetBrandsByOem.new(web_service, name).build
    response = requester(web_service.host).get(request, '/backend/price_items/api/v1/search/get_brands_by_oem')
    ParseResponse::GetBrandsByOem.new(response).parse
  end

  def get_offers_by_oem_and_make_name(web_service:, make_name:, number:)
    # binding.pry
    request = BuildRequest::GetOffersByOemAndMakeName.new(web_service, make_name, number).build
    response = requester(web_service.host)
               .get(request, '/backend/price_items/api/v1/search/get_offers_by_oem_and_make_name')
    ParseResponse::GetOffersByOemAndMakeName.new(response).parse(web_service.coef)
  end

  private

  def requester(host)
    RequestSender.new(host)
  end
end
