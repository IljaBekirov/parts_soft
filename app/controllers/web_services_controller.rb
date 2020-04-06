# frozen_string_literal: true

class WebServicesController < ApplicationController
  def index
    @resources = WebService.order(:id)
  end

  def new
    @resource = {}
  end

  def create
    @resource = WebService.create(create_params)
    redirect_to web_services_path
  end

  def edit
    @resource = WebService.find(params[:id])
  end

  def update
    @resource = WebService.find(params[:id])
    @resource.update(update_params)
    redirect_to web_services_path
  end

  def destroy
    @resource = WebService.find(params[:id])
    @resource.destroy
    redirect_to web_services_path
  end

  private

  def update_params
    params.require(:web_service).permit(:id, *params_fields)
  end

  def create_params
    params.require(:web_service).permit(*params_fields)
  end

  def params_fields
    %i[name host api_key coef]
  end
end
