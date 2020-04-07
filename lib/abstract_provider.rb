# frozen_string_literal: true

class AbstractProvider
  SEARCH_V1 = '/backend/price_items/api/v1/search'

  def get_brands_by_oem(web_service:, name:)
    BuildRequest::GetBrandsByOem
      .new(web_service.api_key, name)
      .build
      .then { |params| requester(web_service.host).get(params, SEARCH_V1 + '/get_brands_by_oem') }
      .then { |response| ParseResponse::GetBrandsByOem.new(response).parse }
  end

  def get_offers_by_oem_and_make_name(web_service:, make_name:, number:)
    BuildRequest::GetOffersByOemAndMakeName
      .new(web_service.api_key, make_name, number)
      .build
      .then { |params| requester(web_service.host).get(params, SEARCH_V1 + '/get_offers_by_oem_and_make_name') }
      .then { |response| ParseResponse::GetOffersByOemAndMakeName.new(response).parse(web_service.coef) }
  end

  private

  def requester(host)
    RequestSender.new(host)
  end
end
