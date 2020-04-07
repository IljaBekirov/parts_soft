# frozen_string_literal: true

module SearchHelper
  def web_services_name
    @resources.map(&:id)
  end
end
