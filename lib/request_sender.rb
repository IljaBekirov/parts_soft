# frozen_string_literal: true

class RequestSender
  def initialize(host)
    @host = host
  end

  def get(params, endpoint)
    uri = URI.parse(host + endpoint + '?' + params.to_param)
    get_response_with_redirect(uri)
  end

  private

  attr_reader :host

  def get_response_with_redirect(uri)
    result = Net::HTTP.get_response(uri)
    result = Net::HTTP.get_response(URI.parse(result.header['location'])) if result.code == '301'
    JSON(result.body)
  end
end
