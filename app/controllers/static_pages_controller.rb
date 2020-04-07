# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    render 'home'
  end

  def search
    @resources = WebService.order(:id)
    render 'search'
  end
end
