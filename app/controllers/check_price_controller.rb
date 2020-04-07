# frozen_string_literal: true

class CheckPriceController < ApplicationController
  def index
    @resources = ::CheckPrice.call(params)
  end
end
