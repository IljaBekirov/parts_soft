# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    @resources = ::Search.call(params[:search])
  end
end
